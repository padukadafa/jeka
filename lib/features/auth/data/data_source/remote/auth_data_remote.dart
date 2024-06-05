import 'package:jeka/features/auth/data/models/user_model.dart';

abstract class AuthDataRemote {
  Future<UserModel> loginWithEmailAndPassword(String email, String password);
  Future<UserModel> loginWithGoogle();
  Future<UserModel> loginWithFacebook();
  Future<UserModel> register(String name, String email, String password);
  Future<void> forgotPassword(String email);
  Future<void> logout();
}
