import 'package:floor/floor.dart';
import 'package:jeka/features/notification/data/models/notification.dart';

@dao
abstract class NotificationDao {
  @Query('SELECT * FROM Notifications ORDER BY timestamp DESC')
  Future<List<NotificationModel>> getAllNotifications();

  @insert
  Future<void> insertNotification(NotificationModel notification);

  @Query('DELETE FROM Notifications')
  Future<void> clearAll();
}
