import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:jeka/core/constants.dart';
import 'package:jeka/di.dart';
import 'package:jeka/features/notification/data/data_sources/database/notification_database.dart';
import 'package:jeka/features/notification/data/models/notification.dart';
import 'package:shared_preferences/shared_preferences.dart';

class NotificationService {
  static final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  static late NotificationDatabase database;

  static Future<void> initialize(NotificationDatabase dbInstance) async {
    database = dbInstance;

    const androidSettings =
        AndroidInitializationSettings('@mipmap/ic_launcher');
    const initSettings = InitializationSettings(android: androidSettings);

    await flutterLocalNotificationsPlugin.initialize(initSettings);

    await FirebaseMessaging.instance.requestPermission();

    FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

    FirebaseMessaging.onMessage.listen((RemoteMessage message) async {
      final notification = message.notification;
      final android = message.notification?.android;
      final isNotificationEnable = getIt<SharedPreferences>()
              .getBool(AppConstants.IS_SHOW_NOTIFICATION) ??
          true;

      if (notification != null && android != null && isNotificationEnable) {
        // Tampilkan notifikasi
        flutterLocalNotificationsPlugin.show(
          notification.hashCode,
          notification.title,
          notification.body,
          const NotificationDetails(
            android: AndroidNotificationDetails(
              'channel_id',
              'Notifikasi',
              importance: Importance.max,
              priority: Priority.high,
            ),
          ),
        );

        // Simpan ke database
        final appNotification = NotificationModel(
          id: DateTime.now().millisecondsSinceEpoch,
          title: notification.title,
          body: notification.body,
          timestamp: DateTime.now(),
        );
        await database.notificationDao.insertNotification(appNotification);
      }
    });
  }

  static Future<String?> getToken() async {
    return FirebaseMessaging.instance.getToken();
  }
}

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  final notification = message.notification;
  final android = message.notification?.android;

  final database = await $FloorNotificationDatabase
      .databaseBuilder('notifications_database.db')
      .build();
  final sharedPreferences = await SharedPreferences.getInstance();
  final isNotificationEnable =
      sharedPreferences.getBool(AppConstants.IS_SHOW_NOTIFICATION) ?? true;
  if (notification != null && android != null && isNotificationEnable) {
    // Simpan ke database
    final appNotification = NotificationModel(
      id: DateTime.now().millisecondsSinceEpoch,
      title: notification.title,
      body: notification.body,
      timestamp: DateTime.now(),
    );
    await database.notificationDao.insertNotification(appNotification);
  }
  print('Handling background message: ${message.messageId}');
}
