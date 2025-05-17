import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:jeka/di.dart';
import 'package:jeka/features/community/data/repository/community_repository.dart';
import 'package:jeka/features/community/presentation/bloc/community_bloc.dart';
import 'package:path/path.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jeka/common/widgets/app_layout.dart';
import 'package:jeka/common/widgets/avatars/avatar.dart';
import 'package:jeka/common/widgets/reuseable_text.dart';
import 'package:jeka/common/widgets/reuseable_text_form.dart';
import 'package:jeka/features/auth/presentation/blocs/bloc/auth_selector.dart';
import 'package:jeka/features/community/presentation/pages/community_create_post/cubit/create_post_cubit.dart';

@RoutePage()
class CommunityCreatePostPage extends StatelessWidget {
  const CommunityCreatePostPage({super.key});

  @override
  Widget build(BuildContext context) {
    final communityBloc = context.read<CommunityBloc>();
    return AppLayout(
      child: BlocProvider(
        create: (context) => CreatePostCubit(
          getIt<CommunityRepository>(),
          getIt<FirebaseAuth>(),
        ),
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              onPressed: () {
                context.router.maybePop();
              },
              icon: const FaIcon(FontAwesomeIcons.chevronLeft),
            ),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  UserAuthSelector(builder: (user) {
                    return Row(
                      children: [
                        Avatar(
                          size: 45,
                          url: user?.imageProfileUrl,
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        ReuseableText(user?.name ?? ""),
                      ],
                    );
                  }),
                  const PostDesc(),
                  const CreatePostFiles(),
                  const CreatePostType(),
                  const SizedBox(
                    height: 24,
                  ),
                  BlocBuilder<CreatePostCubit, CreatePostState>(
                    builder: (context, state) {
                      return SizedBox(
                        width: double.maxFinite,
                        child: ElevatedButton(
                          onPressed: () {
                            context.read<CreatePostCubit>().createPost(
                                context, communityBloc.state.community!.id!);
                          },
                          child: const Text("Create Post"),
                        ),
                      );
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CreatePostType extends StatelessWidget {
  const CreatePostType({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final createPostCubit = context.read<CreatePostCubit>();

    return BlocBuilder<CreatePostCubit, CreatePostState>(
      builder: (context, state) {
        return Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 6),
              decoration: BoxDecoration(
                color: colorScheme.surfaceBright,
                borderRadius: BorderRadius.circular(4),
                border: Border.all(
                    color: state.type == 0
                        ? colorScheme.primary
                        : colorScheme.shadow),
              ),
              child: ListTile(
                onTap: () {
                  createPostCubit.changeType(0);
                },
                leading: FaIcon(
                  FontAwesomeIcons.solidLightbulb,
                  color: colorScheme.primary,
                  size: 18,
                ),
                title: const Text("Annauncement"),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 6),
              decoration: BoxDecoration(
                color: colorScheme.surfaceBright,
                borderRadius: BorderRadius.circular(4),
                border: Border.all(
                    color: state.type == 1
                        ? colorScheme.primary
                        : colorScheme.shadow),
              ),
              child: ListTile(
                onTap: () {
                  createPostCubit.changeType(1);
                },
                leading: const FaIcon(
                  FontAwesomeIcons.anchor,
                  color: Colors.orange,
                  size: 18,
                ),
                title: const Text("Feed"),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 6),
              decoration: BoxDecoration(
                color: colorScheme.surfaceBright,
                borderRadius: BorderRadius.circular(4),
                border: Border.all(
                    color: state.type == 2
                        ? colorScheme.primary
                        : colorScheme.shadow),
              ),
              child: ListTile(
                onTap: () {
                  createPostCubit.changeType(2);
                },
                leading: const FaIcon(
                  FontAwesomeIcons.solidFile,
                  color: Colors.blue,
                  size: 18,
                ),
                title: const Text("Attachment"),
              ),
            ),
          ],
        );
      },
    );
  }
}

class PostDesc extends StatelessWidget {
  const PostDesc({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final createPostCubit = context.read<CreatePostCubit>();

    return BlocBuilder<CreatePostCubit, CreatePostState>(
      builder: (context, state) {
        if (state.type == 2) {
          return const SizedBox();
        }
        return ReuseableTextForm(
          hintText: "What's your think about",
          border: Border.all(
            color: Colors.transparent,
          ),
          onChange: (val) {
            createPostCubit.changeDesc(val);
          },
        );
      },
    );
  }
}

class CreatePostFiles extends StatelessWidget {
  const CreatePostFiles({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final createPostCubit = context.read<CreatePostCubit>();
    return Column(
      children: [
        BlocBuilder<CreatePostCubit, CreatePostState>(
          builder: (context, state) {
            return Column(
              children: state.files.map((e) {
                return Container(
                  margin: const EdgeInsets.only(top: 8),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 6,
                  ),
                  decoration: BoxDecoration(
                    color: colorScheme.surfaceBright,
                    borderRadius: BorderRadius.circular(4),
                    boxShadow: [
                      BoxShadow(
                        color: colorScheme.shadow,
                        blurRadius: 2,
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      icon(
                        extension(e.path),
                        size: 18,
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      ReuseableText(basename(e.path)),
                      const SizedBox(
                        width: 6,
                      ),
                      const Expanded(child: SizedBox()),
                      FutureBuilder<int>(
                        future: e.length(),
                        builder: (context, snapshot) {
                          if (snapshot.hasData) {
                            return ReuseableText(filesize(snapshot.data!));
                          }
                          return const CircularProgressIndicator(
                            strokeWidth: 12,
                          );
                        },
                      ),
                      GestureDetector(
                        onTap: () {
                          createPostCubit.deleteFile(e);
                        },
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: FaIcon(
                            FontAwesomeIcons.trash,
                            size: 14,
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              }).toList(),
            );
          },
        ),
        SizedBox(
          width: double.maxFinite,
          child: ElevatedButton.icon(
            onPressed: () {
              createPostCubit.addFile();
            },
            label: const ReuseableText("Add File"),
            style: ElevatedButton.styleFrom(
              backgroundColor: colorScheme.surfaceBright,
            ),
            icon: FaIcon(
              FontAwesomeIcons.plus,
              size: 18,
              color: colorScheme.onSurface,
            ),
          ),
        ),
      ],
    );
  }

  icon(String ext, {double size = 26}) {
    if (ext == ".pdf") {
      return FaIcon(
        FontAwesomeIcons.solidFilePdf,
        color: Colors.red,
        size: size,
      );
    }
    if (ext == ".jpeg" || ext == ".jpg" || ext == ".png") {
      return FaIcon(
        FontAwesomeIcons.solidFileImage,
        color: Colors.blue,
        size: size,
      );
    }
    return FaIcon(
      FontAwesomeIcons.solidFile,
      color: Colors.grey,
      size: size,
    );
  }

  String filesize(int bytes) {
    if (bytes > 1024 * 1024 * 1024) {
      return "${(bytes / (1024 * 1024 * 1024)).toStringAsFixed(2)} GB";
    }
    if (bytes > 1024 * 1024) {
      return "${(bytes / (1024 * 1024)).toStringAsFixed(2)} MB";
    }
    if (bytes > 1024) {
      return "${(bytes / 1024).toStringAsFixed(2)} KB";
    }
    return "$bytes B";
  }
}
