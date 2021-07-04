import 'package:testing_flutter/models/product_model.dart';
import 'package:testing_flutter/models/slide_model.dart';

const _baseImageURL = 'https://picsum.photos/id';

const _targetResolution = '400/500';

const _images = const <String>[
  '$_baseImageURL/1015/$_targetResolution',
  '$_baseImageURL/10/$_targetResolution',
  '$_baseImageURL/1011/$_targetResolution',
  '$_baseImageURL/1016/$_targetResolution',
  '$_baseImageURL/1022/$_targetResolution',
  '$_baseImageURL/1023/$_targetResolution',
  '$_baseImageURL/103/$_targetResolution',
  '$_baseImageURL/1036/$_targetResolution',
  '$_baseImageURL/101/$_targetResolution',
];

final products = [
  ProductModel(
    imageUrl: _images[0],
    name: 'Norway',
    price: 300.0,
  ),
  ProductModel(
    imageUrl: _images[1],
    name: 'Canada',
    price: 500.0,
  ),
  ProductModel(
    imageUrl: _images[2],
    name: 'Chile',
    price: 400.0,
  ),
  ProductModel(
    imageUrl: _images[3],
    name: 'Texas',
    price: 250.0,
  ),
  ProductModel(
    imageUrl: _images[4],
    name: 'Finland',
    price: 800.0,
  ),
  ProductModel(
    imageUrl: _images[5],
    name: 'Germany',
    price: 500.0,
  ),
  ProductModel(
    imageUrl: _images[6],
    name: 'Chicago',
    price: 350.0,
  ),
  ProductModel(
    imageUrl: _images[7],
    name: 'Russia',
    price: 1000.0,
  ),
  ProductModel(
    imageUrl: _images[8],
    name: 'Hamburg',
    price: 450.0,
  ),
];

final promotionSlides = [
  SlideModel(
    imageUrl: products[0].imageUrl,
    promotionText: '${products[0].name}\n50% OFF',
  ),
  SlideModel(
    imageUrl: products[1].imageUrl,
    promotionText: '${products[1].name}\n40% OFF',
  ),
  SlideModel(
    imageUrl: products[2].imageUrl,
    promotionText: '${products[2].name}\n60% OFF',
  ),
];
