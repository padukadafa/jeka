import 'package:floor/floor.dart';

@Entity(tableName: 'Notifications')
class NotificationModel {
  @primaryKey
  final int id;

  final String? title;
  final String? body;
  final DateTime timestamp;

  NotificationModel({
    required this.id,
    this.title,
    this.body,
    required this.timestamp,
  });
}
