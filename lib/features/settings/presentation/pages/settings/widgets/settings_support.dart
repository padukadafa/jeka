import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jeka/common/widgets/reuseable_text.dart';
import 'package:jeka/core/router/app_router.dart';
import 'package:jeka/features/settings/presentation/pages/settings/widgets/settings_item.dart';

class SettingsSupport extends StatelessWidget {
  const SettingsSupport({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ReuseableText(
          "Support",
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
        const SizedBox(
          height: 8,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: colorScheme.surfaceBright,
            boxShadow: [
              BoxShadow(
                color: colorScheme.shadow,
                blurRadius: 2,
              )
            ],
          ),
          child: Column(
            children: [
              SettingsItem(
                icon: FontAwesomeIcons.circleInfo,
                title: "About",
                onTap: () {
                  context.router.push(const AboutRoute());
                },
              ),
              SettingsItem(
                icon: FontAwesomeIcons.fileSignature,
                title: "Rules and Agreement",
                onTap: () {
                  context.router.push(const RulesAndAgreementRoute());
                },
              ),
              SettingsItem(
                icon: FontAwesomeIcons.fileCircleQuestion,
                title: "Community Guidelines",
                onTap: () {
                  context.router.push(const CommunityGuidelinesRoute());
                },
              ),
              SettingsItem(
                icon: FontAwesomeIcons.circleInfo,
                title: "FAQ",
                onTap: () {
                  context.router.push(const FAQRoute());
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
