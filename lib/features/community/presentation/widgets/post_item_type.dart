import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jeka/common/widgets/reuseable_text.dart';

class PostItemType extends StatelessWidget {
  final int type;
  const PostItemType({
    super.key,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    if (type == 0) {
      return Padding(
        padding: const EdgeInsets.all(8),
        child: Row(
          children: [
            FaIcon(
              FontAwesomeIcons.solidLightbulb,
              size: 16,
              color: colorScheme.primary,
            ),
            const SizedBox(
              width: 12,
            ),
            ReuseableText(
              "Announcement",
              color: colorScheme.primary,
            ),
          ],
        ),
      );
    }
    if (type == 2) {
      return const Padding(
        padding: EdgeInsets.all(8),
        child: Row(
          children: [
            FaIcon(
              FontAwesomeIcons.solidFile,
              size: 16,
              color: Colors.blue,
            ),
            SizedBox(
              width: 12,
            ),
            ReuseableText(
              "Attachment",
              color: Colors.blue,
            ),
          ],
        ),
      );
    }
    return const SizedBox();
  }
}
