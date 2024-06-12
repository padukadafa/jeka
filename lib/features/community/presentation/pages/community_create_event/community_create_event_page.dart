import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jeka/common/widgets/app_layout.dart';
import 'package:jeka/common/widgets/avatar.dart';
import 'package:jeka/common/widgets/reuseable_text.dart';
import 'package:jeka/common/widgets/reuseable_text_form.dart';

@RoutePage()
class CommunityCreateEventPage extends StatelessWidget {
  const CommunityCreateEventPage({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return AppLayout(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              context.router.maybePop();
            },
            icon: const FaIcon(FontAwesomeIcons.chevronLeft),
          ),
          actions: [
            TextButton(
              onPressed: () {},
              child: ReuseableText(
                "Create",
                fontSize: 16,
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                Row(
                  children: [
                    Avatar(
                      size: 45,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    ReuseableText("Lucas Bradly"),
                  ],
                ),
                ReuseableTextForm(
                  hintText: "What's your think about",
                  border: Border.all(
                    color: Colors.transparent,
                  ),
                ),
                SizedBox(
                  width: double.maxFinite,
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    label: ReuseableText("Add File"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: colorScheme.surfaceBright,
                    ),
                    icon: FaIcon(
                      FontAwesomeIcons.plus,
                      size: 18,
                      color: colorScheme.onSurface,
                    ),
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
