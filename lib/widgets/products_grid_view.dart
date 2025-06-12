import 'package:flutter/material.dart';
import 'package:watch_store/gen/fonts.gen.dart';
import 'package:watch_store/resources/app_colors.dart';
import 'package:watch_store/resources/price_comma_ext.dart';
import 'package:watch_store/resources/ext.dart';

import '../gen/assets.gen.dart';

class ProductsGridView extends StatelessWidget {
  const ProductsGridView({
    super.key,
    required this.imagePath,
    required this.title,
    required this.price,
    required this.discountedPrice,
    required this.discount,
  });
  final String imagePath;
  final String title;
  final int price;
  final int discountedPrice;
  final int discount;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.all(8),
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
                    child: Text("${price.priceCommaExt} تومان"),
                  ),
                  Visibility(
                    visible: discountedPrice > 0 ? true : false,
                    child: Text(
                      discountedPrice.priceCommaExt,
                      style: TextStyle(
                        decoration: TextDecoration.lineThrough,
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
        ],
      ),
    );
  }
}
