import 'package:flutter/material.dart';

class CustomCircleAvatar extends StatelessWidget {
  const CustomCircleAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Image.asset(
        'assets/png/avatar.png',
        width: 100, 
        height: 100, 
        fit: BoxFit.cover, 
      ),
    );
  }
}
