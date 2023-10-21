import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:instant1/notifications.dart';
import 'package:instant1/shared.dart';
import 'package:instant1/ui/bmi/bmi_screen.dart';
import 'package:instant1/ui/insta/insta_main_screen.dart';
import 'package:instant1/ui/note/home_screen.dart';
import 'package:instant1/ui/note/login_screen.dart';

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  // If you're going to use other Firebase services in the background, such as Firestore,
  // make sure you call `initializeApp` before using other Firebase services.
  await Firebase.initializeApp();

  print("Handling a background message: ${message.messageId}");
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await PreferenceUtils.init();

  initNotifications();

  FirebaseMessaging.instance.getToken().then((value) {
    print('FCM Token => $value');
  });

  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

  FirebaseMessaging.onMessage.listen((RemoteMessage message) {
    print('Got a message whilst in the foreground!');
    print('Message data: ${message.data}');

    if (message.notification != null) {
      print('Message also contained a notification: ${message.notification}');
      print(
          'Message also contained a notification: ${message.notification!.title}');
      print(
          'Message also contained a notification: ${message.notification!.body}');

      displayNotification(
        message.notification!.title!,
        message.notification!.body!,
      );
    }
  });

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    if (Platform.isAndroid) {
      requestAndroidPermission();
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: FirebaseAuth.instance.currentUser == null
          ? const LoginScreen()
          : const HomeScreen(),
    );
  }
}

class ExpandScreen extends StatelessWidget {
  const ExpandScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          // 3 / 6
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.black,
              height: 100,
            ),
          ),
          // 1  / 6
          Expanded(
            child: Container(
              color: Colors.blue,
              height: 100,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                // Total = 4
                Expanded(
                  // 1 /4
                  child: Container(
                    color: Colors.red,
                    width: 100,
                  ),
                ),
                Expanded(
                  // 2 /4
                  flex: 2,
                  child: Container(
                    color: Colors.blueGrey,
                    width: 100,
                  ),
                ),
                Expanded(
                  // 1/4
                  child: Container(
                    color: Colors.pink,
                    width: 100,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.green,
              height: 100,
            ),
          ),
        ],
      ),
    );
  }
}
