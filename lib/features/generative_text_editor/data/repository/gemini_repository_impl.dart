import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:jeka/core/error.dart';
import 'package:jeka/features/generative_text_editor/data/data_source/gemini_remote_data_source.dart';
import 'package:jeka/features/generative_text_editor/data/repository/gemini_repository.dart';

@Singleton(as: GeminiRepository)
class GeminiRepositoryImpl extends GeminiRepository {
  final GeminiRemoteDataSource _dataSource;
  GeminiRepositoryImpl(this._dataSource);
  @override
  Future<Either<Failure, String>> generateText(String prompt) async {
    try {
      final result = await _dataSource.generateText(
          "$prompt, max 1500 character and do not show the character count");
      return Right(result);
    } on ServerFailure catch (e) {
      return Left(ServerFailure(e.message));
    } catch (e) {
      return const Left(UnknownFailure());
    }
  }
}
