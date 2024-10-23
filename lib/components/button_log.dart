import 'package:flutter/material.dart';

class ButtonLog extends StatelessWidget {
  final String bText;
  final String route;
  final IconData icon; 

  const ButtonLog(
      {super.key,
      required this.bText,
      required this.route,
      required this.icon
      });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32), 
        ),
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, route);
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            side: BorderSide(
              color: Color.fromRGBO(44, 75, 108, 1)
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(32),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(icon, color: Color.fromRGBO(44, 75, 108, 1),),
              SizedBox(width: 5),
              Text(
                bText,
                style: TextStyle(color: Color.fromRGBO(44, 75, 108, 1)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
