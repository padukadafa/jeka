import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jeka/common/widgets/reuseable_text.dart';

class CommunityEventItem extends StatelessWidget {
  const CommunityEventItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: colorScheme.surfaceBright,
        boxShadow: [
          BoxShadow(
            color: colorScheme.shadow,
            blurRadius: 2,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FaIcon(
                FontAwesomeIcons.calendar,
                color: colorScheme.primary,
              ),
              const ReuseableText("feb 03 || 3 pm"),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          const ReuseableText(
            "Focus Group Discussion",
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
          const SizedBox(
            height: 8,
          ),
          const ReuseableText(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin id lacinia nisi. Sed scelerisque ultricies malesuada. Nunc sagittis blandit eros, a imperdiet elit mollis vel. Aenean a viverra risus. Nam scelerisque eu ",
          ),
          const SizedBox(
            height: 8,
          ),
          const Row(
            children: [
              FaIcon(
                FontAwesomeIcons.earthAsia,
                size: 18,
              ),
              SizedBox(
                width: 12,
              ),
              ReuseableText("Public"),
            ],
          )
        ],
      ),
    );
  }
}
