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
                      title: "Fasilitas",
                      buttonText: "See More",
                      onButtonPressed: () {},
                      imageUrls: [
                        'https://c.ekstatic.net/ecl/sponsorships/sport-football/real-madrid-w300x300.jpg',
                        'https://asset-a.grid.id/crop/0x0:0x0/700x465/photo/2024/08/15/mbappe-trofijpg-20240815044747.jpg',
                        'https://asset-2.tstatic.net/tribunnews/foto/bank/images/kylian-mbappe-sedang-menggiring-bola-di-laga-real-madrid-vs-atalanta-di-piala-super-eropa.jpg'
                      ]),
                  SizedBox(height: 20),
                  HomeContent(
                      title: "Penawaran Spesial",
                      buttonText: "See More",
                      onButtonPressed: () {},
                      imageUrls: [
                        'https://c.ekstatic.net/ecl/sponsorships/sport-football/real-madrid-w300x300.jpg',
                        'https://asset-a.grid.id/crop/0x0:0x0/700x465/photo/2024/08/15/mbappe-trofijpg-20240815044747.jpg',
                        'https://asset-2.tstatic.net/tribunnews/foto/bank/images/kylian-mbappe-sedang-menggiring-bola-di-laga-real-madrid-vs-atalanta-di-piala-super-eropa.jpg'
                      ]),
                  SizedBox(height: 20),
                  HomeContent(
                      title: "Berita dan Artikel",
                      buttonText: "See More",
                      onButtonPressed: () {},
                      imageUrls: [
                        'https://c.ekstatic.net/ecl/sponsorships/sport-football/real-madrid-w300x300.jpg',
                        'https://asset-a.grid.id/crop/0x0:0x0/700x465/photo/2024/08/15/mbappe-trofijpg-20240815044747.jpg',
                        'https://asset-2.tstatic.net/tribunnews/foto/bank/images/kylian-mbappe-sedang-menggiring-bola-di-laga-real-madrid-vs-atalanta-di-piala-super-eropa.jpg'
                      ]),
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
