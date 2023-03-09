import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery
            .of(context)
            .size
            .height,
        width: MediaQuery
            .of(context)
            .size
            .width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                AwesomeNotifications().requestPermissionToSendNotifications();
              },
              child: Text('request permission'),
            ),
            ElevatedButton(
              onPressed: () {
                AwesomeNotifications().createNotification(
                    content: NotificationContent(
                      channelKey: 'basic key',
                        id:1,
                      title: 'test title',
                      body: 'test body noti',
                      bigPicture:'assets/Fast-Food-icon_30334.png',
                      notificationLayout:NotificationLayout.BigPicture,
                    )  );
              },
              child: Text('Create'),
            ),
            ElevatedButton(
              onPressed: () {
                AwesomeNotifications().createNotification(
                    content: NotificationContent(
                      channelKey: 'basic key',
                      id:1,
                      title: 'test title',
                      body: 'test body noti',
                      bigPicture:'asset://assets/mu.jpg',
                      notificationLayout:NotificationLayout.BigPicture,
                    ),
                  schedule:NotificationCalendar
                  .fromDate(date: DateTime.now().add(Duration(seconds: 10)))
                );              },
              child: Text('Schedule'),
            ),
          ],
        ),
      ),
    );
  }
}


