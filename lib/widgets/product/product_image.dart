import 'package:flutter/material.dart';
import '../../constants/app_assets.dart';

class ProductImage extends StatelessWidget {
  final String? imageUrl;
  final double size;

  const ProductImage({super.key, this.imageUrl, this.size = 60});

  @override
  Widget build(BuildContext context) {
    if (imageUrl != null && imageUrl!.isNotEmpty) {
      return Image.network(
        imageUrl!,
        width: size,
        height: size,
        fit: BoxFit.cover,
        errorBuilder: (_, __, ___) => Image.asset(AppAssets.productPlaceholder, width: size, height: size),
      );
    }
    return Image.asset(AppAssets.productPlaceholder, width: size, height: size);
  }
}
