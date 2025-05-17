// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_database.dart';

// **************************************************************************
// FloorGenerator
// **************************************************************************

abstract class $SearchDatabaseBuilderContract {
  /// Adds migrations to the builder.
  $SearchDatabaseBuilderContract addMigrations(List<Migration> migrations);

  /// Adds a database [Callback] to the builder.
  $SearchDatabaseBuilderContract addCallback(Callback callback);

  /// Creates the database and initializes it.
  Future<SearchDatabase> build();
}

// ignore: avoid_classes_with_only_static_members
class $FloorSearchDatabase {
  /// Creates a database builder for a persistent database.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static $SearchDatabaseBuilderContract databaseBuilder(String name) =>
      _$SearchDatabaseBuilder(name);

  /// Creates a database builder for an in memory database.
  /// Information stored in an in memory database disappears when the process is killed.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static $SearchDatabaseBuilderContract inMemoryDatabaseBuilder() =>
      _$SearchDatabaseBuilder(null);
}

class _$SearchDatabaseBuilder implements $SearchDatabaseBuilderContract {
  _$SearchDatabaseBuilder(this.name);

  final String? name;

  final List<Migration> _migrations = [];

  Callback? _callback;

  @override
  $SearchDatabaseBuilderContract addMigrations(List<Migration> migrations) {
    _migrations.addAll(migrations);
    return this;
  }

  @override
  $SearchDatabaseBuilderContract addCallback(Callback callback) {
    _callback = callback;
    return this;
  }

  @override
  Future<SearchDatabase> build() async {
    final path = name != null
        ? await sqfliteDatabaseFactory.getDatabasePath(name!)
        : ':memory:';
    final database = _$SearchDatabase();
    database.database = await database.open(
      path,
      _migrations,
      _callback,
    );
    return database;
  }
}

class _$SearchDatabase extends SearchDatabase {
  _$SearchDatabase([StreamController<String>? listener]) {
    changeListener = listener ?? StreamController<String>.broadcast();
  }

  SearchDao? _searchDaoInstance;

  Future<sqflite.Database> open(
    String path,
    List<Migration> migrations, [
    Callback? callback,
  ]) async {
    final databaseOptions = sqflite.OpenDatabaseOptions(
      version: 1,
      onConfigure: (database) async {
        await database.execute('PRAGMA foreign_keys = ON');
        await callback?.onConfigure?.call(database);
      },
      onOpen: (database) async {
        await callback?.onOpen?.call(database);
      },
      onUpgrade: (database, startVersion, endVersion) async {
        await MigrationAdapter.runMigrations(
            database, startVersion, endVersion, migrations);

        await callback?.onUpgrade?.call(database, startVersion, endVersion);
      },
      onCreate: (database, version) async {
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `search` (`id` INTEGER, `query` TEXT NOT NULL, PRIMARY KEY (`id`))');

        await callback?.onCreate?.call(database, version);
      },
    );
    return sqfliteDatabaseFactory.openDatabase(path, options: databaseOptions);
  }

  @override
  SearchDao get searchDao {
    return _searchDaoInstance ??= _$SearchDao(database, changeListener);
  }
}

class _$SearchDao extends SearchDao {
  _$SearchDao(
    this.database,
    this.changeListener,
  )   : _queryAdapter = QueryAdapter(database),
        _searchModelInsertionAdapter = InsertionAdapter(
            database,
            'search',
            (SearchModel item) =>
                <String, Object?>{'id': item.id, 'query': item.query});

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<SearchModel> _searchModelInsertionAdapter;

  @override
  Future<List<SearchModel>> getAllSearchQuery(int limit) async {
    return _queryAdapter.queryList(
        'SELECT * FROM search ORDER BY id DESC LIMIT ?1',
        mapper: (Map<String, Object?> row) =>
            SearchModel(id: row['id'] as int?, query: row['query'] as String),
        arguments: [limit]);
  }

  @override
  Future<void> insertSearchQuery(SearchModel query) async {
    await _searchModelInsertionAdapter.insert(query, OnConflictStrategy.abort);
  }
}
