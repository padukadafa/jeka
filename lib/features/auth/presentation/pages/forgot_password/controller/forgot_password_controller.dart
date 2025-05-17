import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jeka/features/auth/presentation/blocs/bloc/auth_bloc.dart';

class ForgotPasswordController {
  final TextEditingController emailController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  late BuildContext context;
  late AuthBloc authBloc;
  setContext(BuildContext context) {
    this.context = context;
    authBloc = context.read<AuthBloc>();
  }

  forgotPassword() {
    if (!formKey.currentState!.validate()) {
      return;
    }
    authBloc.add(ForgotPassword(emailController.text));
  }
}
