import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:injectable/injectable.dart';
import 'package:jeka/core/constants.dart';
import 'package:jeka/features/generative_text_editor/data/data_source/gemini_remote_data_source.dart';

@Singleton(as: GeminiRemoteDataSource)
class GeminiRemoteDataSourceImpl extends GeminiRemoteDataSource {
  @override
  Future<String> generateText(String prompt) async {
    try {
      final model = GenerativeModel(
        model: 'gemini-1.5-flash-latest',
        apiKey: AppConstants.GEMINI_API_KEY,
      );
      final response = await model.generateContent([Content.text(prompt)]);
      return response.text ?? "Something went wrong!";
    } on GenerativeAIException catch (e) {
      throw ServerException(e.message);
    } catch (e) {
      throw ServerException("Server Error");
    }
  }
}
