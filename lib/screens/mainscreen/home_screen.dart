import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:watch_store/resources/app_colors.dart';
import 'package:watch_store/resources/app_strings.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Colors.blue,
        body: SingleChildScrollView(
      child: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Container(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.searchBar,
                  borderRadius: BorderRadius.circular(40),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.shadow,
                      offset: Offset(0, 5),
                      blurRadius: 6,
                    )
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SvgPicture.asset('assets/svg/search.svg'),
                    Text(
                      AppStrings.searchProduct,
                      style: TextStyle(
                        fontFamily: 'dana',
                        fontSize: 14,
                        color: Color.fromARGB(255, 171, 171, 171),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset('assets/png/main_logo.png'),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
