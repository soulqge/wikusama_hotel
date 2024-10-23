import 'package:flutter/material.dart';
import 'package:wikusama_hotel/components/notif/already_read.dart';
import 'package:wikusama_hotel/components/notif/appbar_notif.dart';
import 'package:wikusama_hotel/components/notif/today_notif.dart';


class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(20),
              child: AppbarNotif(title: 'Notifications', route: '/home', color: Colors.black,)),
            TodayNotif(),
            AlreadyRead()
          ],
        ),
      ),
    );
  }
}


