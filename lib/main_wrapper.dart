import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:watch_store/gen/assets.gen.dart';
import 'package:watch_store/resources/app_colors.dart';
import 'package:watch_store/resources/media_size.dart';
import 'package:watch_store/resources/sized_box_ext.dart';
import 'package:watch_store/screens/main/basket_screen.dart';
import 'package:watch_store/screens/main/home_screen.dart';
import 'package:watch_store/screens/main/profile_screen.dart';
import 'package:watch_store/widgets/nav_bar_items.dart';

class NavBarIndex {
  NavBarIndex._();
  static const home = 0;
  static const basket = 1;
  static const profile = 2;
}

class MainWrapper extends StatefulWidget {
  const MainWrapper({super.key});

  @override
  State<MainWrapper> createState() => _MainWrapperState();
}

class _MainWrapperState extends State<MainWrapper> {
  int selectedPage = NavBarIndex.home;
  final GlobalKey<NavigatorState> _home = GlobalKey();
  final GlobalKey<NavigatorState> _basket = GlobalKey();
  final GlobalKey<NavigatorState> _profile = GlobalKey();
  late Map keyMap = {
    NavBarIndex.home: _home,
    NavBarIndex.basket: _basket,
    NavBarIndex.profile: _profile,
  };
  final List<int> _routeHistory = [NavBarIndex.home];
  Future<bool> canPop() async {
    if (keyMap[selectedPage].currentState.canPop()) {
      keyMap[selectedPage].currentState!.pop();
    } else if (_routeHistory.length > 1) {
      setState(() {
        _routeHistory.removeLast();
        selectedPage = _routeHistory.last;
      });
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (_, _) => canPop(),
      child: Scaffold(
        body: Stack(
          children: [
            Positioned(
              left: 0,
              top: 0,
              right: 0,
              bottom: ScreenSize.height * .1,
              child: IndexedStack(
                index: selectedPage,
                children: [
                  Navigator(
                    key: _home,
                    onGenerateRoute:
                        (settings) => PageRouteBuilder(
                          pageBuilder: (_, _, _) => HomeScreen(),
                          transitionsBuilder: (
                            context,
                            animation,
                            secondaryAnimation,
                            child,
                          ) {
                            return ScaleTransition(
                              scale: animation.drive(Tween(begin: 0, end: 1)),
                              child: child,
                            );
                          },
                        ),
                  ),
                  Navigator(
                    key: _basket,
                    onGenerateRoute:
                        (settings) => PageRouteBuilder(
                          pageBuilder: (_, _, _) => BasketScreen(),
                          transitionsBuilder: (
                            context,
                            animation,
                            secondaryAnimation,
                            child,
                          ) {
                            return ScaleTransition(
                              scale: animation.drive(Tween(begin: 0, end: 1)),
                              child: child,
                            );
                          },
                        ),
                  ),
                  Navigator(
                    key: _profile,
                    onGenerateRoute:
                        (settings) => PageRouteBuilder(
                          pageBuilder: (_, _, _) => ProfileScreen(),
                          transitionsBuilder: (
                            context,
                            animation,
                            secondaryAnimation,
                            child,
                          ) {
                            return ScaleTransition(
                              scale: animation.drive(Tween(begin: 0, end: 1)),
                              child: child,
                            );
                          },
                        ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 0,
              bottom: 0,
              right: 0,
              child: Container(
                width: double.infinity,
                height: ScreenSize.height * .1,
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    NavItem(
                      iconPath: Assets.svg.home,
                      title: 'خانه',
                      isActive: selectedPage == NavBarIndex.home,
                      onTap: () => pageNav(NavBarIndex.home),
                    ),
                    NavItem(
                      iconPath: Assets.svg.basket,
                      title: 'سبد خرید',
                      isActive: selectedPage == NavBarIndex.basket,
                      onTap: () => pageNav(NavBarIndex.basket),
                    ),
                    NavItem(
                      iconPath: Assets.svg.user,
                      title: 'پروفایل',
                      isActive: selectedPage == NavBarIndex.profile,
                      onTap: () => pageNav(NavBarIndex.profile),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void pageNav(int index) {
    setState(() {
      selectedPage = index;
      _routeHistory.add(index);
    });
  }
}
