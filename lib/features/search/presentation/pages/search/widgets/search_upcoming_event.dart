import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jeka/common/widgets/reuseable_text.dart';

class SearchUpcomingEvent extends StatelessWidget {
  const SearchUpcomingEvent({super.key});

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 12,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ReuseableText(
                "Upcoming Events",
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
              ReuseableText("See more"),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              8,
              (index) {
                return Container(
                  padding: const EdgeInsets.all(8),
                  width: 200,
                  margin: const EdgeInsets.symmetric(horizontal: 6),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: colorScheme.surfaceBright,
                    boxShadow: [
                      BoxShadow(
                        color: colorScheme.shadow,
                        blurRadius: 4,
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.calendar,
                        color: colorScheme.primary,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      const ReuseableText("Feb 3 || 3pm"),
                      const SizedBox(
                        height: 8,
                      ),
                      const ReuseableText(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam lectus mi, finibus ut nisl ut,",
                        maxLines: 3,
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
