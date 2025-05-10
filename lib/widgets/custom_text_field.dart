import 'package:flutter/material.dart';
import 'package:watch_store/resources/media_size.dart';
import 'package:watch_store/resources/sized_box_ext.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hint;
  final String title;
  final String prefixTitle;
  final Widget icon;
  final TextAlign textAlign;
  const CustomTextField({
    super.key,
    required this.controller,
    required this.hint,
    this.icon = const SizedBox(),
    required this.title,
    this.prefixTitle = '',
    this.textAlign = TextAlign.center,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Column(
        children: [
          SizedBox(
            width: ScreenSize.width * 0.80,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text(title), Text(prefixTitle)],
            ),
          ),
          12.height,
          SizedBox(
            height: ScreenSize.height * 0.07,
            width: ScreenSize.width * 0.80,
            child: TextField(
              controller: controller,
              textAlign: TextAlign.center,
              decoration: InputDecoration(hintText: hint, prefixIcon: icon),
            ),
          ),
        ],
      ),
    );
  }
}
