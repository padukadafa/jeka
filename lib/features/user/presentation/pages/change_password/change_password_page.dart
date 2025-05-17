import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:jeka/common/widgets/app_bar.dart';
import 'package:jeka/common/widgets/app_layout.dart';
import 'package:jeka/common/widgets/reuseable_text.dart';
import 'package:jeka/common/widgets/reuseable_text_form.dart';
import 'package:jeka/core/validator.dart';
import 'package:jeka/features/user/presentation/pages/change_password/controller/change_password_controller.dart';

@RoutePage()
class ChangePasswordPage extends StatelessWidget {
  ChangePasswordPage({super.key});
  final controller = ChangePasswordController();
  @override
  Widget build(BuildContext context) {
    controller.setContext(context);
    final size = MediaQuery.of(context).size;
    return AppLayout(
      child: Scaffold(
        appBar: ReuseableAppBar(
            context: context,
            showBackButton: true,
            title: const Text("Change Password"),
            actions: [
              TextButton(
                onPressed: () {},
                child: const ReuseableText(
                  "AI this",
                  color: Colors.amber,
                ),
              ),
            ]),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                const ReuseableText(
                  "Kami memahami bahwa kadang-kadang memori bisa memainkan trik pada kita. Jangan khawatir, kita punya solusi untukmu. Silahkan isi email anda di bawah ini untuk mengatur ulang kata sandi Anda",
                ),
                const SizedBox(
                  height: 24,
                ),
                Form(
                  key: controller.formKey,
                  child: ReuseableTextForm(
                    hintText: "e.g john@mail.com",
                    title: "Email",
                    controller: controller.emailController,
                    validator: Validator.emailValidator,
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                SizedBox(
                  width: size.width,
                  child: ElevatedButton(
                    onPressed: () {
                      controller.forgotPassword();
                    },
                    child: const Text("Send Change Password"),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
