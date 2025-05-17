import 'package:floor/floor.dart';

@Entity(tableName: 'search', primaryKeys: ['id'])
class SearchModel {
  @PrimaryKey(autoGenerate: true)
  int? id;
  final String query;
  SearchModel({this.id, required this.query});
}
