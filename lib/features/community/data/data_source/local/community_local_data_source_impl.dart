import 'package:injectable/injectable.dart';
import 'package:jeka/core/exception.dart';
import 'package:jeka/features/community/data/data_source/local/communirt_local_data_source.dart';
import 'package:jeka/features/community/data/data_source/local/search_database.dart';
import 'package:jeka/features/community/data/models/search_model.dart';

@Singleton(as: CommunityLocalDataSource)
class CommunityLocalDataSourceImpl extends CommunityLocalDataSource {
  final SearchDatabase searchDatabase;
  CommunityLocalDataSourceImpl(this.searchDatabase);
  @override
  Future<void> addRecentSearch(String query) async {
    try {
      await searchDatabase.searchDao
          .insertSearchQuery(SearchModel(query: query));
    } catch (e) {
      throw UnknownError();
    }
  }

  @override
  Future<List<String>> getRecentSearch(int limit) async {
    try {
      final result = await searchDatabase.searchDao.getAllSearchQuery(limit);
      return result.map((e) => e.query).toList();
    } catch (e) {
      throw UnknownError();
    }
  }
}
