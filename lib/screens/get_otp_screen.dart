import 'package:flutter/material.dart';
import 'package:watch_store/gen/assets.gen.dart';
import 'package:watch_store/resources/app_animations.dart';
import 'package:watch_store/resources/app_colors.dart';
import 'package:watch_store/resources/app_strings.dart';
import 'package:watch_store/resources/sized_box_ext.dart';
import 'package:watch_store/screens/register_screen.dart';
import 'package:watch_store/widgets/custom_button.dart';
import 'package:watch_store/widgets/custom_text_field.dart';

class GetOtpScreen extends StatelessWidget {
  GetOtpScreen({super.key});
  final TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: GetOtpAnimation(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(Assets.png.logo.path),
              32.height,
              Text(
                AppStrings.sentOtpCodeText,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              8.height,
              Text(
                AppStrings.editNumber,
                style: TextStyle(color: AppColors.editNumberColor),
              ),
              42.height,
              CustomTextField(
                controller: textEditingController,
                hint: AppStrings.otpHint,
                title: AppStrings.enterOtpCode,
                prefixTitle: "2:15",
              ),
              CustomButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    PageRouteBuilder(
                      pageBuilder:
                          (context, animation, secondaryAnimation) =>
                              RegisterScreen(),
                      transitionsBuilder: (
                        context,
                        animation,
                        secondaryAnimation,
                        child,
                      ) {
                        return SlideTransition(
                          position: animation.drive(
                            Tween(begin: Offset(1, 0), end: Offset(0, 0)),
                          ),
                          child: child,
                        );
                      },
                    ),
                  );
                },
                text: AppStrings.continueButton,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
