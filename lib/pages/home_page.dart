import 'package:flutter/material.dart';
import 'package:shopping_ui_hw_30/constants.dart';

import '../helpfull_parts/home_body.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBGColor,
      body: HomeBody(),
    );
  }
}
