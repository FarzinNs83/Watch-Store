import 'package:flutter/material.dart';
import 'package:watch_store/components/extentions.dart';
import 'package:watch_store/resources/app_dimensions.dart';

class CustomTextfield extends StatelessWidget {
  final String lable;
  final String prefixLable;
  final String hint;
  final Widget icon;
  TextEditingController controller;
  TextAlign textAlign;

  CustomTextfield({
    super.key,
    required this.controller,
    required this.lable,
    required this.hint,
    this.prefixLable = '',
    this.icon = const SizedBox(),
    this.textAlign = TextAlign.center,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        SizedBox(
          width: size.width * .75,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(prefixLable),
              Text(lable),
            ],
          ),
        ),
        AppDimensions.small.height,
        SizedBox(
          width: size.width * .75,
          height: size.height * .07,
          child: TextField(
            textAlign: textAlign,
            keyboardType: TextInputType.numberWithOptions(),
            controller: controller,
            decoration: InputDecoration(
              hintText: hint,
              prefixIcon: icon,
              isDense: true,
            ),
          ),
        )
      ],
    );
  }
}
