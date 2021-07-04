import 'package:flutter/material.dart';
import 'package:testing_flutter/utils/app_colors.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({
    required this.onPressed,
    required this.title,
    this.margin = const EdgeInsets.symmetric(horizontal: 16.0),
    Key? key,
  }) : super(key: key);

  final VoidCallback onPressed;
  final String title;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 56,
      margin: margin,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          title.toUpperCase(),
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18.0,
          ),
        ),
        style: ElevatedButton.styleFrom(
          primary: AppColors.beige,
          onPrimary: Colors.black54,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(
                32.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
