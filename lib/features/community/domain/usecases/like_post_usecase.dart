import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:jeka/core/error.dart';
import 'package:jeka/core/usecase.dart';
import 'package:jeka/features/community/domain/repository/community_repository.dart';

@singleton
class LikePostUsecase extends UseCase<Either<Failure,bool>, String> {
  final CommunityRepository _communityRepository;
  LikePostUsecase(this._communityRepository);
  @override
  FutureOr<Either<Failure,bool>> call(String params) {
    return _communityRepository.likePost(params);
  }
}