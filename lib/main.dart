import 'package:flutter/material.dart';
import 'package:shopping_ui_hw_30/pages/home_page.dart';
import 'package:shopping_ui_hw_30/pages/my_cart_page.dart';
import 'package:shopping_ui_hw_30/pages/screens.dart';
import 'package:shopping_ui_hw_30/pages/splash_page1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Online shop',
      debugShowCheckedModeBanner: false,
      home: SplashPage1(),
    );
  }
}


