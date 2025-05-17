import 'dart:async';
import 'package:floor/floor.dart';
import 'package:jeka/features/notification/data/data_sources/database/type_converters.dart';
import 'package:jeka/features/notification/data/models/notification.dart';
import 'notification_dao.dart';
import 'package:sqflite/sqflite.dart' as sqflite;
part 'notification_database.g.dart';

@TypeConverters([
  DateTimeConverter,
])
@Database(version: 1, entities: [NotificationModel])
abstract class NotificationDatabase extends FloorDatabase {
  NotificationDao get notificationDao;
}
