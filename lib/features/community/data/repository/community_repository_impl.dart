import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:jeka/core/error.dart';
import 'package:jeka/features/community/data/data_source/remote/community_remote_data_source.dart';
import 'package:jeka/features/community/data/models/community.dart';
import 'package:jeka/features/community/data/models/post.dart';
import 'package:jeka/features/community/domain/repository/community_repository.dart';

@Singleton(as: CommunityRepository)
class CommunityRepositoryImpl extends CommunityRepository {
  final CommunityRemoteDataSource _dataSource;
  CommunityRepositoryImpl(this._dataSource);
  @override
  Future<Either<Failure, Community>> createCommunity(
      Community community, File logo) async {
    try {
      final response = await _dataSource.createCommunity(community, logo);
      return Right(response);
    } catch (e) {
      return const Left(UnknownFailure());
    }
  }

  @override
  Future<Either<Failure, bool>> addCommunities(String communityId) async {
    try {
      await _dataSource.addCommunities(communityId);
      return const Right(true);
    } catch (e) {
      return const Left(UnknownFailure());
    }
  }

  @override
  Future<Either<Failure, List<Community>>> getCommunity() async {
    try {
      final response = await _dataSource.getCommunities();
      return Right(response);
    } catch (e) {
      return const Left(UnknownFailure());
    }
  }

  @override
  Future<Either<Failure, List<Community>>> getNewCommunities(int limit) async {
    try {
      final response = await _dataSource.getNewCommunities(limit);
      return Right(response);
    } catch (e) {
      return const Left(UnknownFailure());
    }
  }

  @override
  Future<Either<Failure, List<Community>>> searchCommunity(
      String params) async {
    try {
      final response = await _dataSource.searchCommunity(params);
      return Right(response);
    } catch (e) {
      return const Left(UnknownFailure());
    }
  }

  @override
  Future<Either<Failure, List<Community>>> searchCommunityByType(
      String type) async {
    try {
      final response = await _dataSource.searchCommunity(type);
      return Right(response);
    } catch (e) {
      return const Left(UnknownFailure());
    }
  }

  @override
  Future<Either<Failure, Post>> createPost(Post post, List<File> files) async {
    try {
      final response = await _dataSource.createPost(post, files);

      return Right(response);
    } catch (e) {
      return const Left(UnknownFailure());
    }
  }

  @override
  Future<Either<Failure, bool>> leaveCommunity(String communityId) async {
    try {
      await _dataSource.leaveCommunity(communityId);
      return const Right(true);
    } catch (e) {
      return const Left(UnknownFailure());
    }
  }

  @override
  Future<Either<Failure, PostComment>> createPostComment(
      String postId, PostComment comment) async {
    try {
      final response = await _dataSource.createPostComments(postId, comment);
      return Right(response);
    } catch (e) {
      return const Left(UnknownFailure());
    }
  }
  
  @override
  Future<Either<Failure, bool>> likePost(String postId) async {
    try {
      await _dataSource.likePost(postId);
      return Right(true);
    } catch (e) {
      return const Left(UnknownFailure());
    }
  }
  
  @override
  Future<Either<Failure, List<CommunityMember>>> getCommunityMembers(String communityId) async {
try {
      final result= await _dataSource.getCommunityMembers(communityId);
      return Right(result);
    } catch (e) {
      return const Left(UnknownFailure());
    }  }
}
