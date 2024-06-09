import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:flutter_quill/markdown_quill.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jeka/common/widgets/app_layout.dart';
import 'package:markdown/markdown.dart' as md;

@RoutePage<String>()
class EditDescriptionPage extends StatefulWidget {
  final String desc;
  const EditDescriptionPage({super.key, required this.desc});

  @override
  State<EditDescriptionPage> createState() => _EditDescriptionPageState();
}

class _EditDescriptionPageState extends State<EditDescriptionPage> {
  final QuillController _controller = QuillController.basic();
  @override
  void initState() {
    super.initState();
    if (widget.desc.isNotEmpty) {
      final delta =
          MarkdownToDelta(markdownDocument: md.Document(encodeHtml: true))
              .convert(widget.desc);

      _controller.document = Document.fromDelta(delta);
    }
  }

  @override
  Widget build(BuildContext context) {
    return AppLayout(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              print(_controller.document.toDelta());
              final markdown =
                  DeltaToMarkdown().convert(_controller.document.toDelta());
              print(markdown);
              context.router.maybePop<String>(markdown);
            },
            icon: const FaIcon(
              FontAwesomeIcons.chevronLeft,
              size: 16,
            ),
          ),
          title: const Text("Edit Description"),
        ),
        body: Column(
          children: [
            QuillSimpleToolbar(
              configurations: QuillSimpleToolbarConfigurations(
                controller: _controller,
                multiRowsDisplay: false,
                showRedo: false,
                showUndo: false,
                headerStyleType: HeaderStyleType.original,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Expanded(
              child: QuillEditor.basic(
                configurations: QuillEditorConfigurations(
                  controller: _controller,
                  sharedConfigurations: const QuillSharedConfigurations(
                    locale: Locale('de'),
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
