import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jeka/common/widgets/app_layout.dart';
import 'package:jeka/common/widgets/reuseable_text.dart';
import 'package:jeka/features/search/presentation/pages/search/widgets/search_new_community.dart';
import 'package:jeka/features/search/presentation/pages/search/widgets/search_upcoming_event.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return AppLayout(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 21,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 32),
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: colorScheme.surfaceBright,
                  border: Border.all(
                    color: Colors.grey,
                  ),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: const Row(
                  children: [
                    FaIcon(
                      FontAwesomeIcons.magnifyingGlass,
                      size: 16,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    ReuseableText(
                      "Search Somethings...",
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    'Literacy',
                    'education',
                    'footbal',
                    'astronomy',
                    'Volunteer',
                  ].map(
                    (text) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4),
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 6),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 4,
                          ),
                          decoration: BoxDecoration(
                            color: colorScheme.surfaceBright,
                            borderRadius: BorderRadius.circular(4),
                            boxShadow: [
                              BoxShadow(
                                color: colorScheme.shadow,
                                blurRadius: 2,
                              )
                            ],
                          ),
                          child: ReuseableText(
                            text,
                            fontSize: 16,
                          ),
                        ),
                      );
                    },
                  ).toList(),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 12,
                ),
                child: const ReuseableText(
                  "Recently Search",
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              Column(
                children: [
                  "Baim Wong",
                  "Literacy Community",
                  "Drugs",
                  "School edu",
                ].map((text) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 12,
                        ),
                        const FaIcon(
                          FontAwesomeIcons.clockRotateLeft,
                          size: 18,
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        ReuseableText(text),
                      ],
                    ),
                  );
                }).toList(),
              ),
              const SearchNewCommunity(),
              const SearchUpcomingEvent(),
            ],
          ),
        ),
      ),
    );
  }
}
