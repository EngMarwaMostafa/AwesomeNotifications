import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';

import 'MyHomePage.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  AwesomeNotifications().initialize(
      'resource://drawable/noti',
      [
        NotificationChannel(
            channelKey: 'basic key',
            channelName: 'test channel',
            channelDescription: 'notifications test',
          playSound: true,
          channelShowBadge: true,
        ),
        NotificationChannel(
            channelKey: 'basic key',
            channelName: 'schedule channel',
            channelDescription: 'notifications test',
          playSound: true,
          channelShowBadge: true,
          importance: NotificationImportance.Max
        ),
      ]
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  MyHomePage(),
    );
  }
}


