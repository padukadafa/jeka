import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jeka/common/widgets/reuseable_text_form.dart';
import 'package:jeka/features/community/presentation/pages/create_community/cubit/create_community_cubit.dart';

class CreateCommunityName extends StatelessWidget {
  const CreateCommunityName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final createCommunityCubit = context.read<CreateCommunityCubit>();
    return ReuseableTextForm(
      hintText: "e.g Indonesian Lecture Community",
      title: "Community Name",
      onChange: (val) {
        createCommunityCubit.updateName(val);
      },
    );
  }
}
