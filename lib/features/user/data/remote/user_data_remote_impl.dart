import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:jeka/core/exception.dart';
import 'package:jeka/features/user/data/remote/user_data_remote.dart';
import 'package:jeka/features/auth/data/models/user_model.dart';
import 'package:jeka/utils/uploud_service.dart';

@Singleton(as: UserDataRemote)
class UserDataRemoteImpl extends UserDataRemote {
  final FirebaseFirestore _firebaseFirestore;
  final FirebaseMessaging _firebaseMessaging;
  final FirebaseAuth _auth;
  final UploadService _uploadService;
  UserDataRemoteImpl(
    this._firebaseFirestore,
    this._firebaseMessaging,
    this._auth,
    this._uploadService,
  );
  @override
  Future<UserModel> getUser(String uid) async {
    try {
      final response =
          await _firebaseFirestore.collection("users").doc(uid).get();
      if (!response.exists) {
        throw UserNotFoundError();
      }
      return UserModel.fromJson(response.data()!);
    } on FirebaseException {
      throw ServerError("Server error");
    } catch (e) {
      if (e is UserNotFoundError) {
        rethrow;
      }
      debugPrint(e.toString());
      throw UnknownError();
    }
  }

  @override
  Future<UserModel> updateUser(UserModel user) async {
    try {
      final token = await getToken();
      await _firebaseFirestore.collection("users").doc(user.uid).set(
            user.copyWith(fcmToken: token).toJson(),
            SetOptions(merge: true),
          );
      return user.copyWith(fcmToken: token);
    } on FirebaseException {
      throw ServerError("Server error");
    } catch (e) {
      throw UnknownError();
    }
  }

  Future<String?> getToken() async {
    return await _firebaseMessaging.getToken();
  }

  @override
  Future<UserModel> updateImageProfile(File image) async {
    try {
      final uid = _auth.currentUser?.uid;
      print("remote data : ${image.path}");
      if (uid != null) {
        final user = await getUser(uid);
        final response = await _uploadService.uploadFile(image,
            "/images/users/$uid.${image.path.split("/").last.split(".").last}");
        await updateUser(user.copyWith(imageProfileUrl: response));
        return user.copyWith(imageProfileUrl: response);
      }
      throw ServerError("Failed to uploud image");
    } catch (e) {
      throw ServerError("Failed to uploud image");
    }
  }
}
