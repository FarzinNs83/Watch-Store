import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:watch_store/gen/assets.gen.dart';
import 'package:watch_store/gen/fonts.gen.dart';
import 'package:watch_store/resources/media_size.dart';
import 'package:watch_store/resources/sized_box_ext.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final String image;
  const MainAppBar({super.key, required this.title, this.image = ''});

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(ScreenSize.height * .1),
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 4,
              offset: Offset(0, 0),
              spreadRadius: 2,
            ),
          ],
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(8),
            bottomRight: Radius.circular(8),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.close, color: Color(0xFF707070)),
            ),
            Row(
              children: [
                SvgPicture.asset(image),
                12.width,
                Text(
                  title,
                  style: TextStyle(
                    fontFamily: FontFamily.dana,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            Stack(
              children: [
                SvgPicture.asset(
                  Assets.svg.basket,
                  colorFilter: ColorFilter.mode(Colors.black, BlendMode.srcIn),
                ),
                Positioned(
                  child: Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                    child: Text("2", style: TextStyle(color: Colors.white)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(ScreenSize.height * .1);
}
