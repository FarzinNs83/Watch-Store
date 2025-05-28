import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:watch_store/resources/media_size.dart';

class CategoriesWidget extends StatelessWidget {
  final String title;
  final String svgPath;
  final List<Color> colors;
  final void Function()? onTap;

  const CategoriesWidget({
    super.key,
    required this.title,
    required this.svgPath,
    required this.colors,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Container(
            margin: EdgeInsets.all(8),
            height: ScreenSize.height * .09,
            width: ScreenSize.height * .09,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: colors,
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: ScreenSize.height * .08,
                  width: ScreenSize.height * .08,
                  child: SvgPicture.asset(
                    svgPath,
                    colorFilter: ColorFilter.mode(Colors.black, BlendMode.srcIn),
                  ),
                ),
              ],
            ),
          ),
        ),
        Text(
          title,
          style: TextStyle(
            fontFamily: 'dana',
            fontSize: 15,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
