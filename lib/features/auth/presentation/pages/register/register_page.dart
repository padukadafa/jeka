import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:jeka/common/widgets/app_layout.dart';
import 'package:jeka/common/widgets/reuseable_text.dart';
import 'package:jeka/core/router/app_router.dart';
import 'package:jeka/features/auth/presentation/pages/register/controller/register_controller.dart';
import 'package:jeka/features/auth/presentation/pages/register/widgets/register_form.dart';
import 'package:jeka/features/auth/presentation/widgets/auth_divider.dart';
import 'package:jeka/features/auth/presentation/widgets/auth_login_with_google.dart';
import 'package:jeka/features/auth/presentation/widgets/auth_topbar.dart';

@RoutePage()
class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});
  final controller = RegisterController();

  @override
  Widget build(BuildContext context) {
    controller.setContext(context);

    final size = MediaQuery.of(context).size;
    final colorScheme = Theme.of(context).colorScheme;
    return AppLayout(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              AuthTopbar(
                size: size,
                desc: "Register and get started",
              ),
              const SizedBox(
                height: 24,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    RegisterForm(
                      formKey: controller.formKey,
                      controller: controller,
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    SizedBox(
                      width: size.width,
                      child: ElevatedButton(
                        onPressed: () {
                          controller.register();
                        },
                        child: const Text(
                          "Register",
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    const AuthDivider(),
                    const SizedBox(
                      height: 24,
                    ),
                    AuthLoginWIthGoogle(
                      size: size,
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const ReuseableText("Haven an Account "),
                        GestureDetector(
                          onTap: () {
                            context.router.replaceAll([LoginRoute()]);
                          },
                          child: ReuseableText(
                            "Login",
                            color: colorScheme.primary,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
