import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:watch_store/gen/assets.gen.dart';
import 'package:watch_store/resources/app_colors.dart';
import 'package:watch_store/resources/media_size.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: ScreenSize.height * .07,
        width: double.infinity,
    
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(32),
          boxShadow: [
            BoxShadow(
              color: AppColors.shadow,
              blurRadius: 3,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(Assets.png.watch.path),
            Text("جستجوی محصولات"),
            SvgPicture.asset(Assets.svg.search),
          ],
        ),
      ),
    );
  }
}