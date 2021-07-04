import 'package:flutter/material.dart';

class PromotionCarousel extends StatelessWidget {
  const PromotionCarousel({
    this.margin = const EdgeInsets.symmetric(horizontal: 16.0),
    Key? key,
  }) : super(key: key);

  /// Defaults to `EdgeInsets.symmetric(horizontal: 16.0)`.
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 260,
      margin: margin,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.all(
          const Radius.circular(32.0),
        ),
      ),
    );
  }
}
