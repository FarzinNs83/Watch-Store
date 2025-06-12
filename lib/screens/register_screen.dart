import 'package:flutter/material.dart';
import 'package:watch_store/gen/assets.gen.dart';
import 'package:watch_store/resources/app_strings.dart';
import 'package:watch_store/resources/ext.dart';
import 'package:watch_store/screens/get_otp_screen.dart';
import 'package:watch_store/main_wrapper.dart';
import 'package:watch_store/widgets/custom_appbar.dart';
import 'package:watch_store/widgets/custom_button.dart';
import 'package:watch_store/widgets/custom_text_field.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});

  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        icon: Assets.svg.leftArrow,
        title: AppStrings.registerButtonText, height: context.height * .06,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: Image.asset(Assets.png.user.path),
                ),
                16.height,
                Text(AppStrings.selectProfilePhoto),
                CustomTextField(
                  controller: textEditingController,
                  hint: AppStrings.enterFlNameHint,
                  title: AppStrings.enterFlName,
                  textAlign: TextAlign.right,
                ),
                CustomTextField(
                  controller: textEditingController,
                  hint: AppStrings.phoneNumberHint,
                  title: AppStrings.phoneNumber,
                  textAlign: TextAlign.right,
                ),
                CustomTextField(
                  controller: textEditingController,
                  hint: AppStrings.addressHint,
                  title: AppStrings.address,
                  textAlign: TextAlign.right,
                ),
                CustomTextField(
                  controller: textEditingController,
                  hint: AppStrings.postCodeHint,
                  title: AppStrings.postCode,
                  textAlign: TextAlign.right,
                ),
                CustomTextField(
                  controller: textEditingController,
                  hint: AppStrings.locationHint,
                  title: AppStrings.location,
                  textAlign: TextAlign.right,
                  icon: Icon(Icons.add_location_alt_outlined),
                ),
                CustomButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                      PageRouteBuilder(
                        pageBuilder: (_, _, _) => MainWrapper(),
                        transitionDuration: Duration(milliseconds: 500),
                        transitionsBuilder: (_, animation, _, child) {
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
                  text: AppStrings.registerButtonText,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
