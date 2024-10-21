import 'package:flutter/material.dart';
import 'package:wikusama_hotel/pages/history.dart';
import 'package:wikusama_hotel/pages/home.dart';
import 'package:wikusama_hotel/pages/pesen_kamar.dart';
import 'package:wikusama_hotel/pages/profile.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/home',
    routes: {
      '/home' : (context) => HomePage(),
      '/pesen' : (context) => PesenKamarPage(),
      '/history' : (context) => HistoryPage(),
      '/profile': (context) => ProfilePage()
    },
  ));
}

 
