import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:jeka/core/error.dart';
import 'package:jeka/core/exception.dart';
import 'package:jeka/features/auth/data/data_source/remote/auth_data_remote.dart';
import 'package:jeka/features/auth/data/models/user_model.dart';
import 'package:jeka/features/auth/data/repository/auth_repository.dart';

@Singleton(as: AuthRepository)
class AuthRepositoryImpl extends AuthRepository {
  final AuthDataRemote _authDataRemote;
  AuthRepositoryImpl(this._authDataRemote);
  @override
  Future<Either<Failure, UserModel>> loginWithEmailAndPassword(
      String email, String password) async {
    try {
      final result =
          await _authDataRemote.loginWithEmailAndPassword(email, password);
      return Right(result);
    } on ServerError catch (e) {
      return Left(ServerFailure(e.message));
    } on AuthError catch (e) {
      return Left(AuthFailure(e.message));
    } catch (e) {
      return const Left(UnknownFailure());
    }
  }

  @override
  Future<Either<Failure, UserModel>> loginWithFacebook() {
    // TODO: implement loginWithFacebook
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, UserModel>> loginWithGoogle() async {
    try {
      final result = await _authDataRemote.loginWithGoogle();
      return Right(result);
    } on ServerError catch (e) {
      return Left(ServerFailure(e.message));
    } on AuthError catch (e) {
      return Left(AuthFailure(e.message));
    } on GoogleSigninAborted {
      return Left(AbortedFailure());
    } catch (e) {
      debugPrint(e.toString());
      return const Left(UnknownFailure());
    }
  }

  @override
  Future<Either<Failure, UserModel>> register(
      String name, String email, String password) async {
    try {
      final result = await _authDataRemote.register(name, email, password);
      return Right(result);
    } on ServerError catch (e) {
      return Left(ServerFailure(e.message));
    } on AuthError catch (e) {
      return Left(AuthFailure(e.message));
    } catch (e) {
      return const Left(UnknownFailure());
    }
  }

  @override
  Future<void> logout() async {
    await _authDataRemote.logout();
  }

  @override
  Future<void> forgotPassword(String email) async {
    await _authDataRemote.forgotPassword(email);
  }
}
