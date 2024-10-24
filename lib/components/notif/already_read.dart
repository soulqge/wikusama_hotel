import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../models/notications_models.dart';

class AlreadyRead extends StatelessWidget {
  const AlreadyRead({super.key});

  @override
  Widget build(BuildContext context) {
    final notifications = [
      {
        "title": "Hi ZamZam! We have recommendation for you!",
        "subtitle": "Check it out! "
      },
      {"title": "Hi ZamZam, welcome!", "subtitle": "Sign up successfully "},
    ];

    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text("Already",
                  style: GoogleFonts.openSans(
                    color: Color.fromRGBO(60, 94, 130, 1),
                      fontSize: 12, fontWeight: FontWeight.w600)),
              SizedBox(width: 2),
              Text("Read",
                  style: GoogleFonts.openSans(
                      fontSize: 12, fontWeight: FontWeight.w600))
            ],
          ),
          SizedBox(height: 15),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: notifications.length,
            itemBuilder: (context, index) {
              return NotificationItem(
                title: notifications[index]["title"]!,
                subtitle: notifications[index]["subtitle"]!,
              );
            },
          ),
        ],
      ),
    );
  }
}
