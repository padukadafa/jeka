import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:jeka/common/widgets/reuseable_text.dart';
import 'package:jeka/common/widgets/reuseable_text_form.dart';
import 'package:jeka/features/community/presentation/pages/create_community/cubit/create_community_cubit.dart';
import 'package:jeka/features/community/presentation/pages/create_community/cubit/create_community_selector.dart';

class CreateCommunityDescription extends StatelessWidget {
  const CreateCommunityDescription({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final createCommunityCubit = context.read<CreateCommunityCubit>();
    final colorScheme = Theme.of(context).colorScheme;

    return DescriptionCreateCommunitySelector(builder: (desc) {
      if (desc != null) {
        return GestureDetector(
          onTap: () async {
            createCommunityCubit.updateDescription(context);
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ReuseableText("Desc"),
              const SizedBox(
                height: 8,
              ),
              Container(
                width: double.maxFinite,
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                decoration: BoxDecoration(
                  color: colorScheme.surfaceBright,
                  border: Border.all(color: colorScheme.shadow),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: HtmlWidget(desc),
              ),
            ],
          ),
        );
      }
      return GestureDetector(
        onTap: () {
          createCommunityCubit.updateDescription(context);
        },
        child: const ReuseableTextForm(
          hintText: "e.g Lorem ipsum dolor...",
          title: "Description",
          maxLines: 6,
          enabled: false,
        ),
      );
    });
  }
}
