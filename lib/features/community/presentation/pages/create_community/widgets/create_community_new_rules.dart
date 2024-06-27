import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jeka/features/community/presentation/pages/create_community/cubit/create_community_cubit.dart';

class CreateCommunityNewRules extends StatefulWidget {
  const CreateCommunityNewRules({
    super.key,
  });

  @override
  State<CreateCommunityNewRules> createState() =>
      _CreateCommunityNewRulesState();
}

class _CreateCommunityNewRulesState extends State<CreateCommunityNewRules> {
  bool _showTextField = false;
  final textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final createCommunityCubit = context.read<CreateCommunityCubit>();
    return Visibility(
      visible: _showTextField,
      replacement: ListTile(
        onTap: () {
          setState(() {
            _showTextField = true;
          });
        },
        leading: const FaIcon(FontAwesomeIcons.plus),
        title: const Text("New Rules"),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: TextFormField(
          controller: textController,
          onFieldSubmitted: (val) {
            createCommunityCubit.addRules(val);
            textController.clear();
            setState(() {
              _showTextField = false;
            });
          },
          onTapOutside: (event) {
            createCommunityCubit.addRules(textController.text);

            textController.clear();

            setState(() {
              _showTextField = false;
            });
          },
          autofocus: true,
          decoration: const InputDecoration(
            border: InputBorder.none,
            hintText: "e.g Don't judge others",
          ),
        ),
      ),
    );
  }
}
