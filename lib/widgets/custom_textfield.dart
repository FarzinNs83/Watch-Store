import 'package:flutter/material.dart';
import 'package:watch_store/components/extentions.dart';
import 'package:watch_store/resources/app_dimensions.dart';
import 'package:watch_store/resources/app_strings.dart';

class CustomTextfield extends StatelessWidget {
  final String lable;
  final String hint;
  final Widget icon;
  TextEditingController controller;
  TextAlign textAlign;

  CustomTextfield(
      {super.key,
      required this.controller,
      required this.lable,
      required this.hint,
      this.icon = const SizedBox(),
      this.textAlign = TextAlign.center});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(lable),
        AppDimensions.small.height,
        SizedBox(
          width: size.width * .75,
          height: size.height * .07,
          child: TextField(
            textAlign: textAlign,
            keyboardType: TextInputType.numberWithOptions(),
            controller: controller,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                focusedBorder:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                hintText: hint),
          ),
        )
      ],
    );
  }
}
