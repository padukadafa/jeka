import 'dart:io';

import 'package:jeka/features/auth/data/models/user_model.dart';

abstract class UserDataRemote {
  Future<UserModel> getUser(String uid);
  Future<UserModel> updateUser(UserModel user);
  Future<UserModel> updateImageProfile(File image);
}
