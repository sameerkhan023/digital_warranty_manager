class ServiceCenterModel {
  final String id;
  final String name;
  final String brand;
  final String address;
  final String phoneNumber;
  final String? email;
  final double? latitude;
  final double? longitude;

  ServiceCenterModel({
    required this.id,
    required this.name,
    required this.brand,
    required this.address,
    required this.phoneNumber,
    this.email,
    this.latitude,
    this.longitude,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'brand': brand,
      'address': address,
      'phoneNumber': phoneNumber,
      'email': email,
      'latitude': latitude,
      'longitude': longitude,
    };
  }

  factory ServiceCenterModel.fromMap(Map<String, dynamic> map) {
    return ServiceCenterModel(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
      brand: map['brand'] ?? '',
      address: map['address'] ?? '',
      phoneNumber: map['phoneNumber'] ?? '',
      email: map['email'],
      latitude: map['latitude']?.toDouble(),
      longitude: map['longitude']?.toDouble(),
    );
  }
}
