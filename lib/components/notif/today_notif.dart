import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../models/notications_models.dart';

class TodayNotif extends StatelessWidget {
  const TodayNotif({super.key});

  @override
  Widget build(BuildContext context) {
    final notifications = [
      {"title": "We have special offer for you!", "subtitle": "Let’s check it out!"},
      {"title": "Are you looking for a room?", "subtitle": "Most beautiful place in Indonesia "},
    ];

    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Today",
              style: GoogleFonts.openSans(
                  fontSize: 12, fontWeight: FontWeight.w600)),
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
