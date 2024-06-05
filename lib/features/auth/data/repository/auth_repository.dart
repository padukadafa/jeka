import 'package:dartz/dartz.dart';
import 'package:jeka/core/error.dart';
import 'package:jeka/features/auth/data/models/user_model.dart';

abstract class AuthRepository {
  Future<Either<Failure, UserModel>> loginWithEmailAndPassword(
      String email, String password);
  Future<Either<Failure, UserModel>> loginWithGoogle();
  Future<Either<Failure, UserModel>> loginWithFacebook();
  Future<void> forgotPassword(String email);
  Future<Either<Failure, UserModel>> register(
      String name, String email, String password);
  Future<void> logout();
}
