class WarrantyModel {
  final String id;
  final String productId;
  final String productName;
  final String category;
  final DateTime purchaseDate;
  final DateTime expiryDate;
  final String? serialNumber;
  final String? receiptUrl;
  final String? notes;

  WarrantyModel({
    required this.id,
    required this.productId,
    required this.productName,
    required this.category,
    required this.purchaseDate,
    required this.expiryDate,
    this.serialNumber,
    this.receiptUrl,
    this.notes,
  });

  bool get isExpired => DateTime.now().isAfter(expiryDate);

  int get daysRemaining => expiryDate.difference(DateTime.now()).inDays;

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'productId': productId,
      'productName': productName,
      'category': category,
      'purchaseDate': purchaseDate.toIso8601String(),
      'expiryDate': expiryDate.toIso8601String(),
      'serialNumber': serialNumber,
      'receiptUrl': receiptUrl,
      'notes': notes,
    };
  }

  factory WarrantyModel.fromMap(Map<String, dynamic> map) {
    return WarrantyModel(
      id: map['id'] ?? '',
      productId: map['productId'] ?? '',
      productName: map['productName'] ?? '',
      category: map['category'] ?? '',
      purchaseDate: DateTime.parse(map['purchaseDate']),
      expiryDate: DateTime.parse(map['expiryDate']),
      serialNumber: map['serialNumber'],
      receiptUrl: map['receiptUrl'],
      notes: map['notes'],
    );
  }
}
