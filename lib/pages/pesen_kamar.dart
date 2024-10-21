import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wikusama_hotel/components/navbar.dart';
import 'package:wikusama_hotel/components/pesan_kamar/top_selected.dart';

class PesenKamarPage extends StatefulWidget {
  const PesenKamarPage({super.key});

  @override
  State<PesenKamarPage> createState() => _PesenKamarPageState();
}

class _PesenKamarPageState extends State<PesenKamarPage> {
  String? selectedPrice;
  String? selectedRoom;

  final List<String> priceOptions = [
    'All Prices',
    '\$0 - \$100',
    '\$100 - \$300',
    '\$300+',
  ];

  final List<String> roomOptions = [
    '1 Room',
    '2 Rooms',
    '3 Rooms',
    '4+ Rooms',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(24),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(245, 245, 245, 1),
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 10,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Finding the best room for you",
                          style: GoogleFonts.openSans(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 24),
                        _buildDateField(
                          "Check In Date",
                        ),
                        const SizedBox(height: 16),
                        _buildDateField("Check Out Date"),
                        const SizedBox(height: 24),
                        Row(
                          children: [
                            _buildDropdown(
                              "Select Price",
                              priceOptions,
                              selectedPrice,
                              (value) {
                                setState(() {
                                  selectedPrice = value;
                                });
                              },
                            ),
                            const SizedBox(width: 16),
                            _buildDropdown(
                              "Select Room",
                              roomOptions,
                              selectedRoom,
                              (value) {
                                setState(() {
                                  selectedRoom = value;
                                });
                              },
                            ),
                          ],
                        ),
                        SizedBox(height: 24),
                        Center(
                          child: Container(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {
                                print("Selected Price: $selectedPrice");
                                print("Selected Room: $selectedRoom");
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.grey[300],
                                foregroundColor: Colors.black,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 40, vertical: 16),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(32),
                                ),
                              ),
                              child: const Text("Search Room"),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 24),
                  TopSelected(),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNav(selectedItem: 1),
    );
  }

  Widget _buildDateField(String hint) {
    return TextFormField(
      cursorColor: Colors.black,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: GoogleFonts.openSans(
          fontSize: 14,
          color: const Color.fromRGBO(187, 186, 186, 1),
        ),
        prefixIcon: const Icon(
          Icons.calendar_today,
          color: Color.fromRGBO(187, 186, 186, 1),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(),
          borderRadius: BorderRadius.circular(12),
        ),
        contentPadding:
            const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
      ),
    );
  }

  Widget _buildDropdown(
    String hint,
    List<String> options,
    String? selectedValue,
    ValueChanged<String?> onChanged,
  ) {
    return Expanded(
      child: GestureDetector(
        onTap: () => _showSingleSelectDialog(options, selectedValue, onChanged),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                selectedValue ?? hint,
                style: const TextStyle(fontSize: 14),
              ),
              const Icon(Icons.arrow_drop_down),
            ],
          ),
        ),
      ),
    );
  }

  void _showSingleSelectDialog(List<String> options, String? selectedValue,
      ValueChanged<String?> onChanged) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Select Option"),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: options.map((option) {
                return RadioListTile<String>(
                  title: Text(option),
                  value: option,
                  groupValue: selectedValue,
                  onChanged: (value) {
                    onChanged(value);
                    Navigator.pop(context); // Close dialog on selection
                  },
                );
              }).toList(),
            ),
          ),
        );
      },
    );
  }
}
