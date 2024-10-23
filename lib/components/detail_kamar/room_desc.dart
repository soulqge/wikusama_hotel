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
              "Lorem ipsum dolor sit amet consectetur. Eget fringilla sit auctor egestas semper lorem eu senectus pellentesque. Pellentesque semper quis consequat viverra morbi neque. Tincidunt quam amet luctus tincidunt vitae proin. Magna fermentum imperdiet fringilla lorem.",
              style: GoogleFonts.openSans(
                fontSize: 14,
              )),
        ],
      ),
    );
  }
}
