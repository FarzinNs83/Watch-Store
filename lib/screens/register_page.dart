import 'package:flutter/material.dart';
import 'package:watch_store/components/extentions.dart';
import 'package:watch_store/resources/app_dimensions.dart';
import 'package:watch_store/resources/app_strings.dart';
import 'package:watch_store/widgets/custom_button.dart';
import 'package:watch_store/widgets/custom_circle_avatar.dart';
import 'package:watch_store/widgets/custom_textfield.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});
  final TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AppDimensions.large.height,
              CustomCircleAvatar(),
              AppDimensions.medium.height,
              Text('انتخاب تصویر پروفایل'),
              30.height,
              CustomTextfield(
                lable: AppStrings.nameLastName,
                hint: AppStrings.hintNameLastName,
                controller: controller,
              ),
              CustomTextfield(
                lable: AppStrings.homeNumber,
                hint: AppStrings.hintHomeNumber,
                controller: controller,
              ),
              CustomTextfield(
                lable: AppStrings.address,
                hint: AppStrings.hintAddress,
                controller: controller,
              ),
              CustomTextfield(
                lable: AppStrings.postalCode,
                hint: AppStrings.hintPostalCode,
                controller: controller,
              ),
              CustomTextfield(
                lable: AppStrings.location,
                hint: AppStrings.hintLocation,
                controller: controller,
                icon: Icon(Icons.location_on),
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
