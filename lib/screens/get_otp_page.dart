import 'package:flutter/material.dart';
import 'package:watch_store/components/extentions.dart';
import 'package:watch_store/resources/app_dimensions.dart';
import 'package:watch_store/resources/app_strings.dart';
import 'package:watch_store/widgets/custom_button.dart';
import 'package:watch_store/widgets/custom_textfield.dart';

class GetOtpPage extends StatelessWidget {
  GetOtpPage({super.key});
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("assets/png/main_logo.png"),
              AppDimensions.large.height,
              Text(AppStrings.otpCodeSendFor.replaceAll(AppStrings.replace, "09027585511")),
              AppDimensions.small.height,
              Text('شماره اشتباه است/ ویرایش شماره'),
              AppDimensions.large.height,
              CustomTextfield(
                lable: AppStrings.enterVerificationCode,
                hint: AppStrings.hintVerificationCode,
                controller: controller,
                prefixLable: '2:05',
              ),
              AppDimensions.large.height,
              CustomButton(
                data: AppStrings.next,
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
