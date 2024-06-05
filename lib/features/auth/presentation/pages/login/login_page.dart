import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:jeka/common/widgets/app_layout.dart';
import 'package:jeka/common/widgets/reuseable_text.dart';
import 'package:jeka/core/router/app_router.dart';
import 'package:jeka/features/auth/presentation/pages/login/controller/login_controller.dart';
import 'package:jeka/features/auth/presentation/pages/login/widgets/login_form.dart';
import 'package:jeka/features/auth/presentation/widgets/auth_divider.dart';
import 'package:jeka/features/auth/presentation/widgets/auth_login_with_google.dart';
import 'package:jeka/features/auth/presentation/widgets/auth_topbar.dart';

@RoutePage()
class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  final controller = LoginController();

  @override
  Widget build(BuildContext context) {
    controller.setContext(context);

    final size = MediaQuery.of(context).size;
    final colorScheme = Theme.of(context).colorScheme;
    return AppLayout(
      surfaceColor: colorScheme.primary,
      brightness: Brightness.light,
      child: Scaffold(
        backgroundColor: colorScheme.surface,
        body: SingleChildScrollView(
          child: Column(
            children: [
              AuthTopbar(
                size: size,
                desc: "Login with your jeka account to get started",
              ),
              const SizedBox(
                height: 24,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    AuthLoginWIthGoogle(
                      size: size,
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    const AuthDivider(),
                    const SizedBox(
                      height: 24,
                    ),
                    LoginForm(
                      formKey: controller.formKey,
                      controller: controller,
                    ),
                    SizedBox(
                      width: size.width,
                      child: ElevatedButton(
                        onPressed: () {
                          controller.login();
                        },
                        child: const Text(
                          "Login",
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const ReuseableText("Haven't Account "),
                        GestureDetector(
                          onTap: () {
                            context.router.replaceAll([RegisterRoute()]);
                          },
                          child: ReuseableText(
                            "Register",
                            color: colorScheme.primary,
                          ),
                        )
                      ],
                    )
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
