import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'dart:math';

import 'package:home_x/core/util/app_assets.dart';

class LocalNotification {
  // setup
  static FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();
  static action(NotificationResponse notificationResponse) {}
  static Future init() async {
    // Initialization settings for Android and iOS
    InitializationSettings initializationSettings =
        const InitializationSettings(
      android: AndroidInitializationSettings('@mipmap/ic_launcher'),
      iOS: DarwinInitializationSettings(),
    );

    // Initializing the FlutterLocalNotificationsPlugin
    await FlutterLocalNotificationsPlugin().initialize(
      initializationSettings,
      onDidReceiveNotificationResponse: action,
      onDidReceiveBackgroundNotificationResponse: action,
    );
  }

  static void basicNotification(String title, String body) async {
    // Notification details for Android
    final int notificationId = Random().nextInt(100000);
    NotificationDetails notificationDetails = const NotificationDetails(
      android: AndroidNotificationDetails(
        'id 1',
        'Basic notification',
        priority: Priority.high,
        importance: Importance.high,
      ),
    );

    // Displaying the notification
    flutterLocalNotificationsPlugin.show(
        notificationId, title, body, notificationDetails);
  }
}
