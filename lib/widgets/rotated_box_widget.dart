import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:watch_store/gen/assets.gen.dart';
import 'package:watch_store/gen/fonts.gen.dart';
import 'package:watch_store/resources/ext.dart';

class RotatedBoxWidget extends StatelessWidget {
  const RotatedBoxWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RotatedBox(
      quarterTurns: -1,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Text(
                "مشاهده همه",
                style: TextStyle(
                  fontFamily: FontFamily.dana,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              6.width,
              RotatedBox(
                quarterTurns: 1,
                child: SvgPicture.asset(Assets.svg.back, height: 24),
              ),
            ],
          ),
          28.height,
          Text(
            "شگفت انگیز",
            style: TextStyle(
              fontFamily: FontFamily.dana,
              fontSize: 32,
              fontWeight: FontWeight.w300,
              color: Color(0xFF391850),
            ),
          ),
        ],
      ),
    );
  }
}