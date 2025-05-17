import 'dart:async';

import 'package:floor/floor.dart';
import 'package:jeka/features/community/data/data_source/local/DAO/search_dao.dart';
import 'package:jeka/features/community/data/models/search_model.dart';
import 'package:sqflite/sqflite.dart' as sqflite;
part 'search_database.g.dart';

@Database(version: 1, entities: [SearchModel])
abstract class SearchDatabase extends FloorDatabase {
  SearchDao get searchDao;
}
