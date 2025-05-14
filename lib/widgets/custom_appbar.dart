import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:watch_store/resources/media_size.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget{
  final String title;
  final String icon;
  const CustomAppBar({super.key, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(ScreenSize.height * .06),

      child: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title, style: TextStyle(fontSize: 16)),
            SvgPicture.asset(icon),
          ],
        ),
      ),
    );
  }
  
  @override
  Size get preferredSize => Size.fromHeight(ScreenSize.height * .06);
}
