// ignore_for_file: invalid_use_of_visible_for_testing_member

import 'package:auto_route/auto_route.dart';
import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:jeka/core/error.dart';
import 'package:jeka/core/router/app_router.dart';
import 'package:jeka/features/auth/data/models/user_model.dart';
import 'package:jeka/features/auth/data/repository/auth_repository.dart';
import 'package:jeka/features/user/data/repository/user_repository.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository _authRepository;
  final UserRepository _userRepository;
  final FirebaseAuth _firebaseAuth;
  AuthBloc(
    this._authRepository,
    this._firebaseAuth,
    this._userRepository,
  ) : super(const _Initial()) {
    on<Register>(_onRegisterHandler);
    on<LoginWithEmailAndPassword>(_onLoginWithEmailAndPasswordHandler);
    on<LoginWithGoogle>(_loginWithGoogleHandler);
    on<Logout>(_logoutHandler);
    on<InitStateChange>(_initStateChangeHandler);
    on<UpdateUser>(_updateUserhandler);
    on<ForgotPassword>(_forgotPasswordHandler);
  }
  _onRegisterHandler(Register event, Emitter<AuthState> emit) async {
    EasyLoading.show();
    final result =
        await _authRepository.register(event.name, event.email, event.password);
    result.fold((l) {
      EasyLoading.showError(l.message);
    }, (r) {
      event.context.router.pushAll([HomeRoute()]);
      emit(state.copyWith(user: r));
    });
    EasyLoading.dismiss();
  }

  _onLoginWithEmailAndPasswordHandler(
      LoginWithEmailAndPassword event, Emitter<AuthState> emit) async {
    EasyLoading.show();
    final result = await _authRepository.loginWithEmailAndPassword(
        event.email, event.password);
    result.fold((l) => EasyLoading.showError(l.message), (r) {
      event.context.router.pushAndPopUntil(
        HomeRoute(),
        predicate: (route) => false,
      );
      emit(state.copyWith(user: r));
    });
    EasyLoading.dismiss();
  }

  _loginWithGoogleHandler(
      LoginWithGoogle event, Emitter<AuthState> emit) async {
    EasyLoading.show();
    final result = await _authRepository.loginWithGoogle();
    result.fold((l) {
      if (l is! AbortedFailure) {
        EasyLoading.showError(l.message);
      }
    }, (r) {
      event.context.router.pushAndPopUntil(
        HomeRoute(),
        predicate: (route) => false,
      );
      emit(state.copyWith(user: r));
    });
    EasyLoading.dismiss();
  }

  _logoutHandler(Logout event, Emitter<AuthState> emit) async {
    EasyLoading.show();
    await _authRepository.logout();
    emit(state.copyWith(user: null));
    event.context.router.pushAll([LoginRoute()]);
    await EasyLoading.dismiss();
  }

  _initStateChangeHandler(InitStateChange event, Emitter<AuthState> emit) {
    _firebaseAuth.authStateChanges().listen((user) async {
      if (user == null) {
        event.context.router.pushAll([LoginRoute()]);
      }
    });
  }

  _updateUserhandler(UpdateUser event, Emitter<AuthState> emit) async {
    if (_firebaseAuth.currentUser != null) {
      final result =
          await _userRepository.getUser(_firebaseAuth.currentUser!.uid);
      result.fold((l) {}, (r) {
        emit(state.copyWith(user: r));
      });
    }
  }

  _forgotPasswordHandler(ForgotPassword event, Emitter<AuthState> emit) async {
    EasyLoading.show();
    await _authRepository.forgotPassword(event.email);
    EasyLoading.showSuccess(
        "Reset Password Link has been sended to ${event.email}");
  }
}
