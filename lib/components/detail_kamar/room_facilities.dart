import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wikusama_hotel/components/pesan_kamar/pesanKamarImage.dart';

class RoomFacilities extends StatelessWidget {
  const RoomFacilities({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Facilities",
            style: GoogleFonts.workSans(
                color: Color.fromRGBO(44, 75, 108, 1),
                fontSize: 16,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              PesanKamarimage(
                  urlGambar:
                      'https://ik.imagekit.io/tvlk/apr-asset/dgXfoyh24ryQLRcGq00cIdKHRmotrWLNlvG-TxlcLxGkiDwaUSggleJNPRgIHCX6/hotel/asset/10024780-2a952eb6a945d5e81b4e9451c7883812.jpeg?_src=imagekit&tr=c-at_max,f-jpg,fo-auto,h-332,pr-true,q-80,w-480',
                  lebar: 60,
                  tinggi: 60),
              PesanKamarimage(
                  urlGambar:
                      'https://ik.imagekit.io/tvlk/apr-asset/dgXfoyh24ryQLRcGq00cIdKHRmotrWLNlvG-TxlcLxGkiDwaUSggleJNPRgIHCX6/hotel/asset/10024780-735e44f50fe537f9e7e0a93e41e7c7fe.jpeg?_src=imagekit&tr=c-at_max,f-jpg,h-360,pr-true,q-80,w-640',
                  lebar: 60,
                  tinggi: 60),
              PesanKamarimage(
                  urlGambar:
                      'https://ik.imagekit.io/tvlk/apr-asset/dgXfoyh24ryQLRcGq00cIdKHRmotrWLNlvG-TxlcLxGkiDwaUSggleJNPRgIHCX6/hotel/asset/10024780-dad55b81a90392a76ba6bacad113d8b6.jpeg?_src=imagekit&tr=c-at_max,f-jpg,h-360,pr-true,q-80,w-640',
                  lebar: 60,
                  tinggi: 60),
              PesanKamarimage(
                  urlGambar:
                      'https://ik.imagekit.io/tvlk/apr-asset/dgXfoyh24ryQLRcGq00cIdKHRmotrWLNlvG-TxlcLxGkiDwaUSggleJNPRgIHCX6/hotel/asset/10024780-d5e92baec33bd5c6e567c224c49c1d54.jpeg?_src=imagekit&tr=c-at_max,f-jpg,h-360,pr-true,q-80,w-640',
                  lebar: 60,
                  tinggi: 60),
            ],
          )
        ],
      ),
    );
  }
}
