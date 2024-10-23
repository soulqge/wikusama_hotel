import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wikusama_hotel/components/button_log.dart';
import 'package:wikusama_hotel/components/button_wiku.dart';
import 'package:wikusama_hotel/components/login/login_form_box.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Expanded(
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Log In',
                        style: GoogleFonts.workSans(
                            fontSize: 24, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(height: 48),
                      LoginFormBox(
                        icon: Icons.email_outlined,
                        hint: 'E - Mail',
                      ),
                      SizedBox(height: 24),
                      LoginFormBox(
                        icon: Icons.lock_outline,
                        hint: 'Password',
                      ),
                      SizedBox(height: 14),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          'Forget Password?',
                          style: GoogleFonts.openSans(
                              color: Color.fromRGBO(76, 152, 233, 1),
                              fontSize: 10,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      SizedBox(height: 48),
                      ButtonWiku(
                        bText: "Log In",
                        route: '/home',
                        color: Colors.white,
                        gradient: LinearGradient(
                          colors: [
                            Color.fromRGBO(125, 162, 202, 1),
                            Color.fromRGBO(44, 75, 108, 1)
                          ], // Lighter to darker blue
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                      ),
                      SizedBox(height: 30),
                      Text(
                        'Or log In with social account',
                        style: GoogleFonts.openSans(
                            fontSize: 12, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(height: 30),
                      Row(
                        children: [
                          Expanded(
                              child: ButtonLog(
                            bText: "Google",
                            route: "route",
                            icon: Icons.golf_course,
                          )),
                          SizedBox(width: 19),
                          Expanded(
                              child: ButtonLog(
                            bText: "Facebook",
                            route: "route",
                            icon: Icons.facebook_outlined,
                          )),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Does Not Have an Account?',
                    style: GoogleFonts.openSans(
                        fontSize: 12, fontWeight: FontWeight.w600),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/signup');
                    },
                    child: Text(
                      'Sign Up',
                      style: GoogleFonts.openSans(
                          color: Color.fromRGBO(76, 152, 233, 1),
                          fontSize: 12,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
