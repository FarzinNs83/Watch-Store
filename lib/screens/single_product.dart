import 'package:flutter/material.dart';
import 'package:watch_store/gen/assets.gen.dart';
import 'package:watch_store/gen/fonts.gen.dart';
import 'package:watch_store/resources/price_comma_ext.dart';
import 'package:watch_store/resources/ext.dart';
import 'package:watch_store/widgets/main_app_bar.dart';

class SingleProduct extends StatelessWidget {
  const SingleProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomAppBar(
          color: Colors.white,
          child: SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'افزودن به سبد خرید',
                    style: TextStyle(fontSize: 14),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      height: 26,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Color(0xFFFF3A3A),
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: Center(
                        child: Text(
                          "20%",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text("${63500.priceCommaExt} تومان"),
                        Text(
                          122500.priceCommaExt,
                          style: TextStyle(
                            decoration: TextDecoration.lineThrough,
                            fontFamily: FontFamily.dana,
                            fontSize: 13,
                            fontWeight: FontWeight.w300,
                            color: Color(0xFFBFBFBF),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        appBar: MainAppBar(title: 'ساعت شیائومی mi Watch lite', height: context.height * .1,),
        body: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(Assets.png.watch1.path),
                16.height,
                Container(
                  margin: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 1,
                        blurRadius: 1,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 16,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "بنسر",
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: FontFamily.dana,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        8.height,
                        Text(
                          "مسواک بنسر مدل اکسترا با برس متوسط 3 عددی",
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: FontFamily.dana,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        12.height,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'خصوصیات',
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: FontFamily.dana,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              "نقد و بررسی",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: FontFamily.dana,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              "نظرات",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: FontFamily.dana,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        24.height,
                        Text(
                          '''لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد. کتابهای زیادی در شصت و سه درصد گذشته، حال و آینده شناخت فراوان جامعه و متخصصان را می طلبد تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی و فرهنگ پیشرو در زبان فارسی ایجاد کرد. در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها و شرایط سخت تایپ به پایان رسد وزمان مورد نیاز شامل حروفچینی دستاوردهای اصلی و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.''',
                          style: TextStyle(
                            fontFamily: FontFamily.dana,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
