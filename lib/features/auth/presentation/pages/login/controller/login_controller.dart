import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jeka/features/auth/presentation/blocs/bloc/auth_bloc.dart';

class LoginController {
  late BuildContext context;
  LoginController();
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  late AuthBloc authBloc;
  setContext(BuildContext context) {
    this.context = context;
    authBloc = context.read<AuthBloc>();
  }

  login() {
    if (!formKey.currentState!.validate()) {
      return;
    }
    authBloc.add(LoginWithEmailAndPassword(context,
        email: emailController.text, password: passwordController.text));
  }
}
