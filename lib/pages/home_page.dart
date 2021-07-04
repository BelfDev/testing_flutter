import 'package:flutter/material.dart';
import 'package:testing_flutter/dummy_data.dart';
import 'package:testing_flutter/utils/app_colors.dart';
import 'package:testing_flutter/widgets/action_button.dart';
import 'package:testing_flutter/widgets/product_grid.dart';
import 'package:testing_flutter/widgets/promotion_carousel.dart';
import 'package:testing_flutter/widgets/promotion_slide.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.navyBlue,
      appBar: AppBar(
        backgroundColor: AppColors.paleGreen,
        title: Text(
          'Packie',
          style: TextStyle(
            color: AppColors.white,
            fontSize: 24.0,
          ),
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 16.0),
              PromotionCarousel(
                slides: [
                  PromotionSlide(imageUrl: galleryImages[0]),
                  PromotionSlide(imageUrl: galleryImages[1]),
                  PromotionSlide(imageUrl: galleryImages[2]),
                ],
              ),
              SizedBox(height: 16.0),
              ActionButton(
                title: 'Take me somewhere nice',
                onPressed: () {},
              ),
              SizedBox(height: 16.0),
              ProductGrid(
                nested: true,
                images: galleryImages,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
