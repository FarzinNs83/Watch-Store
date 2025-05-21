import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:watch_store/gen/assets.gen.dart';
import 'package:watch_store/resources/app_colors.dart';
import 'package:watch_store/resources/app_strings.dart';
import 'package:watch_store/resources/media_size.dart';
import 'package:watch_store/resources/sized_box_ext.dart';
import 'package:watch_store/widgets/carousel_slider_widget.dart';
import 'package:watch_store/widgets/categories_widgets.dart';
import 'package:watch_store/widgets/search_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          bottom: false,
          child: Column(
            children: [
              CustomSearchBar(),
              16.height,
              CarouselSliderWidget(),
              24.height,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CategoriesWidget(
                    title: AppStrings.classicCategory,
                    svgPath: Assets.svg.classic,
                    colors: LinearColors.classicCategory,
                    onTap: () {},
                  ),
                  CategoriesWidget(
                    title: AppStrings.smartcCategory,
                    svgPath: Assets.svg.smart,
                    colors: LinearColors.smartCategory,
                    onTap: () {},
                  ),
                  CategoriesWidget(
                    title: AppStrings.digitalCategory,
                    svgPath: Assets.svg.digital,
                    colors: LinearColors.digitalCategory,
                    onTap: () {},
                  ),
                  CategoriesWidget(
                    title: AppStrings.desktopCategory,
                    svgPath: Assets.svg.desktop,
                    colors: LinearColors.desktopCategory,
                    onTap: () {},
                  ),
                ],
              ),
              24.height,
              SingleChildScrollView(
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
                                    fontFamily: 'dana',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                6.width,
                                RotatedBox(
                                  quarterTurns: 1,
                                  child: SvgPicture.asset(
                                    Assets.svg.back,
                                    height: 24,
                                  ),
                                ),
                              ],
                            ),
                            28.height,
                            Text(
                              "شگفت انگیز",
                              style: TextStyle(
                                fontFamily: 'dana',
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
                              margin: EdgeInsets.all(8),
                              height: 270,
                              width: 200,
                              color: Colors.red,
                            );
                          },
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
    );
  }
}
