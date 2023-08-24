import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final double? buttonWidth; // ?表示可空
  final VoidCallback onPressed;
  final String text;

  const CustomElevatedButton(
      {super.key,
      this.buttonWidth,
      required this.onPressed,
      required this.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 42,
      width: buttonWidth ?? MediaQuery.of(context).size.width * 0.8,
      child: ElevatedButton(onPressed: onPressed, child: Text(text)),
    );
  }
}
