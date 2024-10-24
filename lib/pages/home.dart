import 'package:flutter/material.dart';
import 'package:wikusama_hotel/components/homepage/appbar_home.dart';
import 'package:wikusama_hotel/components/homepage/fasilitas.dart';
import 'package:wikusama_hotel/components/homepage/homeImage.dart';
import 'package:wikusama_hotel/components/navbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                children: [
                  AppbarHome(),
                  SizedBox(height: 20),
                  HomeImage(),
                  SizedBox(height: 20),
                  HomeContent(
                    title: "Fasilities",
                    imageUrls: [
                      'https://ik.imagekit.io/tvlk/apr-asset/dgXfoyh24ryQLRcGq00cIdKHRmotrWLNlvG-TxlcLxGkiDwaUSggleJNPRgIHCX6/hotel/asset/10024780-2a952eb6a945d5e81b4e9451c7883812.jpeg?_src=imagekit&tr=c-at_max,f-jpg,fo-auto,h-332,pr-true,q-80,w-480',
                      'https://ik.imagekit.io/tvlk/apr-asset/dgXfoyh24ryQLRcGq00cIdKHRmotrWLNlvG-TxlcLxGkiDwaUSggleJNPRgIHCX6/hotel/asset/10024780-735e44f50fe537f9e7e0a93e41e7c7fe.jpeg?_src=imagekit&tr=c-at_max,f-jpg,h-360,pr-true,q-80,w-640',
                      'https://ik.imagekit.io/tvlk/apr-asset/dgXfoyh24ryQLRcGq00cIdKHRmotrWLNlvG-TxlcLxGkiDwaUSggleJNPRgIHCX6/hotel/asset/10024780-dad55b81a90392a76ba6bacad113d8b6.jpeg?_src=imagekit&tr=c-at_max,f-jpg,h-360,pr-true,q-80,w-640'
                    ],
                    captions: ['Resepsionis', 'Restoran', 'Ruang Tunggu'],
                  ),
                  SizedBox(height: 20),
                  HomeContent(
                    title: "Special Offer",
                    imageUrls: [
                      'https://ik.imagekit.io/tvlk/image/imageResource/2024/10/18/1729239015474-6f71ca66c629107de037357e7a8fa957.png?tr=q-75',
                      'https://ik.imagekit.io/tvlk/image/imageResource/2024/10/16/1729067677114-3c7cb853bac9519bb8c4125e558051d1.png?tr=q-75',
                      'https://ik.imagekit.io/tvlk/image/imageResource/2024/10/18/1729222233834-8e785f8844e7dc9a9d7a5b9ba0dae54e.png?tr=q-75'
                    ],
                    captions: ['', '', ''],
                  ),
                  SizedBox(height: 20),
                  HomeContent(
                    title: "News and Article",
                    imageUrls: [
                      'https://ik.imagekit.io/tvlk/blog/2024/09/shutterstock_2417702033.jpg?tr=w-427',
                      'https://ik.imagekit.io/tvlk/blog/2024/07/New-Project-59.jpg?tr=dpr-1.5,h-480,q-40,w-1024',
                      'https://ik.imagekit.io/tvlk/blog/2024/03/shutterstock_1075866242.jpg?tr=dpr-2,w-675'
                    ],
                    captions: [
                      'Your Guide to the 10 Best City Break Destination in Asia',
                      'Top 10 Museum In Asia',
                      'Top 5 Beach In Asia'
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNav(selectedItem: 0),
    );
  }
}
