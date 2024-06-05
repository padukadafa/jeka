import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:jeka/core/exception.dart';
import 'package:jeka/features/auth/data/data_source/remote/user_data_remote.dart';
import 'package:jeka/features/auth/data/models/user_model.dart';

@Singleton(as: UserDataRemote)
class UserDataRemoteImpl extends UserDataRemote {
  final FirebaseFirestore _firebaseFirestore;
  final FirebaseMessaging _firebaseMessaging;
  UserDataRemoteImpl(this._firebaseFirestore, this._firebaseMessaging);
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
      await _firebaseFirestore
          .collection("users")
          .doc(user.uid)
          .set(user.copyWith(fcmToken: token).toJson());
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
}
