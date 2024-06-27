import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:flutter_quill/markdown_quill.dart';
import 'package:flutter_quill/quill_delta.dart';
import 'package:flutter_quill_extensions/flutter_quill_extensions.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:jeka/common/widgets/app_layout.dart';
import 'package:jeka/common/widgets/reuseable_text.dart';
import 'package:jeka/common/widgets/reuseable_text_form.dart';
import 'package:jeka/core/constants.dart';
import 'package:jeka/di.dart';
import 'package:jeka/features/auth/presentation/blocs/bloc/auth_bloc.dart';
import 'package:jeka/features/generative_text_editor/data/repository/gemini_repository.dart';
import 'package:jeka/utils/uploud_service.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:markdown/markdown.dart' as md;
import 'package:uuid/uuid.dart';
import 'package:delta_to_html/delta_to_html.dart';

@RoutePage<String>()
class GenerativeTextEditorPage extends StatefulWidget {
  final String desc;
  final bool enableImage;
  const GenerativeTextEditorPage({
    super.key,
    required this.desc,
    this.enableImage = false,
  });

  @override
  State<GenerativeTextEditorPage> createState() =>
      _GenerativeTextEditorPageState();
}

class _GenerativeTextEditorPageState extends State<GenerativeTextEditorPage> {
  final QuillController _controller = QuillController.basic();
  final GeminiRepository geminiRepository = getIt<GeminiRepository>();
  bool showAiPrompt = false;
  bool showAiResult = false;
  String? AiResult;
  final promptController = TextEditingController();
  final promptFocus = FocusNode();
  @override
  void initState() {
    super.initState();
    if (widget.desc.isNotEmpty) {
      _controller.document = Document.fromHtml(widget.desc);
    }
    _controller.addListener(() {
      if (showAiPrompt) {
        promptController.clear();
        setState(() {
          showAiPrompt = false;
        });
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    promptFocus.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final size = MediaQuery.of(context).size;
    return AppLayout(
      child: Scaffold(
        body: Stack(
          children: [
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {
                          final result = DeltaToHTML.encodeJson(
                              _controller.document.toDelta().toJson());
                          context.router.maybePop<String>(
                            result,
                          );
                        },
                        icon: const FaIcon(
                          FontAwesomeIcons.x,
                          size: 18,
                        ),
                      ),
                      TextButton.icon(
                        onPressed: () {
                          setState(() {
                            showAiPrompt = !showAiPrompt;
                          });
                          promptFocus.requestFocus();
                        },
                        label: ReuseableText(
                          "Ask AI",
                          color: colorScheme.primary,
                        ),
                        icon: FaIcon(
                          FontAwesomeIcons.robot,
                          size: 18,
                          color: colorScheme.primary,
                        ),
                      )
                    ],
                  ),
                ),
                GenerativeTextEditorToolBar(
                  controller: _controller,
                ),
                const SizedBox(
                  height: 12,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: QuillEditor.basic(
                      configurations: QuillEditorConfigurations(
                        controller: _controller,
                        sharedConfigurations: const QuillSharedConfigurations(
                          locale: Locale('en'),
                        ),
                        onTapOutside: (event, focusNode) {
                          focusNode.unfocus();
                        },
                        embedBuilders: FlutterQuillEmbeds.editorBuilders(),
                      ),
                    ),
                  ),
                )
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Visibility(
                visible: showAiPrompt,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: ReuseableTextForm(
                            hintText: "Ask AI",
                            minLines: 1,
                            focus: promptFocus,
                            controller: promptController,
                            onTapOutside: (_) {
                              setState(() {
                                promptFocus.unfocus();
                              });
                            },
                          ),
                        ),
                        IconButton(
                          onPressed: () async {
                            setState(() {
                              showAiPrompt = false;

                              showAiResult = true;
                              AiResult = null;
                            });

                            final result = await geminiRepository
                                .generateText(promptController.text);
                            result.fold((l) {
                              AiResult = l.message;
                            }, (r) {
                              setState(() {
                                AiResult = r;
                              });
                            });
                            promptController.clear();
                          },
                          icon: const FaIcon(FontAwesomeIcons.robot),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Visibility(
                visible: showAiResult && !showAiPrompt,
                child: Skeletonizer(
                  enabled: AiResult == null,
                  child: Container(
                    padding: const EdgeInsets.all(14),
                    constraints: BoxConstraints(
                      maxWidth: size.width,
                      maxHeight: size.height * 0.5,
                    ),
                    decoration: BoxDecoration(
                      color: colorScheme.surfaceBright,
                      boxShadow: [
                        BoxShadow(
                          color: colorScheme.shadow,
                          offset: const Offset(0, -2),
                          blurRadius: 3,
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Expanded(
                          child: Markdown(
                            data: AiResult ??
                                "${AppConstants.onBoardings[0].desc} ${AppConstants.onBoardings[1].desc} ${AppConstants.onBoardings[2].desc}",
                          ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Row(
                          children: [
                            TextButton(
                              onPressed: () {
                                setState(() {
                                  AiResult = null;
                                  showAiResult = false;
                                });
                              },
                              child: const ReuseableText(
                                "Cancel",
                              ),
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                            Expanded(
                              child: ElevatedButton(
                                onPressed: () {
                                  if (AiResult != null) {
                                    final delta =
                                        _controller.document.toDelta().toJson();
                                    delta.addAll(
                                      MarkdownToDelta(
                                        markdownDocument:
                                            md.Document(encodeHtml: false),
                                      ).convert(AiResult!).toJson(),
                                    );
                                    _controller
                                        .setContents(Delta.fromJson(delta));
                                    setState(() {
                                      AiResult = null;
                                      showAiResult = false;
                                    });
                                    promptController.clear();
                                  }
                                },
                                child: const Text("Insert"),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class GenerativeTextEditorToolBar extends StatelessWidget {
  GenerativeTextEditorToolBar({
    super.key,
    required QuillController controller,
    this.enableImage = false,
  }) : _controller = controller;

  final QuillController _controller;
  final bool enableImage;
  final uplouadService = getIt<UploadService>();
  @override
  Widget build(BuildContext context) {
    final authBloc = context.read<AuthBloc>();
    return QuillToolbar(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            QuillToolbarToggleStyleButton(
              controller: _controller,
              attribute: Attribute.bold,
            ),
            QuillToolbarToggleStyleButton(
              controller: _controller,
              attribute: Attribute.centerAlignment,
            ),
            QuillToolbarToggleStyleButton(
              controller: _controller,
              attribute: Attribute.justifyAlignment,
            ),
            QuillToolbarToggleStyleButton(
              controller: _controller,
              attribute: Attribute.blockQuote,
            ),
            QuillToolbarFontSizeButton(
              controller: _controller,
            ),
            QuillToolbarFontFamilyButton(
              controller: _controller,
            ),
            enableImage
                ? QuillToolbarCustomButton(
                    controller: _controller,
                    options: QuillToolbarCustomButtonOptions(
                      onPressed: () async {
                        EasyLoading.show();
                        final image = await ImagePicker()
                            .pickImage(source: ImageSource.gallery);
                        if (image != null && authBloc.state.user != null) {
                          final path =
                              "/contents/${authBloc.state.user!.uid}/${const Uuid().v4()}.${image.path.split("/").last.split(".").last}";
                          final result = await uplouadService.uploadFile(
                              File(image.path), path);
                          _controller.insertImageBlock(imageSource: result);
                        }
                        EasyLoading.dismiss();
                      },
                      icon: const FaIcon(
                        FontAwesomeIcons.image,
                        size: 18,
                      ),
                    ),
                  )
                : const SizedBox(),
            QuillToolbarLinkStyleButton(
              controller: _controller,
            ),
            QuillToolbarToggleCheckListButton(
              controller: _controller,
            ),
          ],
        ),
      ),
    );
  }
}
