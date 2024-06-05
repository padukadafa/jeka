import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:jeka/common/widgets/reuseable_text.dart';
import 'package:jeka/common/widgets/reuseable_text_form.dart';
import 'package:jeka/core/router/app_router.dart';
import 'package:jeka/core/validator.dart';
import 'package:jeka/features/auth/presentation/pages/login/controller/login_controller.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
    required this.formKey,
    required this.controller,
  });
  final GlobalKey formKey;
  final LoginController controller;
  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    return Form(
      key: formKey,
      child: Column(
        children: [
          ReuseableTextForm(
            hintText: "e.g John@mail.com",
            title: "Email",
            validator: Validator.emailValidator,
            controller: controller.emailController,
          ),
          ReuseableTextForm(
            hintText: "********",
            title: "Password",
            showHideButton: true,
            validator: Validator.passwordValidator,
            controller: controller.passwordController,
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: TextButton(
              onPressed: () {
                context.router.push(ForgotPasswordRoute());
              },
              child: ReuseableText(
                "Forgot Password?",
                color: colorScheme.primary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
