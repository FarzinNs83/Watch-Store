import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:watch_store/resources/app_colors.dart';
import 'package:watch_store/resources/ext.dart';

class NavItem extends StatelessWidget {
  final String iconPath;
  final String title;
  final bool isActive;
  final void Function() onTap;
  const NavItem({
    super.key,
    required this.iconPath,
    required this.title,
    required this.isActive, required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(4),
        child: SizedBox(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                iconPath,
                colorFilter: ColorFilter.mode(
                  isActive
                      ? AppColors.navItemActive
                      : AppColors.navItemInActive,
                  BlendMode.srcIn,
                ),
              ),
              12.height,
              Text(
                title,
                style: TextStyle(
                  color:
                      isActive
                          ? AppColors.navItemActive
                          : AppColors.navItemInActive,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}