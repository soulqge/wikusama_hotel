import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wikusama_hotel/components/navbar.dart';
import 'package:wikusama_hotel/models/transaksi.dart';
import 'package:wikusama_hotel/pages/detail_transaksi.dart';

// Example transaction data
final List<Transaction> transactions = [
  Transaction(
    roomType: 'Standard Room',
    hotelName: 'Wikusama Hotel',
    status: 'On Going',
    checkInDate: '15/10/24',
    checkOutDate: '16/10/24',
    totalKamar: '2',
    price: 300000,
    qr: 'https://qrcg-free-editor.qr-code-generator.com/main/assets/images/websiteQRCode_noFrame.png'
  ),
  Transaction(
    roomType: 'Deluxe Room',
    hotelName: 'Wikusama Hotel',
    status: 'Completed',
    checkInDate: '10/10/24',
    checkOutDate: '12/10/24',
    totalKamar: '1',
    price: 500000,
    qr: 'https://qrcg-free-editor.qr-code-generator.com/main/assets/images/websiteQRCode_noFrame.png'
  ),
];

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Transaksi Anda',
                style: GoogleFonts.workSans(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              Expanded(
                child: ListView.builder(
                  itemCount: transactions.length,
                  itemBuilder: (context, index) {
                    final transaction = transactions[index];
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 12.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  DetailTransaksiPage(transaction: transaction),
                            ),
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color.fromRGBO(249, 252, 255, 1),
                                Color.fromRGBO(230, 235, 240, 1)
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          transaction.roomType,
                                          style: GoogleFonts.openSans(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        Text(
                                          transaction.hotelName,
                                          style: GoogleFonts.openSans(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const Spacer(),
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        color: transaction.status == 'On Going'
                                            ? Color.fromRGBO(73, 170, 109, 1)
                                            : Colors.grey[300],
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Text(
                                          transaction.status,
                                          style: GoogleFonts.openSans(
                                            color: transaction.status == 'On Going'
                                            ? Colors.white
                                            : Colors.black,
                                            fontSize: 8,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 15),
                                Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Check In',
                                          style: GoogleFonts.openSans(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        Text(
                                          transaction.checkInDate,
                                          style: GoogleFonts.openSans(
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(width: 50),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Check Out',
                                          style: GoogleFonts.openSans(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        Text(
                                          transaction.checkOutDate,
                                          style: GoogleFonts.openSans(
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 15),
                                Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Total Room',
                                          style: GoogleFonts.openSans(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        Text(
                                          transaction.totalKamar,
                                          style: GoogleFonts.openSans(
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const Spacer(),
                                    Text(
                                      'Rp. ${transaction.price}',
                                      style: GoogleFonts.openSans(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNav(selectedItem: 2),
      ),
    );
  }
}
