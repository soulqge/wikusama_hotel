import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wikusama_hotel/components/homepage/home_carousel.dart';

class HomeContent extends StatelessWidget {
  final String title; // Title of the section
  final String buttonText; // Button text
  final VoidCallback onButtonPressed; // Button action callback
  final List<String> imageUrls; // List of image URLs

  const HomeContent({
    super.key,
    required this.title,
    required this.buttonText,
    required this.onButtonPressed,
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
            ElevatedButton(
              onPressed: onButtonPressed,
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromRGBO(245, 245, 245, 1),
                foregroundColor: Colors.black,
              ),
              child: Text(
                buttonText,
                style: GoogleFonts.workSans(
                  fontSize: 10,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        HomeCarousel(imageUrls: imageUrls),
      ],
    );
  }
}
