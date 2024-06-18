import 'package:flutter_local_notifications/flutter_local_notifications.dart';
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

  static void basicNotification() async {
    // Notification details for Android
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
        111, 'basic', 'body', notificationDetails);
  }
}

// import 'package:flutter_local_notifications/flutter_local_notifications.dart';

// class LocalNotification {
//   static final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
//       FlutterLocalNotificationsPlugin();

//   // Initialization method
//   static Future<void> init() async {
//     const AndroidInitializationSettings initializationSettingsAndroid =
//         AndroidInitializationSettings('@mipmap/ic_launcher');

//     const DarwinInitializationSettings initializationSettingsIOS =
//         DarwinInitializationSettings();

//     const InitializationSettings initializationSettings = InitializationSettings(
//       android: initializationSettingsAndroid,
//       iOS: initializationSettingsIOS,
//     );

//     await flutterLocalNotificationsPlugin.initialize(
//       initializationSettings,
//       onDidReceiveNotificationResponse: onDidReceiveNotificationResponse,
//       onDidReceiveBackgroundNotificationResponse: onDidReceiveBackgroundNotificationResponse,
//     );
//   }

//   static void onDidReceiveNotificationResponse(
//       NotificationResponse notificationResponse) {
//     // Handle foreground notification response
//   }

//   static void onDidReceiveBackgroundNotificationResponse(
//       NotificationResponse notificationResponse) {
//     // Handle background notification response
//   }

//   static Future<void> basicNotification() async {
//     const AndroidNotificationDetails androidPlatformChannelSpecifics =
//         AndroidNotificationDetails(
//       'channel_id',
//       'channel_name',
//       channelDescription: 'channel_description',
//       importance: Importance.max,
//       priority: Priority.high,
//     );

//     const NotificationDetails platformChannelSpecifics =
//         NotificationDetails(android: androidPlatformChannelSpecifics);

//     await flutterLocalNotificationsPlugin.show(
//       0,
//       'Warning',
//       'Buzzer is ringing!!!',
//       platformChannelSpecifics,
//     );
//   }
// }
// import 'package:flutter_local_notifications/flutter_local_notifications.dart';

// class LocalNotification {
//   static FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
//       FlutterLocalNotificationsPlugin();

//   static Future<void> init() async {
//     const AndroidInitializationSettings initializationSettingsAndroid =
//         AndroidInitializationSettings('@mipmap/ic_launcher');
//     const DarwinInitializationSettings initializationSettingsIOS =
//         DarwinInitializationSettings();

//     final InitializationSettings initializationSettings =
//         InitializationSettings(
//       android: initializationSettingsAndroid,
//       iOS: initializationSettingsIOS,
//     );

//     await flutterLocalNotificationsPlugin.initialize(
//       initializationSettings,
//     );
//   }

//   static Future<void> action(NotificationResponse notificationResponse) async {
//     // Handle notification tap
//   }

//   static void basicNotification() async {
//     const AndroidNotificationDetails androidNotificationDetails =
//         AndroidNotificationDetails(
//       'id 1',
//       'Basic notification',
//     );

//     const NotificationDetails notificationDetails = NotificationDetails(
//       android: androidNotificationDetails,
//     );

//     await flutterLocalNotificationsPlugin.show(
//       0,
//       'basic',
//       'body',
//       notificationDetails,
//     );
//   }
// }
