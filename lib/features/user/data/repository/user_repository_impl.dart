import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:jeka/core/error.dart';
import 'package:jeka/core/exception.dart';
import 'package:jeka/features/auth/data/models/user_model.dart';
import 'package:jeka/features/user/data/remote/user_data_remote.dart';
import 'package:jeka/features/user/data/repository/user_repository.dart';

@Injectable(as: UserRepository)
class UserRepositoryImpl extends UserRepository {
  final UserDataRemote _userDataRemote;
  UserRepositoryImpl(this._userDataRemote);
  @override
  Future<Either<Failure, UserModel>> updatePhotoprofile() async {
    try {
      final ImagePicker picker = ImagePicker();
      final XFile? response =
          await picker.pickImage(source: ImageSource.gallery);
      if (response == null) {
        return Left(AbortedFailure());
      }
      final result =
          await _userDataRemote.updateImageProfile(File(response.path));
      return Right(result);
    } on ServerError {
      return const Left(ServerFailure("Failed to update photo profile"));
    } catch (e) {
      return const Left(UnknownFailure());
    }
  }

  @override
  Future<Either<Failure, UserModel>> updateUser(UserModel user) async {
    try {
      final result = await _userDataRemote.updateUser(user);
      return Right(result);
    } on ServerError {
      return const Left(ServerFailure("Failed to update user"));
    } catch (e) {
      return const Left(UnknownFailure());
    }
  }

  @override
  Future<Either<Failure, UserModel>> getUser(String uid) async {
    try {
      final result = await _userDataRemote.getUser(uid);
      return Right(result);
    } on ServerError {
      return const Left(ServerFailure("Failed to get user"));
    } catch (e) {
      return const Left(UnknownFailure());
    }
  }
}
