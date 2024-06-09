import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jeka/common/widgets/app_layout.dart';
import 'package:jeka/common/widgets/reuseable_text.dart';
import 'package:jeka/features/user/presentation/pages/user/widgets/user_background.dart';
import 'package:jeka/features/user/presentation/pages/user/widgets/user_first_detail.dart';
import 'package:jeka/features/user/presentation/pages/user/widgets/user_second_detail.dart';

class UserPage extends StatelessWidget {
  const UserPage({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return AppLayout(
      child: Scaffold(
        backgroundColor: colorScheme.surface,
        body: SingleChildScrollView(
          child: Column(
            children: [
              const UserBackground(),
              const SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    const UserFirstDetail(),
                    const SizedBox(
                      height: 16,
                    ),
                    const UserSecondDetail(),
                    const SizedBox(
                      height: 16,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: colorScheme.surfaceBright,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                            color: colorScheme.shadow,
                            blurRadius: 4,
                          ),
                        ],
                      ),
                      child: ListTile(
                        onTap: () {},
                        title: const ReuseableText("Your Friends"),
                        trailing: const FaIcon(
                          FontAwesomeIcons.chevronRight,
                          size: 16,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
