import 'package:flutter/material.dart';
import 'package:watch_store/resources/ext.dart';

class CustomButton extends StatelessWidget {
  final Function()? onPressed;
  final String text;
  const CustomButton({super.key, required this.onPressed, required this.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height * 0.06,
      width: context.width * 0.80,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(text, style: TextStyle(fontSize: 14)),
      ),
    );
  }
}
