import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:jeka/core/exception.dart';
import 'package:jeka/features/auth/data/data_source/remote/auth_data_remote.dart';
import 'package:jeka/features/user/data/remote/user_data_remote.dart';
import 'package:jeka/features/auth/data/models/user_model.dart';

@Singleton(as: AuthDataRemote)
class AuthDataRemoteImpl extends AuthDataRemote {
  final UserDataRemote _userDataRemote;
  final FirebaseAuth _auth;
  final GoogleSignIn _googleSignIn;
  AuthDataRemoteImpl(this._auth, this._userDataRemote, this._googleSignIn);
  @override
  Future<UserModel> loginWithEmailAndPassword(
      String email, String password) async {
    try {
      final authResponse = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      if (authResponse.user?.uid != null) {
        final userResponse =
            await _userDataRemote.getUser(authResponse.user!.uid);
        return userResponse;
      } else {
        throw AuthError("Something went wrong while getting user info");
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == "wrong-password" || e.code == "user-not-found") {
        throw AuthError("Password or Email doesn't match!");
      }
    } catch (e) {
      if (e is ServerError) {
        throw ServerError("Server Error");
      }
      debugPrint(e.toString());
      throw UnknownError();
    }
    throw UnknownError();
  }

  @override
  Future<UserModel> loginWithFacebook() {
    throw UnimplementedError();
  }

  @override
  Future<UserModel> loginWithGoogle() async {
    UserCredential? credential;
    try {
      await _googleSignIn.signOut();
      final googleSignInAccount = await _googleSignIn.signIn();
      if (googleSignInAccount == null) {
        throw GoogleSigninAborted();
      }
      final googleSignInAuthentication =
          await googleSignInAccount.authentication;
      final googleAuthCredential = GoogleAuthProvider.credential(
          accessToken: googleSignInAuthentication.accessToken,
          idToken: googleSignInAuthentication.idToken);
      final authResponse =
          await _auth.signInWithCredential(googleAuthCredential);
      if (authResponse.user?.uid != null) {
        credential = authResponse;
        final result = await _userDataRemote.getUser(authResponse.user!.uid);
        return result;
      } else {
        throw AuthError("Something went wrong while getting user info");
      }
    } on FirebaseException catch (e) {
      if (e.code == "email-already-in-use") {
        throw AuthError("Email already in use");
      }
      if (e.code == "account-exists-with-different-credential") {
        throw AuthError("Email already in use");
      }
      if (e.code == "invalid-credential") {
        throw AuthError("Invalid Login");
      }
      throw ServerError("Can't create user");
    } on UserNotFoundError {
      if (credential != null) {
        final user = UserModel(
          uid: credential.user!.uid,
          createdAt: DateTime.now(),
          email: credential.user?.email,
          name: credential.user?.displayName,
        );
        final response = await _userDataRemote.updateUser(user);
        return response;
      } else {
        throw UnknownError();
      }
    } catch (e) {
      if (e is GoogleSigninAborted) {
        rethrow;
      }
      if (e is AuthError) {
        rethrow;
      }
      throw UnknownError();
    }
  }

  @override
  Future<UserModel> register(String name, String email, String password) async {
    try {
      final credential = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      credential.user?.updateDisplayName(name);
      final user = UserModel(
        uid: credential.user!.uid,
        createdAt: DateTime.now(),
        email: email,
        name: name,
      );
      await _userDataRemote.updateUser(user);
      return user;
    } on FirebaseAuthException catch (e) {
      if (e.code == "email-already-in-use") {
        throw AuthError("Email already in use");
      }
      if (e.code == "weak-password") {
        throw AuthError("Passwort too weak");
      }
      throw UnknownError();
    }
  }

  @override
  Future<void> logout() async {
    await _auth.signOut();
    await _googleSignIn.signOut();
  }

  @override
  Future<void> forgotPassword(String email) async {
    try {
      await _auth.sendPasswordResetEmail(email: email);
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
