import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jeka/features/auth/data/models/user_model.dart';
import 'package:jeka/features/auth/presentation/blocs/bloc/auth_bloc.dart';

class AuthSelector<T> extends BlocSelector<AuthBloc, AuthState, T> {
  AuthSelector(
      {super.key, required super.selector, required Widget Function(T) builder})
      : super(builder: (_, value) => builder(value));
}

class UserAuthSelector extends AuthSelector<UserModel?> {
  UserAuthSelector({super.key, required super.builder})
      : super(selector: (state) => state.user);
}
