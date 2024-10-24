import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeCarousel extends StatelessWidget {
  final List<String> imageUrls; // List of image URLs
  final List<String> captions; // List of captions for each image

  const HomeCarousel({
    super.key,
    required this.imageUrls,
    required this.captions, // Constructor with required parameter for captions
  }) : assert(imageUrls.length == captions.length,
            "Each image must have a corresponding caption.");

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 250, // Increased height to accommodate text
        autoPlay: true,
        aspectRatio: 16 / 9,
        viewportFraction: 0.8,
      ),
      items: imageUrls.asMap().entries.map((entry) {
        int index = entry.key;
        String url = entry.value;

        return Builder(builder: (BuildContext context) {
          return Container(
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.symmetric(horizontal: 5.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.network(
                    url,
                    height: 180, // Adjust image height to fit text
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 8), // Spacing between image and text
                Text(
                  captions[index],
                  textAlign: TextAlign.start,
                  style: GoogleFonts.openSans(
                      fontSize: 14, fontWeight: FontWeight.w400),
                ),
              ],
            ),
          );
        });
      }).toList(),
    );
  }
}
