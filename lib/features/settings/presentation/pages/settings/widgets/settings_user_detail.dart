import 'package:flutter/material.dart';
import 'package:jeka/common/widgets/avatars/avatar.dart';
import 'package:jeka/common/widgets/reuseable_text.dart';
import 'package:jeka/features/auth/presentation/blocs/bloc/auth_selector.dart';
import 'package:skeletonizer/skeletonizer.dart';

class SettingsUserDetail extends StatelessWidget {
  const SettingsUserDetail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return UserAuthSelector(
      builder: (user) {
        return Skeletonizer(
          enabled: user == null,
          child: Row(
            children: [
              const Avatar(
                size: 50,
              ),
              const SizedBox(
                width: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ReuseableText(
                    user?.name ?? "",
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                  ReuseableText(
                    user?.email ?? "",
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
