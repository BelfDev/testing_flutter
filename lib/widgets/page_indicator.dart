import 'package:flutter/material.dart';
import 'package:testing_flutter/utils/app_colors.dart';

class PageIndicator extends StatelessWidget {
  const PageIndicator({
    required this.count,
    required this.activeIndex,
    this.dotSize = 10.0,
    this.animationDuration = const Duration(milliseconds: 180),
    this.padding = const EdgeInsets.only(bottom: 16.0),
    Key? key,
  }) : super(key: key);

  final int count;
  final int activeIndex;
  final double dotSize;
  final Duration animationDuration;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
          count,
          (index) => _IndicatorDot(
            size: dotSize,
            active: index == activeIndex,
            inactiveColor: AppColors.beige,
            activeColor: AppColors.white,
            animationDuration: animationDuration,
          ),
        ),
      ),
    );
  }
}

class _IndicatorDot extends StatelessWidget {
  const _IndicatorDot({
    required this.size,
    required this.active,
    required this.inactiveColor,
    required this.activeColor,
    required this.animationDuration,
    Key? key,
  }) : super(key: key);

  final double size;
  final bool active;
  final Color inactiveColor;
  final Color activeColor;
  final Duration animationDuration;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: animationDuration,
      margin: EdgeInsets.symmetric(horizontal: 4.0),
      height: active ? size + 2.0 : size,
      width: active ? size + 2.0 : size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: active ? activeColor : inactiveColor,
        boxShadow: [
          BoxShadow(
            color: Colors.black54,
            blurRadius: 8.0,
            spreadRadius: 2.0,
          )
        ],
      ),
    );
  }
}
