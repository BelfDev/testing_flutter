import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:testing_flutter/utils/app_colors.dart';

class PromotionSlide extends StatelessWidget {
  const PromotionSlide({
    required this.imageUrl,
    required this.text,
    Key? key,
  }) : super(key: key);

  final String imageUrl;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          colorFilter: new ColorFilter.mode(
            Colors.black.withOpacity(0.3),
            BlendMode.srcOver,
          ),
          image: NetworkImage(
            imageUrl,
          ),
        ),
      ),
      child: Center(
        child: Container(
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(16.0),
              ),
              border: Border.all(
                color: AppColors.white,
                width: 2.0,
              )),
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: AppColors.white,
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
