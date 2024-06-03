abstract class Error {
  final String message;
  const Error(this.message);
}

class ServerError extends Error {
  const ServerError(super.message);
}

class CacheError extends Error {
  const CacheError(super.message);
}

class UnknownError extends Error {
  const UnknownError() : super("Something went wrong!");
}
