import 'package:flutter/material.dart';
import 'package:shopping_ui_hw_30/category_section/category_section.dart';
import 'package:shopping_ui_hw_30/constants.dart';
import 'package:shopping_ui_hw_30/helpfull_parts/search_bar_section.dart';
import 'package:shopping_ui_hw_30/products/recent_products.dart';
import 'package:shopping_ui_hw_30/slider/slider.dart';

import 'custom_appBar.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:  SafeArea(
        child: Column(
          children: [
            CustomAppBar(),
            const SizedBox(height: 10),
            SectionSearchBar(),
            const SizedBox(height: 10),
            ProductSlider(),
            const SizedBox(height: 10),
             CategorySection(),
            const SizedBox(height: 10),
            Container(
                height: 200,
                child: RecentProducts()
            ),
          ],
        ),
      ),
      drawer: Drawer(),
    );
  }
}
