import 'package:flutter/material.dart';
import 'package:watch_store/screens/mainscreen/cart_screen.dart';
import 'package:watch_store/screens/mainscreen/home_screen.dart';
import 'package:watch_store/screens/mainscreen/profile_screen.dart';
import 'package:watch_store/widgets/custom_navbar.dart';

class SelectedIndexPage {
  static const home = 0;
  static const cart = 1;
  static const profile = 2;
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectedIndex = SelectedIndexPage.home;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            left: 0,
            child: SizedBox(
              width: double.infinity,
              height: size.height,
              child: IndexedStack(
                index: selectedIndex,
                children: [
                  HomeScreen(),
                  CartScreen(),
                  ProfileScreen(),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Container(
                color: Colors.white,
                width: double.infinity,
                height: size.height * .1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CustomNavBar(
                      onTap: () => onSelectPage(index: SelectedIndexPage.profile),
                      svgPath: 'assets/svg/user.svg',
                      text: 'پروفایل',
                      isActive: selectedIndex == SelectedIndexPage.profile,
                    ),
                    CustomNavBar(
                      onTap: () => onSelectPage(index: SelectedIndexPage.cart),
                      svgPath: 'assets/svg/cart.svg',
                      text: 'سبد خرید',
                      isActive: selectedIndex == SelectedIndexPage.cart,
                    ),
                    CustomNavBar(
                      onTap: () => onSelectPage(index: SelectedIndexPage.home),
                      svgPath: 'assets/svg/home.svg',
                      text: 'خانه',
                      isActive: selectedIndex == SelectedIndexPage.home,
                    ),
                  ],
                )),
          ),
        ],
      ),
    );
  }

  onSelectPage({required index}) {
    setState(() {
      selectedIndex = index;
    });
  }
}
