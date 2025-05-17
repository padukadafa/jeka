import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jeka/common/widgets/reuseable_text.dart';
import 'package:jeka/features/community/presentation/pages/create_community/cubit/create_community_cubit.dart';
import 'package:jeka/features/community/presentation/pages/create_community/cubit/create_community_selector.dart';

class CreateCommunityLogo extends StatelessWidget {
  const CreateCommunityLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final createCommunityCubit = context.read<CreateCommunityCubit>();
    return GestureDetector(
      onTap: () {
        createCommunityCubit.updateLogo();
      },
      child: LogoCreateCommunitySelector(builder: (image) {
        if (image != null) {
          return Container(
            width: 120,
            height: 120,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: FileImage(image),
                fit: BoxFit.cover,
              ),
            ),
          );
        }
        return SizedBox(
          width: 120,
          height: 120,
          child: Stack(
            children: [
              DottedBorder(
                borderType: BorderType.Circle,
                strokeWidth: 2,
                child: Container(
                  alignment: Alignment.center,
                  width: 120,
                  height: 120,
                  child: const Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.camera,
                        size: 50,
                      ),
                      ReuseableText(
                        "Upload",
                        fontWeight: FontWeight.bold,
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: colorScheme.primary,
                  ),
                  child: FaIcon(
                    FontAwesomeIcons.plus,
                    color: colorScheme.onPrimary,
                    size: 16,
                  ),
                ),
              )
            ],
          ),
        );
      }),
    );
  }
}
