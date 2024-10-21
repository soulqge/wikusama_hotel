class Transaction {
  final String roomType;
  final String hotelName;
  final String status;
  final String checkInDate;
  final String checkOutDate;
  final String totalKamar;
  final int price;

  Transaction({
    required this.roomType,
    required this.hotelName,
    required this.status,
    required this.checkInDate,
    required this.checkOutDate,
    required this.price,
    required this.totalKamar
  });
}
