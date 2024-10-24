import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RoomDesc extends StatelessWidget {
  const RoomDesc({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Description",
            style: GoogleFonts.workSans(
                color: Color.fromRGBO(44, 75, 108, 1),
                fontSize: 16,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 15),
          Text(
              "Terletak di Malang, 13 menit jalan kaki dari Zoologi Frater Vianney Museum, RedDoorz at Villa Puncak Tidar menawarkan akomodasi dengan taman, parkir pribadi gratis, lounge bersama, dan teras. Akomodasi ini berjarak sekitar 2,8 km dari Taman Wisata Lembah Dieng, 4,2 km dari Pusat Kuliner Pulosari, dan 4,4 km dari Malang Library. Akomodasi ini menyediakan layanan kamar dan WiFi gratis di seluruh area akomodasi. Universitas Brawijaya Malang berjarak 4,7 km dari hotel, sementara Museum Brawijaya terletak sejauh 5 km.",
              style: GoogleFonts.openSans(
                fontSize: 14,
              )),
        ],
      ),
    );
  }
}
