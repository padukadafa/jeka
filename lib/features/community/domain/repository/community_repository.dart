import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:jeka/core/error.dart';
import 'package:jeka/features/community/data/models/community.dart';
import 'package:jeka/features/community/data/models/post.dart';

abstract class CommunityRepository {
  Future<Either<Failure, Community>> createCommunity(
      Community community, File logo);
  Future<Either<Failure, bool>> addCommunities(String communityId);
  Future<Either<Failure, bool>> leaveCommunity(String communityId);
  Future<Either<Failure, List<Community>>> getCommunity();
  Future<Either<Failure, List<CommunityMember>>> getCommunityMembers(String communityId);
  
  Future<Either<Failure, List<Community>>> getNewCommunities(int limit);
  Future<Either<Failure, List<Community>>> searchCommunity(String params);
  Future<Either<Failure, List<Community>>> searchCommunityByType(String type);
  Future<Either<Failure, Post>> createPost(Post post, List<File> files);
  Future<Either<Failure, PostComment>> createPostComment(
      String postId, PostComment comment);
  Future<Either<Failure, bool>> likePost(String postId);
}
