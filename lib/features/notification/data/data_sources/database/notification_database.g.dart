// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_database.dart';

// **************************************************************************
// FloorGenerator
// **************************************************************************

abstract class $NotificationDatabaseBuilderContract {
  /// Adds migrations to the builder.
  $NotificationDatabaseBuilderContract addMigrations(
      List<Migration> migrations);

  /// Adds a database [Callback] to the builder.
  $NotificationDatabaseBuilderContract addCallback(Callback callback);

  /// Creates the database and initializes it.
  Future<NotificationDatabase> build();
}

// ignore: avoid_classes_with_only_static_members
class $FloorNotificationDatabase {
  /// Creates a database builder for a persistent database.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static $NotificationDatabaseBuilderContract databaseBuilder(String name) =>
      _$NotificationDatabaseBuilder(name);

  /// Creates a database builder for an in memory database.
  /// Information stored in an in memory database disappears when the process is killed.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static $NotificationDatabaseBuilderContract inMemoryDatabaseBuilder() =>
      _$NotificationDatabaseBuilder(null);
}

class _$NotificationDatabaseBuilder
    implements $NotificationDatabaseBuilderContract {
  _$NotificationDatabaseBuilder(this.name);

  final String? name;

  final List<Migration> _migrations = [];

  Callback? _callback;

  @override
  $NotificationDatabaseBuilderContract addMigrations(
      List<Migration> migrations) {
    _migrations.addAll(migrations);
    return this;
  }

  @override
  $NotificationDatabaseBuilderContract addCallback(Callback callback) {
    _callback = callback;
    return this;
  }

  @override
  Future<NotificationDatabase> build() async {
    final path = name != null
        ? await sqfliteDatabaseFactory.getDatabasePath(name!)
        : ':memory:';
    final database = _$NotificationDatabase();
    database.database = await database.open(
      path,
      _migrations,
      _callback,
    );
    return database;
  }
}

class _$NotificationDatabase extends NotificationDatabase {
  _$NotificationDatabase([StreamController<String>? listener]) {
    changeListener = listener ?? StreamController<String>.broadcast();
  }

  NotificationDao? _notificationDaoInstance;

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
            'CREATE TABLE IF NOT EXISTS `Notifications` (`id` INTEGER NOT NULL, `title` TEXT, `body` TEXT, `timestamp` INTEGER NOT NULL, PRIMARY KEY (`id`))');

        await callback?.onCreate?.call(database, version);
      },
    );
    return sqfliteDatabaseFactory.openDatabase(path, options: databaseOptions);
  }

  @override
  NotificationDao get notificationDao {
    return _notificationDaoInstance ??=
        _$NotificationDao(database, changeListener);
  }
}

class _$NotificationDao extends NotificationDao {
  _$NotificationDao(
    this.database,
    this.changeListener,
  )   : _queryAdapter = QueryAdapter(database),
        _notificationModelInsertionAdapter = InsertionAdapter(
            database,
            'Notifications',
            (NotificationModel item) => <String, Object?>{
                  'id': item.id,
                  'title': item.title,
                  'body': item.body,
                  'timestamp': _dateTimeConverter.encode(item.timestamp)
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<NotificationModel> _notificationModelInsertionAdapter;

  @override
  Future<List<NotificationModel>> getAllNotifications() async {
    return _queryAdapter.queryList(
        'SELECT * FROM Notifications ORDER BY timestamp DESC',
        mapper: (Map<String, Object?> row) => NotificationModel(
            id: row['id'] as int,
            title: row['title'] as String?,
            body: row['body'] as String?,
            timestamp: _dateTimeConverter.decode(row['timestamp'] as int)));
  }

  @override
  Future<void> clearAll() async {
    await _queryAdapter.queryNoReturn('DELETE FROM Notifications');
  }

  @override
  Future<void> insertNotification(NotificationModel notification) async {
    await _notificationModelInsertionAdapter.insert(
        notification, OnConflictStrategy.abort);
  }
}

// ignore_for_file: unused_element
final _dateTimeConverter = DateTimeConverter();
