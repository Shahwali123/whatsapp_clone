import 'dart:math';

// import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:logger/logger.dart';
import 'package:whatsapp_clone/core/models/notification.dart';
import 'package:whatsapp_clone/core/services/api_service.dart';
import 'package:whatsapp_clone/locator.dart';
// import 'package:servike/locator.dart';
// import 'package:servike/core/models/notification.dart';
// import 'package:servike/core/services/api_service.dart';
// import 'package:servike/core/services/storage/database_service.dart';

class NotificationsService {
  final log = Logger();
  final _fcm = FirebaseMessaging.instance;
  String? fcmToken;
  final _localNotification = FlutterLocalNotificationsPlugin();
  final _api = locator<ApiService>();
  // final _database = locator<DatabaseService>();

  ///
  ///Initializing Notification services that includes FLN, ANDROID NOTIFICATION CHANNEL setting
  ///FCM NOTIFICATION SETTINGS, and also listeners for OnMessage and for onMessageOpenedApp
  ///
  initConfigure() async {
    log.d("@initFCMConfigure/started");

//now finally get the token from
    await _fcm.getToken().then((token) {
      log.d("FCM TOKEN IS =======-======>$token");
      fcmToken = token;
    });

    fcmToken = await getFcmToken();

    ///
    ///now initializing the listeners
    ///
    ///

    initLocalNotifications();
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      showNotification(message);
    });

    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      log.d("On Message Opened App");
    });

    // ignore: unused_local_variable
    NotificationSettings settings = await _fcm.requestPermission(
      alert: true,
      announcement: true,
      badge: true,
      carPlay: true,
      criticalAlert: true,
      provisional: true,
      sound: true,
    );
    if (settings.authorizationStatus == AuthorizationStatus.authorized) {}

    // print('User granted permission: ${settings.authorizationStatus}');
  }

  onNotificationClick(String payload) {
    log.d('Payload / notification data message is ====>  $payload');
    // Get.to(() => NotificationScreen2(hostUserId));
  }

  showNotification(RemoteMessage message) {
    AndroidNotificationChannel channel = AndroidNotificationChannel(
        Random().nextInt(10000).toString(), "Local Notification Channel",
        // "High Importance Channel",
        importance: Importance.high,
        playSound: true);

    AndroidNotificationDetails androidNotificationDetails =
        AndroidNotificationDetails(channel.id, channel.name,
            // channel.description,
            importance: Importance.high,
            priority: Priority.high,
            ticker: "ticker");

    NotificationDetails notDetails =
        NotificationDetails(android: androidNotificationDetails);

    Future.delayed(Duration.zero, () {
      _localNotification.show(0, message.notification!.title,
          message.notification!.body, notDetails);
    });
  }

  initLocalNotifications() {
    var androidInitSettings =
        const AndroidInitializationSettings("@mipmap/ic_launcher");
    var initSettings = InitializationSettings(android: androidInitSettings);
    _localNotification.initialize(initSettings);
  }

  Future<String?> getFcmToken() async {
    return await _fcm.getToken();
  }

  Future<bool> triggerNotification(
      ReceivedNotification notification, List<String> fcmTokens) async {
    bool success = false;
    var response = await _api.pushNotification(notification, fcmTokens);
    if (response.success) {
      // success = await _database.saveNotification(notification);
    }
    return success;
  }
}

///
///
///received notification model class for ios didNotificationReceived callback
///
// class ReceivedNotification {
//   final int? id;
//   final String? title;
//   final String? body;
//   final String? payload;

//   ReceivedNotification({
//     required this.id,
//     required this.title,
//     required this.body,
//     required this.payload,
//   });
// }
