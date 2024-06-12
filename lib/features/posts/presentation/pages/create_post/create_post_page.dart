import 'package:auto_route/auto_route.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jeka/common/widgets/app_bar.dart';
import 'package:jeka/common/widgets/app_layout.dart';
import 'package:jeka/common/widgets/reuseable_text.dart';
import 'package:jeka/common/widgets/reuseable_text_form.dart';
import 'package:jeka/core/router/app_router.dart';

@RoutePage()
class CreatePostPage extends StatelessWidget {
  const CreatePostPage({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return AppLayout(
      child: Scaffold(
        appBar: ReuseableAppBar(context: context),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const ReuseableText(
                  "Create new Post",
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
                const ReuseableText(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin id lacinia nisi. Sed scelerisque ultricies malesuada. Nunc sagittis blandit eros, ",
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 24,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: const ReuseableText(
                    "Cover",
                    fontSize: 18,
                  ),
                ),
                DottedBorder(
                  borderType: BorderType.RRect,
                  radius: const Radius.circular(8),
                  child: Container(
                    alignment: Alignment.center,
                    width: double.maxFinite,
                    height: 150,
                    child: const FaIcon(
                      FontAwesomeIcons.image,
                      size: 54,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                const ReuseableTextForm(
                  hintText: "E.g. How to improve minecraft server performances",
                  title: "Title",
                ),
                const SizedBox(
                  height: 24,
                ),
                GestureDetector(
                  onTap: () {
                    context.router.push(GenerativeTextEditorRoute(desc: ""));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: colorScheme.surfaceBright,
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(
                        color: Colors.black12,
                      ),
                    ),
                    alignment: Alignment.center,
                    width: double.maxFinite,
                    height: 100,
                    child: const ReuseableText("Tap to add content"),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                SizedBox(
                  width: double.maxFinite,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text("Create Post"),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
