import 'package:flutter/material.dart';
import 'package:jeka/common/widgets/reuseable_text_form.dart';
import 'package:jeka/core/validator.dart';
import 'package:jeka/features/auth/presentation/pages/register/controller/register_controller.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({
    super.key,
    required this.formKey,
    required this.controller,
  });
  final GlobalKey formKey;
  final RegisterController controller;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          ReuseableTextForm(
            hintText: "e.g John",
            title: "Name",
            validator: Validator.requiredValidator,
            controller: controller.nameController,
          ),
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
        ],
      ),
    );
  }
}
