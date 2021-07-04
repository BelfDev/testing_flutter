import 'package:flutter/foundation.dart';

@immutable
class SlideModel {
  const SlideModel({
    required this.imageUrl,
    required this.promotionText,
  });

  final String imageUrl;
  final String promotionText;
}
