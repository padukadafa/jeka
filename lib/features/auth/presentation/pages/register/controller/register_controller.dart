import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jeka/features/auth/presentation/blocs/bloc/auth_bloc.dart';

class RegisterController {
  late BuildContext context;
  RegisterController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final nameController = TextEditingController();
  late AuthBloc authBloc;
  setContext(BuildContext context) {
    this.context = context;
    authBloc = context.read<AuthBloc>();
  }

  register() {
    if (!formKey.currentState!.validate()) {
      return;
    }
    authBloc.add(Register(context,
        name: nameController.text,
        email: emailController.text,
        password: passwordController.text));
  }
}
