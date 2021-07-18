import 'package:flutter_test/flutter_test.dart';
import 'package:testing_flutter/models/cart_item_model.dart';
import 'package:testing_flutter/models/cart_model.dart';
import 'package:testing_flutter/models/product_model.dart';

void main() {
  group('Cart:', () {
    late Cart mockCart;

    setUp(() {
      mockCart = Cart();
    });

    test('should add a cart item successfully when the product is valid', () {
      // Given: the initial context at the beginning of the scenario
      const productPrice = 300.0;
      const product = ProductModel(
        id: '1',
        imageUrl: 'https://picsum.photos/id/1015/400/500',
        name: 'Norway',
        price: productPrice,
      );

      // When: the event that triggers the scenario
      mockCart.add(product);

      // Then: the expected outcome
      final expectedOutcome = <CartItem>[
        CartItem(
          quantity: 1,
          product: product,
        ),
      ];

      expect(mockCart.cartItems, equals(expectedOutcome));
      expect(mockCart.total, equals(productPrice));
    });

    test('should update cart item quantity when a product already exists', () {
      // Given: the initial context at the beginning of the scenario
      const productPrice = 300.0;
      const product = ProductModel(
        id: '1',
        imageUrl: 'https://picsum.photos/id/1015/400/500',
        name: 'Norway',
        price: productPrice,
      );
      const quantity = 5;

      final wishlist = List.filled(quantity, product);

      // When: the event that triggers the scenario
      wishlist.forEach((product) => mockCart.add(product));

      // Then: the expected outcome
      final expectedOutcome = <CartItem>{
        CartItem(
          quantity: quantity,
          product: product,
        ),
      };
      final expectedTotal = quantity * productPrice;

      expect(mockCart.cartItems, equals(expectedOutcome));
      expect(mockCart.total, equals(expectedTotal));
    });
  });
}
