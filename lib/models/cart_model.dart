import 'package:testing_flutter/models/cart_item_model.dart';
import 'package:testing_flutter/models/product_model.dart';

/// Model class used to represent a fictitious Cart entity.
///
/// For demonstration purposes, this class also includes logic to manipulate cart
/// values.
///
/// Warning: this model is not wired-up with the demo app. It's being used only
/// for unit testing.
class Cart {
  Cart() : total = 0.0;

  /// Provides easy access to [CartItem] by product id.
  Map<String, CartItem> _cartItemMap = {};

  List<CartItem> get cartItems => _cartItemMap.values.toList();

  // [double] for demo purposes!
  double total;

  /// Adds a product to the [cartItems] list and updates the [total] value from
  /// this [Cart].
  void add(ProductModel product) {
    // Defaults the product quantity to `1`.
    int quantity = 1;

    // Checks whether a [CartItem] with this product id was previously added
    if (_cartItemMap.containsKey(product.id)) {
      final previousCartItem = _cartItemMap[product.id]!;
      // Updates the quantity according to the previous cart item
      quantity += previousCartItem.quantity;
    }

    // Creates a cart item
    final cartItem = CartItem(
      quantity: quantity,
      product: product,
    );

    // Updates the [_cartItemMap].
    _cartItemMap[product.id] = cartItem;

    // Updates the total value
    total += product.price;
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Cart &&
          runtimeType == other.runtimeType &&
          _cartItemMap == other._cartItemMap &&
          total == other.total;

  @override
  int get hashCode => _cartItemMap.hashCode ^ total.hashCode;
}
