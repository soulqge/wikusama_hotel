import 'package:flutter/material.dart';

class ButtonWiku extends StatelessWidget {
  final String bText;
  final String route;
  final Color color; 
  final Gradient gradient; 

  const ButtonWiku(
      {super.key,
      required this.bText,
      required this.route,
      required this.color,
      required this.gradient});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: gradient, 
          borderRadius: BorderRadius.circular(32), 
        ),
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, route);
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent, 
            shadowColor: Colors.transparent, 
            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(32),
            ),
          ),
          child: Text(
            bText,
            style: TextStyle(color: color), // Text color
          ),
        ),
      ),
    );
  }
}
