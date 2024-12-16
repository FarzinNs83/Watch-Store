import 'package:flutter/material.dart';
import 'package:watch_store/components/button_style.dart';

class CustomButton extends StatelessWidget {
  final String data;
  final Function() onPressed;
  const CustomButton({
    super.key,
    required this.data,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * .75,
      height: size.height * .07,
      child: ElevatedButton(
        onPressed: () {},
        child: Text(
          data,
          style: TextStyle(color: Colors.white),
        ),
        style: AppButtonStyles.mainButtonStyle,
      ),
    );
  }
}
