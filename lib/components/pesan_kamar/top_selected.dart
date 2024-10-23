import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wikusama_hotel/components/pesan_kamar/pesanKamarImage.dart';

class TopSelected extends StatelessWidget {
  const TopSelected({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Top Selected Room",
            style:
                GoogleFonts.workSans(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            children: [
              Row(
                children: [
                  PesanKamarimage(
                      urlGambar:
                          'https://www.blibli.com/friends-backend/wp-content/uploads/2023/07/B700455-Cover-Rekomendasi-Hotel-di-Jakarta-Pusat-scaled.jpg', lebar: 161, tinggi: 159,),
                  Expanded(child: Container()),
                  PesanKamarimage(
                      urlGambar:
                          'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/17/82/fe/bb/regent-s-park-hotel.jpg?w=1200&h=-1&s=1', lebar: 161, tinggi: 159)
                ],
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            children: [
              Row(
                children: [
                  PesanKamarimage(
                      urlGambar:
                          'https://s-light.tiket.photos/t/01E25EBZS3W0FY9GTG6C42E1SE/rsfit720360gsm/tix-hotel/images-web/2020/10/28/4fb35266-e5e7-4834-b1f7-d949fb955b9e-1603882728129-3a1087b5f1d090bb3e8dbac593f0a997.jpg', lebar: 161, tinggi: 159),
                  Expanded(child: Container()),
                  PesanKamarimage(
                      urlGambar:
                          'https://www.travelz.xyz/wp-content/uploads/2019/04/Hotel-Terbaik-di-Bekasi.jpg', lebar: 161, tinggi: 159)
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
