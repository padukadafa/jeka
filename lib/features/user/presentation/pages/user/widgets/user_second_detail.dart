import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:jeka/common/widgets/reuseable_text.dart';
import 'package:jeka/features/auth/presentation/blocs/bloc/auth_selector.dart';
import 'package:skeletonizer/skeletonizer.dart';

class UserSecondDetail extends StatelessWidget {
  const UserSecondDetail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Container(
      padding: const EdgeInsets.all(12),
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
      child: UserAuthSelector(
        builder: (user) {
          return Skeletonizer(
            enabled: user == null,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  width: double.maxFinite,
                ),
                const ReuseableText(
                  "About me",
                  fontWeight: FontWeight.bold,
                ),
                ReuseableText(
                  user?.desc ?? "",
                ),
                const SizedBox(
                  height: 12,
                ),
                const ReuseableText(
                  "Job",
                  fontWeight: FontWeight.bold,
                ),
                ReuseableText(user?.job ?? "Set on edit profile"),
                const SizedBox(
                  height: 12,
                ),
                const ReuseableText(
                  "Website",
                  fontWeight: FontWeight.bold,
                ),
                ReuseableText(user?.website ?? ""),
                const SizedBox(
                  height: 12,
                ),
                const ReuseableText(
                  "JeKa member since",
                  fontWeight: FontWeight.bold,
                ),
                user != null
                    ? ReuseableText(
                        DateFormat("d MMM, yyyy").format(user.createdAt!))
                    : const SizedBox(),
              ],
            ),
          );
        },
      ),
    );
  }
}
