import 'package:flutter/material.dart';

class PesanKamarimage extends StatelessWidget {
  final String urlGambar;

  const PesanKamarimage({super.key, required this.urlGambar});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 161,
      height: 159,
      child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.network(fit: BoxFit.cover, urlGambar) 
          ),
    );
  }
}
