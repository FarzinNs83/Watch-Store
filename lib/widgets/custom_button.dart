import 'package:flutter/material.dart';
import 'package:watch_store/resources/media_size.dart';

class CustomButton extends StatelessWidget {
  final Function()? onPressed;
  final String text;
  const CustomButton({super.key, required this.onPressed, required this.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: ScreenSize.height * 0.06,
      width: ScreenSize.width * 0.80,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(text, style: TextStyle(fontSize: 14)),
      ),
    );
  }
}
