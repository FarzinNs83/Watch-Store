import 'package:flutter/material.dart';
import 'package:watch_store/components/extentions.dart';
import 'package:watch_store/resources/app_dimensions.dart';
import 'package:watch_store/resources/app_strings.dart';
import 'package:watch_store/widgets/custom_textfield.dart';

class SendOtpPage extends StatelessWidget {
  SendOtpPage({super.key});
  final TextEditingController sendOtp = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/png/main_logo.png"),
            AppDimensions.large.height,
            CustomTextfield(
              lable: 'ananas',
              hint: AppStrings.hintPhoneNumber,
              controller: sendOtp,
            )
          ],
        ),
      ),
    );
  }
}
