import 'package:flutter/foundation.dart';
import 'package:intl/intl.dart';

@immutable
class ProductModel {
  const ProductModel({
    required this.imageUrl,
    required this.name,
    required this.price,
  });

  final String imageUrl;
  final String name;

  // [double] for demo purposes!
  final double price;

  String get displayPrice {
    return NumberFormat.simpleCurrency().format(price);
  }
}
