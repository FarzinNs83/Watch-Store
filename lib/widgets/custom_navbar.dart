// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:watch_store/components/extentions.dart';

class CustomNavBar extends StatelessWidget {
  final Function() onTap;
  final String svgPath;
  final String text;
  bool isActive;
   CustomNavBar({
    super.key,
    required this.onTap,
    required this.svgPath,
    required this.text,
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: GestureDetector(
        onTap: onTap,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              svgPath,
              colorFilter: isActive
                  ? ColorFilter.mode(Colors.black, BlendMode.srcIn)
                  : ColorFilter.mode(Colors.grey, BlendMode.srcIn),
            ),
            4.height,
            Text(
              text,
              style: TextStyle(color: isActive ? Colors.black : Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
