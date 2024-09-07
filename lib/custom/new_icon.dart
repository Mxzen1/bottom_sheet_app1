import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final double width;
  final double height;
  final Color color;
  final String text;
  final Function()? onPressed;
  final Color colorText;
  final BoxBorder? border;
  const CustomIconButton(
      {super.key,
      this.width = 250,
      this.height = 60,
      required this.color,
      required this.text,
      this.onPressed,
      this.colorText = Colors.black,
      this.border});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        border: border,
        color: color,
        borderRadius: BorderRadius.circular(12),
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Text(
          text,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: colorText,
          ),
        ),
      ),
    );
  }
}