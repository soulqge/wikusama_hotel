import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginFormBox extends StatelessWidget {

  final String hint;
  final IconData icon;

  const LoginFormBox({super.key, required this.icon, required this.hint});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        prefixIconColor: Color.fromRGBO(187, 186, 186, 1),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(360), // rounded corners
          borderSide: BorderSide(
            color: Colors.grey, // border color
            width: 1.0, // border width
          ),
        ),
        hintText: hint,
        hintStyle: GoogleFonts.openSans(
          color: Color.fromRGBO(187, 186, 186, 1),
          fontSize: 12,
        ),
        prefixIcon: Icon(icon),
      ),
    );
  }
}
