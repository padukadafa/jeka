import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jeka/common/widgets/app_layout.dart';
import 'package:jeka/common/widgets/reuseable_text.dart';
import 'package:jeka/core/router/app_router.dart';
import 'package:jeka/features/auth/presentation/pages/login/controller/login_controller.dart';
import 'package:jeka/features/auth/presentation/pages/login/widgets/login_form.dart';
import 'package:jeka/features/auth/presentation/widgets/auth_divider.dart';
import 'package:jeka/features/auth/presentation/widgets/auth_login_with_google.dart';
import 'package:jeka/features/auth/presentation/widgets/auth_topbar.dart';
import 'package:toastification/toastification.dart';

@RoutePage()
class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final controller = LoginController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((v) {
      toastification.show(
        context: context,
        title: const Text(
            'Hai dewan juri. Kami telah menyediakan akun demo untuk pengalaman pengujian yang lebih baik. Atau anda juga bisa mendaftarkan akun baru.'),
        autoCloseDuration: const Duration(seconds: 5),
        style: ToastificationStyle.fillColored,
      );
    });
  }

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
                desc: "Login with your jeka account to get started",
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  color: Colors.orangeAccent,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const ListTile(
                  textColor: Colors.white,
                  leading: Icon(
                    Icons.info_outline,
                    color: Colors.white,
                  ),
                  titleTextStyle: TextStyle(color: Colors.white, height: 1.4),
                  title: Text(
                      "Akun Demo\nEmail : demojeka.juri@gmail.com\nPassword: demojuri01"),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
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
