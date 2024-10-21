import 'package:flutter/material.dart';

class HomeImage extends StatelessWidget {
  const HomeImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.network(
              fit: BoxFit.fill,
              'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/17/82/fe/bb/regent-s-park-hotel.jpg?w=1200&h=-1&s=1') // placeholder
          ),
    );
  }
}
