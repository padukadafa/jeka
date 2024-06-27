import 'package:floor/floor.dart';
import 'package:jeka/features/community/data/models/search_model.dart';

@dao
abstract class SearchDao {
  @insert
  Future<void> insertSearchQuery(SearchModel query);
  @Query('SELECT * FROM search ORDER BY id DESC LIMIT :limit')
  Future<List<SearchModel>> getAllSearchQuery(int limit);
}
