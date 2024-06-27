import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jeka/common/widgets/reuseable_text.dart';
import 'package:jeka/features/community/presentation/pages/create_community/cubit/create_community_cubit.dart';
import 'package:jeka/features/community/presentation/pages/create_community/cubit/create_community_selector.dart';
import 'package:jeka/features/community/presentation/pages/create_community/widgets/create_community_new_rules.dart';

class CreateCommunityRules extends StatelessWidget {
  const CreateCommunityRules({super.key});

  @override
  Widget build(BuildContext context) {
    final createCommunityCubit = context.read<CreateCommunityCubit>();

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const ReuseableText(
              "Rules of  your community",
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
            const ReuseableText(
              "Your Community is where you and people with same  interest hang out. Make yours and start discussion.",
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 24,
            ),
            RulesCreateCommunitySelector(builder: (rules) {
              return Column(
                children: rules.map(
                  (rule) {
                    return ListTile(
                      trailing: IconButton(
                        onPressed: () {
                          createCommunityCubit.deleteRules(rule);
                        },
                        icon: const FaIcon(
                          FontAwesomeIcons.trash,
                          color: Colors.red,
                          size: 16,
                        ),
                      ),
                      title: Text(rule),
                    );
                  },
                ).toList(),
              );
            }),
            const CreateCommunityNewRules(),
          ],
        ),
      ),
    );
  }
}
