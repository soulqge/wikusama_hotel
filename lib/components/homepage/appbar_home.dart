import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppbarHome extends StatelessWidget {
  const AppbarHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Hi, Sapphire!",
                style: GoogleFonts.workSans(
                    fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                "Lorem ipsum dolor sit amet.",
                style: GoogleFonts.workSans(fontSize: 12),
              ),
            ],
          ),
          Expanded(child: Container()),
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications))
        ],
      ),
    );
  }
}
