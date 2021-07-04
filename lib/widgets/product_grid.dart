import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:testing_flutter/widgets/product_card.dart';

class ProductGrid extends StatelessWidget {
  const ProductGrid({
    required this.images,
    this.nested = false,
    this.margin = const EdgeInsets.symmetric(horizontal: 16.0),
    Key? key,
  }) : super(key: key);

  /// Whether this [ScrollView] is nested inside another [ScrollView].
  ///
  /// Defaults to `false`.
  final bool nested;

  final List<String> images;

  /// Defaults to `EdgeInsets.symmetric(horizontal: 16.0)`.
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return StaggeredGridView.countBuilder(
      shrinkWrap: nested,
      physics: nested ? NeverScrollableScrollPhysics() : null,
      padding: margin,
      crossAxisCount: 4,
      mainAxisSpacing: 16.0,
      crossAxisSpacing: 16.0,
      staggeredTileBuilder: (index) => StaggeredTile.count(
        2,
        index.isOdd ? 3 : 2,
      ),
      itemCount: images.length,
      itemBuilder: (context, index) => ProductCard(
        imageUrl: images[index],
      ),
    );
  }
}
