class UnknownError implements Exception {}

class ServerError implements Exception {
  final String message;
  ServerError(this.message);
}

class CacheError implements Exception {}

class AuthError implements Exception {
  final String message;
  AuthError(this.message);
}

class GoogleSigninAborted implements Exception {}

class UserNotFoundError implements Exception {}
