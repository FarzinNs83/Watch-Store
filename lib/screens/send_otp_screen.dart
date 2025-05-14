import 'package:flutter/material.dart';
import 'package:watch_store/gen/assets.gen.dart';
import 'package:watch_store/resources/app_animations.dart';
import 'package:watch_store/resources/app_strings.dart';
import 'package:watch_store/resources/sized_box_ext.dart';
import 'package:watch_store/screens/get_otp_screen.dart';
import 'package:watch_store/widgets/custom_button.dart';
import 'package:watch_store/widgets/custom_text_field.dart';

class SendOtpScreen extends StatelessWidget {
  SendOtpScreen({super.key});
  final TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: SendOtpAnimations(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(Assets.png.logo.path),
              42.height,
              CustomTextField(
                controller: textEditingController,
                hint: AppStrings.enterYourNumberHint,
                title: AppStrings.enterYourNumber,
              ),
              CustomButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    PageRouteBuilder(
                      pageBuilder:
                          (_, _, _) =>
                              GetOtpScreen(),
                      transitionsBuilder: (
                        context,
                        animation,
                        _,
                        child,
                      ) {
                        return SlideTransition(
                          position: animation.drive(
                            Tween(
                              begin: Offset(0, 1),
                              end: Offset.zero,
                            ),
                          ),
                          child: child,
                        );
                      },
                    ),
                  );
                },
                text: AppStrings.sendOtpCode,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
