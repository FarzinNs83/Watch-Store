import 'package:flutter/material.dart';
import 'package:watch_store/widgets/search_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Column(children: [CustomSearchBar()]),
      ),
    );
  }
}
