import 'package:flutter/material.dart';
import 'package:watch_store/gen/fonts.gen.dart';
import 'package:watch_store/resources/ext.dart';

class BasketScreen extends StatelessWidget {
  const BasketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Container(
              padding: 12.0.paddingAll,
              margin: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                BoxShadow(
                  color: Colors.black38,
                  blurRadius: 1,
                  spreadRadius: 1,
                  offset: Offset(0, 2)
                )
              ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'ارسال به آدرس',
                        style: TextStyle(
                          fontSize: 12,
                          fontFamily: FontFamily.dana,
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        'لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ ',
                        style: TextStyle(
                          fontSize: 12,
                          fontFamily: FontFamily.dana,
                        ),
                      ),
                    ],
                  ),
                  Icon(Icons.arrow_forward_ios),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
