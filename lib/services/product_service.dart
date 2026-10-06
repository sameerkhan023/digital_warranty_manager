import '../models/product_model.dart';

class ProductService {
  final List<ProductModel> _products = [];

  Future<List<ProductModel>> getProducts() async {
    return List.from(_products);
  }

  Future<void> addProduct(ProductModel product) async {
    _products.add(product);
  }
}
