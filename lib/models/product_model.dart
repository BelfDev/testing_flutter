import 'package:flutter/foundation.dart';
import 'package:intl/intl.dart';

@immutable
class ProductModel {
  const ProductModel({
    required this.id,
    required this.imageUrl,
    required this.name,
    required this.price,
  });

  final String id;
  final String imageUrl;
  final String name;

  // [double] for demo purposes!
  final double price;

  String get displayPrice {
    return NumberFormat.simpleCurrency().format(price);
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductModel &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          imageUrl == other.imageUrl &&
          name == other.name &&
          price == other.price;

  @override
  int get hashCode =>
      id.hashCode ^ imageUrl.hashCode ^ name.hashCode ^ price.hashCode;
}
