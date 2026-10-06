class ReceiptModel {
  final String id;
  final String warrantyId;
  final String storeName;
  final double amount;
  final DateTime date;
  final String imageUrl;

  ReceiptModel({
    required this.id,
    required this.warrantyId,
    required this.storeName,
    required this.amount,
    required this.date,
    required this.imageUrl,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'warrantyId': warrantyId,
      'storeName': storeName,
      'amount': amount,
      'date': date.toIso8601String(),
      'imageUrl': imageUrl,
    };
  }

  factory ReceiptModel.fromMap(Map<String, dynamic> map) {
    return ReceiptModel(
      id: map['id'] ?? '',
      warrantyId: map['warrantyId'] ?? '',
      storeName: map['storeName'] ?? '',
      amount: (map['amount'] ?? 0.0).toDouble(),
      date: DateTime.parse(map['date']),
      imageUrl: map['imageUrl'] ?? '',
    );
  }
}
