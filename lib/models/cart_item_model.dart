import 'package:flutter/foundation.dart';
import 'package:testing_flutter/models/product_model.dart';

@immutable
class CartItem {
  CartItem({
    required this.quantity,
    required this.product,
  });

  final int quantity;
  final ProductModel product;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CartItem &&
          runtimeType == other.runtimeType &&
          quantity == other.quantity &&
          product == other.product;

  @override
  int get hashCode => quantity.hashCode ^ product.hashCode;
}
