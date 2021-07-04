import 'package:flutter/material.dart';
import 'package:testing_flutter/models/product_model.dart';
import 'package:testing_flutter/utils/app_colors.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    required this.imageUrl,
    required this.title,
    required this.formattedPrice,
    Key? key,
  }) : super(key: key);

  ProductCard.fromModel(ProductModel model)
      : imageUrl = model.imageUrl,
        title = model.name,
        formattedPrice = model.displayPrice;

  final String imageUrl;
  final String title;
  final String formattedPrice;

  @override
  Widget build(BuildContext context) {
    final labelStyle = TextStyle(
      color: AppColors.white,
      backgroundColor: Colors.black54,
      fontWeight: FontWeight.bold,
      fontSize: 18.0,
    );

    return Card(
      margin: EdgeInsets.zero,
      clipBehavior: Clip.antiAlias,
      elevation: 0.0,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(
            32.0,
          ),
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
              imageUrl,
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0, bottom: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: labelStyle,
              ),
              const SizedBox(height: 8.0),
              Text(
                formattedPrice,
                style: labelStyle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
