import 'package:dartz/dartz.dart';
import 'package:jeka/core/error.dart';
import 'package:jeka/features/auth/data/models/user_model.dart';

abstract class UserRepository {
  Future<Either<Failure, UserModel>> updateUser(UserModel user);
  Future<Either<Failure, UserModel>> updatePhotoprofile();
  Future<Either<Failure, UserModel>> getUser(String uid);
}
