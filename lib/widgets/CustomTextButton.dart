import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  final String text;
  final Color backgroundColor;
  final Color textColor;
  final VoidCallback onPressed;
  final double borderRadius;
  final double fontSize;

  const CustomTextButton({
    Key? key,
    required this.text,
    required this.backgroundColor,
    required this.textColor,
    required this.onPressed,
    this.borderRadius = 8.0,
    this.fontSize = 16.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: backgroundColor, // Set background color
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius), // Rounded corners
        ),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
          color: textColor, // Set text color
          fontSize: fontSize, // Set font size
        ),
      ),
    );
  }
}
