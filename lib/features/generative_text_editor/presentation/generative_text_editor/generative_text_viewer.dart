import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:flutter_quill/quill_delta.dart';
import 'package:flutter_quill_extensions/flutter_quill_embeds.dart';
import 'package:jeka/utils/measure_size.dart';

class GenerativeTextViewer extends StatefulWidget {
  final String text;
  final void Function()? onTap;
  const GenerativeTextViewer(this.text, {super.key, this.onTap});

  @override
  State<GenerativeTextViewer> createState() => _GenerativeTextViewerState();
}

class _GenerativeTextViewerState extends State<GenerativeTextViewer> {
  final _controller = QuillController.basic();
  final controller = ScrollController();
  Size size = const Size(0, 0);

  final _focusNode = FocusNode(canRequestFocus: false);
  late GlobalKey boxKey = GlobalKey();

  @override
  void initState() {
    super.initState();

    _controller.setContents(Delta.fromJson(jsonDecode(widget.text)));
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        MeasureSize(
          onChange: (size) {
            setState(() {
              this.size = size;
            });
          },
          child: QuillEditor.basic(
            focusNode: _focusNode,
            configurations: QuillEditorConfigurations(
              controller: _controller,
              scrollable: true,
              autoFocus: false,
              expands: false,
              showCursor: false,
              padding: const EdgeInsets.all(16),
              embedBuilders: FlutterQuillEmbeds.editorBuilders(),
            ),
          ),
        ),
        GestureDetector(
          onTap: widget.onTap,
          child: Container(
            width: size.width,
            height: size.height,
            color: Colors.transparent,
          ),
        )
      ],
    );
  }
}
