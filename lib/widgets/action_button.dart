import 'package:flutter/material.dart';

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
        child: Text(title),
        style: ElevatedButton.styleFrom(
          primary: Colors.lightBlue,
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
