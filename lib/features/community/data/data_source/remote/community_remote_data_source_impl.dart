import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:jeka/core/exception.dart';
import 'package:jeka/features/community/data/data_source/remote/community_remote_data_source.dart';
import 'package:jeka/features/community/data/models/community.dart';
import 'package:jeka/features/community/data/models/event.dart';
import 'package:jeka/features/community/data/models/post.dart';
import 'package:jeka/utils/uploud_service.dart';
import 'package:path/path.dart';

@Singleton(as: CommunityRemoteDataSource)
class CommunityRemoteDataSourceImpl extends CommunityRemoteDataSource {
  final FirebaseFirestore _firestore;
  final UploadService _uploadService;
  final FirebaseAuth _auth;
  CommunityRemoteDataSourceImpl(
      this._firestore, this._uploadService, this._auth);
  @override
  Future<Community> createCommunity(Community community, File logo) async {
    try {
      community = community.copyWith(createdAt: DateTime.now());
      final response =
          await _firestore.collection("communities").add(community.toJson());
      final logoResponse = await _uploadService.uploadFile(logo,
          "/communities/${response.id}/images/logo.${logo.path.split("/").last.split(".").last}");
      await _firestore.collection("communities").doc(response.id).set({
        "logo": logoResponse,
        "id": response.id,
      }, SetOptions(merge: true));
      await addCommunities(response.id);
      return community.copyWith(id: response.id, logo: logoResponse);
    } catch (e) {
      debugPrint(e.toString());
      throw UnknownError();
    }
  }

  @override
  Future<String> updateLogo(File image) {
    // TODO: implement updateLogo
    throw UnimplementedError();
  }

  @override
  Future<void> addCommunities(String communityId) async {
    try {
      await _firestore.collection("communities").doc(communityId).update({
        "members": FieldValue.arrayUnion([
          {
            "userId": _auth.currentUser?.uid,
            "name": _auth.currentUser?.displayName,
            "role": "member",
            "joined_at": DateTime.now(),
          },
        ]),
        "membersId": FieldValue.arrayUnion([_auth.currentUser?.uid]),
      });
    } catch (e) {
      throw UnknownError();
    }
  }

  @override
  Future<List<Community>> getCommunities() async {
    try {
      final response = await _firestore
          .collection("communities")
          .where("membersId", arrayContains: _auth.currentUser?.uid)
          .get();
      final result =
          response.docs.map((data) => Community.fromJson(data.data())).toList();
      return result;
    } catch (e) {
      throw UnknownError();
    }
  }

  @override
  Future<List<Community>> getNewCommunities(int limit) async {
    try {
      final response = await _firestore
          .collection('communities')
          .orderBy('createdAt', descending: true)
          .limit(limit)
          .get();
      final result =
          response.docs.map((data) => Community.fromJson(data.data())).toList();
      return result;
    } catch (e) {
      throw UnknownError();
    }
  }

  @override
  Future<List<Community>> searchCommunity(String params) async {
    try {
      final response = await _firestore
          .collection('communities')
          .where('name', isGreaterThanOrEqualTo: params)
          .get();
      final result =
          response.docs.map((data) => Community.fromJson(data.data())).toList();
      return result;
    } catch (e) {
      throw UnknownError();
    }
  }

  @override
  Future<List<Community>> searchCommunityByType(String type) async {
    try {
      final response = await _firestore
          .collection('communities')
          .where('types', arrayContains: type)
          .get();
      final result =
          response.docs.map((data) => Community.fromJson(data.data())).toList();
      return result;
    } catch (e) {
      throw UnknownError();
    }
  }

  @override
  Future<Event> createEvent(Event event) async {
    try {
      final response =
          await _firestore.collection("events").add(event.toJson());
      await _firestore
          .collection('events')
          .doc(response.id)
          .update({"id": response.id});
      return event;
    } catch (e) {
      throw UnknownError();
    }
  }

  @override
  Future<Post> createPost(Post post, List<File> files) async {
    try {
      final response = await _firestore.collection("posts").add(post.toJson());

      await _firestore
          .collection('posts')
          .doc(response.id)
          .update({"id": response.id});
      List<Map<String, dynamic>> fileLink = [];
      for (File file in files) {
        final link = await _uploadService.uploadFile(file,
            "communities/${post.communityId}/posts/${response.id}/files/${basename(file.path)}");
        fileLink.add(PostFile(
                fileLocation: link,
                fileType: extension(file.path).replaceFirst(".", ""),
                name: basename(file.path),
                fileSizeString: filesize(file.lengthSync()))
            .toJson());
      }
      await _firestore
          .collection("posts")
          .doc(response.id)
          .update({"files": fileLink});
      return post;
    } catch (e) {
      throw UnknownError();
    }
  }

  @override
  Future<bool> deleteEvent(String eventId) async {
    try {
      await _firestore.collection("events").doc(eventId).delete();
      return true;
    } catch (e) {
      throw UnknownError();
    }
  }

  @override
  Future<bool> deletePost(String postId) async {
    try {
      await _firestore.collection("posts").doc(postId).delete();
      return true;
    } catch (e) {
      throw UnknownError();
    }
  }

  @override
  Future<List<Event>> getCommunityEvents(String communityId,
      {int? limit}) async {
    try {
      if (limit != null) {
        final response = await _firestore
            .collection('events')
            .where('communityId', isEqualTo: communityId)
            .limit(limit)
            .get();
        final result =
            response.docs.map((data) => Event.fromJson(data.data())).toList();
        return result;
      }
      final response = await _firestore
          .collection('events')
          .where('communityId', isEqualTo: communityId)
          .get();
      final result =
          response.docs.map((data) => Event.fromJson(data.data())).toList();
      return result;
    } catch (e) {
      throw UnknownError();
    }
  }

  @override
  Future<List<Post>> getPosts(String communityId) async {
    try {
      final response = await _firestore
          .collection('posts')
          .where('communityId', isEqualTo: communityId)
          .get();
      final result =
          response.docs.map((data) => Post.fromJson(data.data())).toList();
      return result;
    } catch (e) {
      throw UnknownError();
    }
  }

  @override
  Future<List<Event>> getPublicEvents() async {
    try {
      final response = await _firestore
          .collection('events')
          .where('eventVisibility', isEqualTo: 'public')
          .get();
      final result =
          response.docs.map((data) => Event.fromJson(data.data())).toList();
      return result;
    } catch (e) {
      throw UnknownError();
    }
  }

  @override
  Future<bool> inviteCollaboration(String communityId) {
    // TODO: implement inviteCollaboration
    throw UnimplementedError();
  }

  @override
  Future<bool> joinEvent(String eventId,
      {String? communityId, String? communityName}) async {
    try {
      await _firestore
          .collection("events")
          .doc(eventId)
          .collection("participants")
          .add(EventParticipant(
            communityId: communityId,
            communityName: communityName,
            name: _auth.currentUser?.displayName,
            userId: _auth.currentUser?.uid,
          ).toJson());
      await _firestore.collection('events').doc(eventId).update({
        "participantsId": FieldValue.arrayUnion([_auth.currentUser?.uid])
      });
      return true;
    } catch (e) {
      throw UnknownError();
    }
  }

  @override
  Future<bool> reportPost(String postId) {
    // TODO: implement reportPost
    throw UnimplementedError();
  }

  @override
  Future<bool> responseCollaboration(String communityId, bool response) {
    // TODO: implement responseCollaboration
    throw UnimplementedError();
  }

  String filesize(int bytes) {
    if (bytes > 1024 * 1024 * 1024) {
      return "${(bytes / (1024 * 1024 * 1024)).toStringAsFixed(2)} GB";
    }
    if (bytes > 1024 * 1024) {
      return "${(bytes / (1024 * 1024)).toStringAsFixed(2)} MB";
    }
    if (bytes > 1024) {
      return "${(bytes / 1024).toStringAsFixed(2)} KB";
    }
    return "$bytes B";
  }

  @override
  Future<Community> getCommunity(String communityId) async {
    try {
      final response =
          await _firestore.collection('communities').doc(communityId).get();
      if (response.exists) {
        return Community.fromJson(response.data()!);
      }
      throw ServerError("Community not found");
    } catch (e) {
      throw UnknownError();
    }
  }

  @override
  Future<void> leaveCommunity(String communityId) async {
    try {
      await _firestore.collection('communities').doc(communityId).update({
        "membersId": FieldValue.arrayRemove([_auth.currentUser?.uid])
      });
    } catch (e) {
      throw UnknownError();
    }
  }

  @override
  Future<List<PostComment>> getPostComments(String postId) async {
    throw UnimplementedError();
  }

  @override
  Future<PostComment> createPostComments(
      String postId, PostComment comment) async {
    try {
      comment = comment.copyWith(
          writer: _auth.currentUser?.displayName,
          writerId: _auth.currentUser?.uid);
      await _firestore.collection('posts').doc(postId).update({
        "comments": FieldValue.arrayUnion([comment.toJson()])
      });
      return comment;
    } catch (e) {
      print(e);
      throw UnknownError();
    }
  }
  
  @override
  Future<void> likePost(String postId) async {
    try {
      await _firestore.collection('posts').doc(postId).update({
        "likes": FieldValue.arrayUnion([_auth.currentUser?.uid])
      });
      await _firestore
          .collection('posts')
          .doc(postId)
          .update({"likesCount": FieldValue.increment(1)});
    } catch (e) {
      print(e);
      throw UnknownError();
    }
  }
  
  @override
  Future<List<CommunityMember>> getCommunityMembers(String communityId) async {
try {
    return await _firestore.collection('communities').doc(communityId).get().then((value) {
      if (value.exists) {
        final members = value.data()?['members'] as List<dynamic>;
        return members
            .map((member) => CommunityMember.fromJson(member))
            .toList();
      } else {
        throw ServerError("Community not found");
      }
    });
    } catch (e) {
      print(e);
      throw UnknownError();
    }  }
}
