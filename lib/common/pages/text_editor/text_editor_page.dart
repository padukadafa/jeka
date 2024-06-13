import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

@RoutePage<String>()
class TextEditorPage extends StatelessWidget {
  late TextEditingController controller;
  TextEditorPage({super.key, required String initialText}) {
    controller = TextEditingController(text: initialText);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            context.maybePop<String>(controller.text);
          },
          icon: FaIcon(
            FontAwesomeIcons.chevronLeft,
          ),
        ),
      ),
      body: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: "Type something",
        ),
      ),
    );
  }
}
