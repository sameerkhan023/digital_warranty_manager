class ProductModel {
  final String id;
  final String name;
  final String brand;
  final String category;
  final double? price;
  final String? imageUrl;

  ProductModel({
    required this.id,
    required this.name,
    required this.brand,
    required this.category,
    this.price,
    this.imageUrl,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'brand': brand,
      'category': category,
      'price': price,
      'imageUrl': imageUrl,
    };
  }

  factory ProductModel.fromMap(Map<String, dynamic> map) {
    return ProductModel(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
      brand: map['brand'] ?? '',
      category: map['category'] ?? '',
      price: map['price']?.toDouble(),
      imageUrl: map['imageUrl'],
    );
  }
}
