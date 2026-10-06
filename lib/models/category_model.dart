class CategoryModel {
  final String id;
  final String name;
  final String iconAsset;

  CategoryModel({
    required this.id,
    required this.name,
    required this.iconAsset,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'iconAsset': iconAsset,
    };
  }

  factory CategoryModel.fromMap(Map<String, dynamic> map) {
    return CategoryModel(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
      iconAsset: map['iconAsset'] ?? '',
    );
  }
}
