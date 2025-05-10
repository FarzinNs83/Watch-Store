import 'package:flutter/material.dart';
import 'package:watch_store/gen/assets.gen.dart';
import 'package:watch_store/resources/app_strings.dart';
import 'package:watch_store/resources/sized_box_ext.dart';
import 'package:watch_store/widgets/custom_button.dart';
import 'package:watch_store/widgets/custom_text_field.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});
  final TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(18)),
                  child: Image.asset(Assets.png.user.path),
                ),
                16.height,
                Text(AppStrings.selectProfilePhoto),
                CustomTextField(
                  controller: textEditingController,
                  hint: AppStrings.enterYourNumberHint,
                  title: AppStrings.enterYourNumber,
                ),
                CustomTextField(
                  controller: textEditingController,
                  hint: AppStrings.enterYourNumberHint,
                  title: AppStrings.enterYourNumber,
                ),
                CustomTextField(
                  controller: textEditingController,
                  hint: AppStrings.enterYourNumberHint,
                  title: AppStrings.enterYourNumber,
                ),
                CustomTextField(
                  controller: textEditingController,
                  hint: AppStrings.enterYourNumberHint,
                  title: AppStrings.enterYourNumber,
                ),
                CustomTextField(
                  controller: textEditingController,
                  hint: AppStrings.enterYourNumberHint,
                  title: AppStrings.enterYourNumber,
                ),
                CustomButton(
                  onPressed: () {},
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
