import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationItem extends StatelessWidget {
  final String title;
  final String subtitle;

  const NotificationItem({
    super.key,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start, // Align the text with the avatar
        children: [
          CircleAvatar(
            backgroundColor: Colors.black,
          ),
          SizedBox(width: 15),
          
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: GoogleFonts.openSans(fontWeight: FontWeight.w600, fontSize: 12),
                  softWrap: true, 
                  overflow: TextOverflow.visible, 
                ),
                Text(
                  subtitle,
                  style: GoogleFonts.openSans(fontSize: 10),
                  softWrap: true, 
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}