import 'package:flutter/material.dart';
import 'package:wikusama_hotel/pages/detail_kamar.dart';
import 'package:wikusama_hotel/pages/history.dart';
import 'package:wikusama_hotel/pages/home.dart';
import 'package:wikusama_hotel/pages/login.dart';
import 'package:wikusama_hotel/pages/notifications.dart';
import 'package:wikusama_hotel/pages/pesen_kamar.dart';
import 'package:wikusama_hotel/pages/profile.dart';
import 'package:wikusama_hotel/pages/signup.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/login',
    routes: {
      '/home' : (context) => HomePage(),
      '/notif' : (context) => NotificationsPage(),
      '/pesen' : (context) => PesenKamarPage(),
      '/history' : (context) => HistoryPage(),
      '/profile': (context) => ProfilePage(),
      '/detail_kamar': (context) => DetailKamarPage(),
      '/login': (context) => LoginPage(),
      '/signup': (context) => SignupPage()
    },
  ));
}

 
