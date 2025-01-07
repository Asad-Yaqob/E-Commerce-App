import 'package:flutter/material.dart';

import 'package:capjewel/models/category.dart';
import 'package:capjewel/models/product.dart';
import 'package:capjewel/ui/screens/cart/cart.dart';
import 'package:capjewel/ui/screens/order/order.dart';

List<Category> sampleCategories = [
  Category(categoryName: 'Necklace'),
  Category(categoryName: 'Bracelets'),
  Category(categoryName: 'Rings'),
  Category(categoryName: 'Hot Deals'),
];

final List<Product> sampleProducts = [
  Product(
    productName: 'four leaf clover swing ring',
    price: 999,
    discountedPrice: 1499,
    categoryId: sampleCategories[0].categoryId,
    detail:
        'Introducing the Four Leaf Clover Heart Necklace—a versatile 4-in-1 pendant that transforms to match your style. Wear it closed as a lucky clover or open it to reveal a heart, capturing both elegance and charm in one piece. Crafted from durable stainless steel, this necklace is hypoallergenic and water-resistant, making it perfect for everyday wear without compromising on quality.Available in a classic Golden finish, this timeless piece adds a touch of sophistication to any look, whether casual or formal.',
    subDetail:
        'Embrace elegance with the Four Leaf Clover Necklace in luxurious gold. Crafted from premium stainless steel with a foldable heart-shaped design, this stylish piece combines luck and charm. A magnetic clasp ensures a secure, sophisticated fit, perfect for any occasion.',
    productDetails: const ProductDetails(
        design: 'One pendant, multiple looks – versatile for any occasion.',
        material: 'Long-lasting, premium material.',
        isHypoallergenic: 'Safe for sensitive skin and nickel-free.',
        occasion: 'Perfect for gifting, casual wear, or special occasions.',
        isDurable: 'Water-resistant and designed for long-lasting wear.'),
    cardImage: 'assets/products/card-ring.png',
    images: [
      'assets/products/ring-1.png',
      'assets/products/ring-2.png',
      'assets/products/ring-3.png',
      'assets/products/ring-4.png',
    ],
  ),
  Product(
    productName: 'four leaf clover heart necklace',
    price: 999,
    discountedPrice: 1499,
    categoryId: sampleCategories[1].categoryId,
    detail:
        'The Four Leaf Clover Swing Ring is a unique and captivating piece that features a delicate four-leaf clover design that swings freely, creating a dynamic and charming look. Crafted from premium stainless steel and finished in shiny silver, this ring combines luck and elegance. Whether worn as a lucky charm or a statement piece, the swinging motion of the clover adds an extra layer of charm to this meaningful accessory.',
    subDetail:
        'Add a touch of charm and good fortune with the Four Leaf Clover Swing Ring, designed to move with you for extra elegance.',
    productDetails: const ProductDetails(
        waysToWear:
            ' Close the pendant to wear as a four-leaf clover or open it for a heart design',
        design: 'Swinging four-leaf clover charm for added movement.',
        material: 'High-quality stainless steel with a shiny silver finish.',
        isHypoallergenic: 'Safe and comfortable for sensitive skin',
        occasion: 'Perfect for gifting, casual wear, or special occasions.',
        isDurable: 'Durable for daily use and all-weather wear.',
        color: 'Classic Golden finish that complements any outfit.'),
    cardImage: 'assets/products/card-necklace.png',
    images: [
      'assets/products/necklace-1.png',
      'assets/products/necklace-2.png',
    ],
  ),
  Product(
    productName: 'sparkling heart charm bracelet',
    price: 1149,
    discountedPrice: 1799,
    categoryId: sampleCategories[2].categoryId,
    detail:
        'The Sparkling Heart Charm Bracelet is a stunning symbol of love and beauty. Designed to catch the light, this bracelet features a heart-shaped charm with dazzling details, crafted from high-quality stainless steel with a shimmering silver finish. Perfect for everyday wear or special occasions, this bracelet adds a touch of sparkle and sentiment to any look.',
    subDetail:
        'Radiate love and elegance with the Sparkling Heart Charm Bracelet, a timeless piece that shines with every movement.',
    productDetails: const ProductDetails(
      design: ' Heart-shaped charm with sparkling details.',
      material: 'High-quality stainless steel with a shimmering silver finish.',
      isHypoallergenic: ' Safe for sensitive skin and nickel-free.',
      occasion: ' Ideal for gifting, casual outings, or formal events.',
      isDurable: 'Water-resistant, perfect for long-term wear.',
    ),
    cardImage: 'assets/products/card-bracelet.png',
    images: [
      'assets/products/bracelet-1.png',
      'assets/products/bracelet-2.png',
      'assets/products/bracelet-3.png',
    ],
  ),
];

const List<String> sampleBanners = [
  'assets/banners/banner-1.jpeg',
  'assets/banners/banner-2.jpg',
  'assets/banners/banner-3.jpg',
];

final accountSettings = <Map<String, Object>>[
  {
    'icon': Icons.home,
    'title': 'My Addresses',
    'subTitle': 'Set shopping delivery addresses',
    'onPressedTile': (BuildContext context) {},
  },
  {
    'icon': Icons.shopping_cart,
    'title': 'My Cart',
    'subTitle': 'View and manage your shopping cart',
    'onPressedTile': (BuildContext context) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const CartScreen(),
        ),
      );
    },
  },
  {
    'icon': Icons.library_books,
    'title': 'My Orders',
    'subTitle': 'View your order history and status',
    'onPressedTile': (BuildContext context) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const OrderScreen(),
        ),
      );
    },
  },
  {
    'icon': Icons.account_balance,
    'title': 'Bank Account',
    'subTitle': 'Withdraw balance from registered bank account',
    'onPressedTile': (BuildContext context) {},
  },
  {
    'icon': Icons.library_books,
    'title': 'My Coupons',
    'subTitle': 'List of the discounted coupons',
    'onPressedTile': (BuildContext context) {},
  },
  {
    'icon': Icons.notifications_active,
    'title': 'Notifications',
    'subTitle': 'View your order history and status',
    'onPressedTile': (BuildContext context) {},
  },
  {
    'icon': Icons.person,
    'title': 'Account Privacy',
    'subTitle': 'Manage your account privacy settings',
    'onPressedTile': (BuildContext context) {},
  },
];

final appSettings = <Map<String, Object>>[
  {
    'icon': Icons.cloud_upload,
    'title': 'Load Data',
    'subTitle': 'Load data from the cloud',
  },
  {
    'icon': Icons.location_history,
    'title': 'Geolocation',
    'subTitle': 'Enable location services',
    'trailing': Switch(value: false, onChanged: (value) {})
  },
  {
    'icon': Icons.security,
    'title': 'Safe Mode',
    'subTitle': 'Enable safe mode',
    'trailing': Switch(value: true, onChanged: (value) {})
  },
  {
    'icon': Icons.image,
    'title': 'Hd Image Quantity',
    'subTitle': 'Enable high-quality images',
    'trailing': Switch(value: false, onChanged: (value) {})
  }
];
