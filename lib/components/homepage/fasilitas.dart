import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wikusama_hotel/components/homepage/home_carousel.dart';

class HomeContent extends StatelessWidget {
  final String title; // Title of the section
  final List<String> imageUrls; // List of image URLs

  const HomeContent({
    super.key,
    required this.title,
    required this.imageUrls,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              title,
              style: GoogleFonts.workSans(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Spacer(),
          ],
        ),
        const SizedBox(height: 20),
        HomeCarousel(imageUrls: imageUrls),
      ],
    );
  }
}
