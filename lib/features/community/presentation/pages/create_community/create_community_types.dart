import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jeka/common/widgets/reuseable_text.dart';
import 'package:jeka/core/constants.dart';
import 'package:jeka/features/community/presentation/pages/create_community/cubit/create_community_cubit.dart';
import 'package:jeka/features/community/presentation/pages/create_community/cubit/create_community_selector.dart';

class CreateCommunityTypes extends StatelessWidget {
  const CreateCommunityTypes({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final createCommunityCubit = context.read<CreateCommunityCubit>();

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const ReuseableText(
              "Type of  your community",
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
            TypesCreateCommunitySelector(
              builder: (types) {
                return Column(
                  children: AppConstants.communityTypes.map(
                    (type) {
                      return Container(
                        margin: const EdgeInsets.symmetric(vertical: 4),
                        decoration: BoxDecoration(
                          color: colorScheme.surfaceBright,
                          border: Border.all(color: colorScheme.shadow),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: ListTile(
                          onTap: () {
                            createCommunityCubit.updateTypes(type);
                          },
                          title: Text(type),
                          trailing: (types.contains(type))
                              ? const FaIcon(
                                  FontAwesomeIcons.circleCheck,
                                  color: Colors.green,
                                )
                              : FaIcon(
                                  FontAwesomeIcons.circle,
                                  color: colorScheme.shadow,
                                ),
                        ),
                      );
                    },
                  ).toList(),
                );
              },
            ),
            const SizedBox(
              height: 36,
            ),
            const SizedBox(
              height: 12,
            ),
          ],
        ),
      ),
    );
  }
}
