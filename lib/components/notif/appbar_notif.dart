import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppbarNotif extends StatelessWidget {

  final String title;
  final String route;
  final Color color;

  const AppbarNotif({super.key, required this.title, required this.route, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(360),
                color: Color.fromRGBO(245, 245, 245, 1),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black, // Shadow color
                    blurRadius: 7, // Blur radius
                    offset: Offset(1, 3),
                  )
                ]),
            child: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, route);
                },
                icon: Icon(Icons.arrow_back)),
          ),
          SizedBox(width: 20),
          Text(title,
              style: GoogleFonts.workSans(
                color: color,
                  fontSize: 20, fontWeight: FontWeight.bold))
        ],
      ),
    );
  }
}
