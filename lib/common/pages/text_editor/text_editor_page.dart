import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

@RoutePage()
class TextEditorPage extends StatelessWidget {
  late TextEditingController controller;
  TextEditorPage({super.key, required String initialText}) {
    controller = TextEditingController(text: initialText);
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      onPopInvoked: (val) {
        context.maybePop<String>(controller.text);
      },
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              context.maybePop<String>(controller.text);
            },
            icon: const FaIcon(
              FontAwesomeIcons.chevronLeft,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            controller: controller,
            decoration: const InputDecoration(
              border: InputBorder.none,
              hintText: "Type something",
            ),
          ),
        ),
      ),
    );
  }
}
