import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:jeka/di.dart';
import 'package:jeka/features/notification/data/data_sources/database/notification_database.dart';
import 'package:jeka/firebase_options.dart';
import 'package:jeka/services/notification_service.dart';

Future<void> init() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await configureDependencies();

  FlutterNativeSplash.remove();

  await NotificationService.initialize(getIt<NotificationDatabase>());
}
