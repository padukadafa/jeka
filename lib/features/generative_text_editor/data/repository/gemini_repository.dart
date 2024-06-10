import 'package:dartz/dartz.dart';
import 'package:jeka/core/error.dart';

abstract class GeminiRepository {
  Future<Either<Failure, String>> generateText(String prompt);
}
