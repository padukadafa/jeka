import 'package:flutter/material.dart';
import 'package:jeka/common/widgets/reuseable_text.dart';
import 'package:jeka/features/community/presentation/pages/create_community/widgets/create_community_description.dart';
import 'package:jeka/features/community/presentation/pages/create_community/widgets/create_community_location.dart';
import 'package:jeka/features/community/presentation/pages/create_community/widgets/create_community_logo.dart';
import 'package:jeka/features/community/presentation/pages/create_community/widgets/create_community_name.dart';

class CreateCommunityDetail extends StatelessWidget {
  const CreateCommunityDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            ReuseableText(
              "Describe your community",
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
            ReuseableText(
              "Describe your community to interest people to join your community",
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 24,
            ),
            CreateCommunityLogo(),
            CreateCommunityName(),
            CreateCommunityLocation(),
            CreateCommunityDescription(),
          ],
        ),
      ),
    );
  }
}
