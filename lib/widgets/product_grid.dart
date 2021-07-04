import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:testing_flutter/widgets/product_card.dart';

class ProductGrid extends StatelessWidget {
  const ProductGrid({
    required this.images,
    this.nested = false,
    this.padding = const EdgeInsets.symmetric(horizontal: 16.0),
    Key? key,
  }) : super(key: key);

  /// Whether this [ScrollView] is nested inside another [ScrollView].
  ///
  /// Defaults to `false`.
  final bool nested;

  final List<String> images;

  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return StaggeredGridView.countBuilder(
      shrinkWrap: nested,
      physics: nested ? NeverScrollableScrollPhysics() : null,
      padding: padding,
      crossAxisCount: 4,
      mainAxisSpacing: 8.0,
      crossAxisSpacing: 8.0,
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
