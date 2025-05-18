import 'dart:io';

import 'package:jeka/features/community/data/models/community.dart';
import 'package:jeka/features/community/data/models/event.dart';
import 'package:jeka/features/community/data/models/post.dart';

abstract class CommunityRemoteDataSource {
  Future<String> updateLogo(File image);
  Future<Community> createCommunity(Community community, File logo);
  Future<void> addCommunities(String communityId);
  Future<void> leaveCommunity(String communityId);
  Future<List<Community>> getCommunities();
  Future<Community> getCommunity(String communityId);
  Future<List<Community>> getNewCommunities(int limit);
  Future<List<Community>> searchCommunityByType(String type);
  Future<List<Community>> searchCommunity(String params);
  Future<List<Post>> getPosts(String communityId);
  Future<Post> createPost(Post post, List<File> files);
  Future<bool> deletePost(String postId);
  Future<bool> reportPost(String postId);
  Future<List<PostComment>> getPostComments(String postId);
  Future<PostComment> createPostComments(String postId, PostComment comment);
  Future<List<Event>> getPublicEvents();
  Future<List<Event>> getCommunityEvents(String communityId, {int? limit});
  Future<Event> createEvent(Event event);
  Future<bool> deleteEvent(String eventId);
  Future<bool> joinEvent(String eventId);
  Future<bool> inviteCollaboration(String communityId);
  Future<bool> responseCollaboration(String communityId, bool response);
  Future<void> likePost(String postId);
  Future<List<CommunityMember>> getCommunityMembers(String communityId);
}
