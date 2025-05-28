import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:watch_store/gen/assets.gen.dart';
import 'package:watch_store/gen/fonts.gen.dart';
import 'package:watch_store/resources/app_colors.dart';
import 'package:watch_store/resources/price_comma_ext.dart';
import 'package:watch_store/resources/sized_box_ext.dart';
import 'package:watch_store/resources/time_extention.dart';

class SpecialOfferWidget extends StatelessWidget {
  const SpecialOfferWidget({
    super.key,
    required this.imagePath,
    required this.title,
    required this.price,
    this.discountedPrice = 0,
    this.time = 0,
    this.discount = 0,
  });
  final String imagePath;
  final String title;
  final int price;
  final int discountedPrice;
  final int discount;
  final int time;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            RotatedBox(
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
            ),
            28.width,
            SizedBox(
              height: 300,
              child: ListView.builder(
                physics: ClampingScrollPhysics(),
                itemCount: 8,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.all(8),
                    margin: EdgeInsets.all(8),
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: LinearColors.specialOfferContainer,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(Assets.png.unnamed.path),
                        8.height,
                        Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            title,
                            style: TextStyle(
                              fontSize: 13,
                              fontFamily: FontFamily.dana,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        10.height,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Visibility(
                              visible: discount > 0 ? true : false,
                              child: Container(
                                padding: EdgeInsets.all(4),
                                height: 26,
                                width: 40,
                                decoration: BoxDecoration(
                                  color: Color(0xFFFF3A3A),
                                  borderRadius: BorderRadius.circular(24),
                                ),
                                child: Center(
                                  child: Text(
                                    "$discount%",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Visibility(
                                  visible: price > 0 ? true : false,
                                  child: Text(
                                    "${price.priceCommaExt} تومان",
                                  ),
                                ),
                                Visibility(
                                  visible: discountedPrice > 0 ? true : false,
                                  child: Text(
                                    discountedPrice.priceCommaExt,
                                    style: TextStyle(
                                      fontFamily: FontFamily.dana,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w300,
                                      color: Color(0xFFBFBFBF),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Visibility(
                          visible: time > 0 ? true : false,
                          child: Divider(
                            color: Color(0xFF0075FB),
                            endIndent: 20,
                            indent: 20,
                          ),
                        ),
                        Visibility(
                          visible: time > 0 ? true : false,
                          child: Text(
                            time.split,
                            style: TextStyle(
                              color: Color(0xFF0075FB),
                              fontFamily: FontFamily.dana,
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
