import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:testing_flutter/models/product_model.dart';
import 'package:testing_flutter/repositories/product_repository.dart';

import 'product_catalog_bloc_test.mocks.dart';

@GenerateMocks([ProductRepository])
Future<void> main() async {
  // ...

  test('sample test', () {
    final products = [
      ProductModel(
        id: '1',
        imageUrl: 'https://picsum.photos/id/1015/400/500',
        name: 'Norway',
        price: 300.00,
      ),
    ];
    final mockRepo = MockProductRepository();

    when(
      mockRepo.products(),
    ).thenAnswer(
      (_) async => products,
    );

    verify(mockRepo.products()).called(greaterThan(1));

    // bloc.add(const Event.productCatalogRequested());
    // ...
  });

  // ...
}
