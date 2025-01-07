import 'package:capjewel/models/category.dart';

class Product {
  Product(
    {
    required this.productName,
    required this.price,
    required this.discountedPrice,
    required this.categoryId,
    required this.detail,
    required this.subDetail,
    required this.productDetails,
    required this.images,
    required this.cardImage,
  }) : productId = uuid.v4();

  final String productId;
  final String productName;
  final int price;
  final int discountedPrice;
  final String categoryId;
  final String detail;
  final String subDetail;
  final ProductDetails productDetails;
  final String cardImage;
  final List<String> images;
}


class ProductDetails {
  const ProductDetails({
    required this.design,
    required this.material,
    required this.isHypoallergenic,
    required this.isDurable,
    this.occasion,
    this.color,
    this.waysToWear,
  });

  final String design;
  final String? waysToWear;
  final String material;
  final String isHypoallergenic;
  final String? occasion;
  final String? color;
  final String isDurable;

  @override
  String toString() {
    return '''
    Item Details:
    Design: $design
    Ways to Wear: $waysToWear
    Material: $material
    Hypoallergenic: $isHypoallergenic
    Occasion: $occasion
    Durability: $isDurable
    Color: $color
    ''';
  }
}
