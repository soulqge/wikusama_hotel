import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wikusama_hotel/components/detail_kamar/room_desc.dart';
import 'package:wikusama_hotel/components/detail_kamar/room_facilities.dart';
import 'package:wikusama_hotel/components/detail_kamar/stackImage.dart';

class DetailKamarPage extends StatelessWidget {
  const DetailKamarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                StackImageDetail(),
                Container(
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Standard Room",
                          style: GoogleFonts.workSans(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 28),
                        RoomDesc(),
                        SizedBox(height: 28),
                        RoomFacilities(),
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(245, 245, 245, 1),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black, // Shadow color
                          blurRadius: 7, // Blur radius
                          offset: Offset(0, 3),
                        )
                      ]),
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment
                          .center, // Aligns the button and column vertically
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Price",
                              style: GoogleFonts.openSans(
                                  fontSize: 14, fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                                height:
                                    5), // Add some spacing if needed between the texts
                            Text("Rp. 150.000",
                                style: GoogleFonts.openSans(
                                    fontSize: 24, fontWeight: FontWeight.w600)),
                          ],
                        ),
                        Expanded(child: Container()),
                        Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color.fromRGBO(125, 162, 202, 1),
                                Color.fromRGBO(44, 75, 108, 1)
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                            borderRadius: BorderRadius.circular(32),
                          ),
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.transparent,
                              shadowColor: Colors.transparent,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 40, vertical: 16),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(32),
                              ),
                            ),
                            child: Text(
                              "Book Now",
                              style: TextStyle(color: Colors.white), // Text color
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
