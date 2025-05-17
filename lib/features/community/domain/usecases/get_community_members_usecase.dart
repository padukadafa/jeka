import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:jeka/core/error.dart';
import 'package:jeka/core/usecase.dart';
import 'package:jeka/features/community/data/models/community.dart';
import 'package:jeka/features/community/domain/repository/community_repository.dart';

@singleton
class GetCommunityMembersUsecase extends UseCase<Either<Failure,List<CommunityMember>>,String> {
  final CommunityRepository _repository;
  GetCommunityMembersUsecase(this._repository);
  @override
  FutureOr<Either<Failure, List<CommunityMember>>> call(String communityId) {
    return _repository.getCommunityMembers(communityId);
  }
}