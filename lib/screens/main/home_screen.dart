import 'package:flutter/material.dart';
import 'package:watch_store/gen/assets.gen.dart';
import 'package:watch_store/resources/app_colors.dart';
import 'package:watch_store/resources/app_strings.dart';
import 'package:watch_store/resources/ext.dart';
import 'package:watch_store/widgets/carousel_slider_widget.dart';
import 'package:watch_store/widgets/categories_widgets.dart';
import 'package:watch_store/widgets/search_bar.dart';
import 'package:watch_store/widgets/special_offer_widget.dart';

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
              SpecialOfferWidget(
                imagePath: Assets.png.unnamed.path,
                title: 'ساعت مردانه نیوفورس',
                price: 120000,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
