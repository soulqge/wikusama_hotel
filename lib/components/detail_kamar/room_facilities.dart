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
                      'https://www.blibli.com/friends-backend/wp-content/uploads/2023/07/B700455-Cover-Rekomendasi-Hotel-di-Jakarta-Pusat-scaled.jpg',
                  lebar: 60,
                  tinggi: 60),
              PesanKamarimage(
                  urlGambar:
                      'https://www.blibli.com/friends-backend/wp-content/uploads/2023/07/B700455-Cover-Rekomendasi-Hotel-di-Jakarta-Pusat-scaled.jpg',
                  lebar: 60,
                  tinggi: 60),
              PesanKamarimage(
                  urlGambar:
                      'https://www.blibli.com/friends-backend/wp-content/uploads/2023/07/B700455-Cover-Rekomendasi-Hotel-di-Jakarta-Pusat-scaled.jpg',
                  lebar: 60,
                  tinggi: 60),
              PesanKamarimage(
                  urlGambar:
                      'https://www.blibli.com/friends-backend/wp-content/uploads/2023/07/B700455-Cover-Rekomendasi-Hotel-di-Jakarta-Pusat-scaled.jpg',
                  lebar: 60,
                  tinggi: 60),
            ],
          )
        ],
      ),
    );
  }
}
