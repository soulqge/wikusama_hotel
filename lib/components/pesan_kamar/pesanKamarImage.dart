import 'package:flutter/material.dart';

class PesanKamarimage extends StatelessWidget {
  final String urlGambar;
  final double tinggi;
  final double lebar;

  const PesanKamarimage({super.key, required this.urlGambar, required this.lebar, required this.tinggi});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: lebar,
      height: tinggi,
      child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.network(fit: BoxFit.cover, urlGambar) 
          ),
    );
  }
}
