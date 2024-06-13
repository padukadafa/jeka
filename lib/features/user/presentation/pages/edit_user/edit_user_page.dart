import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jeka/common/widgets/app_layout.dart';
import 'package:jeka/common/widgets/avatar.dart';
import 'package:jeka/common/widgets/reuseable_text.dart';
import 'package:jeka/common/widgets/reuseable_text_form.dart';
import 'package:jeka/core/router/app_router.dart';
import 'package:jeka/features/auth/presentation/blocs/bloc/auth_selector.dart';
import 'package:jeka/features/user/presentation/pages/edit_user/controller/edit_user_controller.dart';

@RoutePage()
class EditUserPage extends StatelessWidget {
  EditUserPage({super.key});
  final controller = EditUserController();

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    controller.init(context);
    return AppLayout(
      child: Scaffold(
        backgroundColor: colorScheme.surface,
        body: SingleChildScrollView(
          child: Column(
            children: [
              EditUserBackground(
                controller: controller,
              ),
              const SizedBox(
                height: 16,
              ),
              EditUserForm(
                controller: controller,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class EditUserForm extends StatelessWidget {
  const EditUserForm({
    super.key,
    required this.controller,
  });
  final EditUserController controller;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final colorScheme = Theme.of(context).colorScheme;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Form(
        key: controller.formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ReuseableTextForm(
              hintText: "e.g john",
              title: "Name",
              controller: controller.nameController,
            ),
            ReuseableTextForm(
              hintText: "e.g Lecture",
              title: "Job",
              controller: controller.jobController,
            ),
            ReuseableTextForm(
              hintText: "e.g https://www.john.com",
              title: "Website",
              controller: controller.websiteController,
              maxLines: 1,
            ),
            const ReuseableText("About me"),
            const SizedBox(
              height: 6,
            ),
            UserAuthSelector(
              builder: (user) {
                if (user?.desc != null) {
                  return GestureDetector(
                    onTap: () async {
                      final result = await context.router.push<String>(
                        TextEditorRoute(
                          initialText: user?.desc ?? "",
                        ),
                      );
                      controller.updateProfile(desc: result);
                    },
                    child: Container(
                      width: double.maxFinite,
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: colorScheme.surfaceBright,
                        boxShadow: [
                          BoxShadow(
                            color: colorScheme.shadow,
                            blurRadius: 2,
                          ),
                        ],
                      ),
                      child: ReuseableText(user?.desc ?? ""),
                    ),
                  );
                }
                return GestureDetector(
                  onTap: () async {
                    final result =
                        await context.router.push<String>(TextEditorRoute(
                      initialText: user?.desc ?? "",
                    ));
                    controller.updateProfile(desc: result);
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 100,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: colorScheme.surfaceBright,
                      boxShadow: [
                        BoxShadow(
                          color: colorScheme.shadow,
                          blurRadius: 2,
                        )
                      ],
                    ),
                    child: const Text("Tab to Add about"),
                  ),
                );
              },
            ),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
              width: size.width,
              child: ElevatedButton(
                onPressed: () {
                  controller.updateProfile();
                },
                child: const Text("Update Profile"),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class EditUserBackground extends StatelessWidget {
  const EditUserBackground({
    super.key,
    required this.controller,
  });
  final EditUserController controller;

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: 185,
      child: Stack(
        children: [
          Container(
            alignment: Alignment.topRight,
            padding: const EdgeInsets.all(12),
            width: size.width,
            height: 150,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/profile_bg.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Align(
            alignment: const Alignment(-0.95, -0.95),
            child: GestureDetector(
              onTap: () {
                context.router.maybePop();
              },
              child: Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: colorScheme.surface,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(color: colorScheme.shadow),
                  ],
                ),
                child: FaIcon(
                  FontAwesomeIcons.chevronLeft,
                  color: colorScheme.onSurface,
                  size: 18,
                ),
              ),
            ),
          ),
          Align(
            alignment: const Alignment(-0.95, 1),
            child: SizedBox(
              width: 80,
              height: 80,
              child: GestureDetector(
                onTap: () {
                  controller.updatePhotoProfile();
                },
                child: Stack(
                  children: [
                    const Avatar(
                      size: 80,
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: colorScheme.primary,
                        ),
                        child: FaIcon(
                          FontAwesomeIcons.pen,
                          size: 16,
                          color: colorScheme.onPrimary,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
