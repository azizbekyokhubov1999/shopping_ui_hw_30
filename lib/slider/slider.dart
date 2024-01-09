import 'package:flutter/material.dart';
import 'package:lecle_flutter_carousel_pro/lecle_flutter_carousel_pro.dart';
import 'package:shopping_ui_hw_30/constants.dart';

class ProductSlider extends StatefulWidget {
  const ProductSlider({super.key});

  @override
  State<ProductSlider> createState() => _ProductSliderState();
}

class _ProductSliderState extends State<ProductSlider> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 200,
        child:  const Carousel(
          images: [
            AssetImage('assets/images/slider1.jpg'),
            AssetImage('assets/images/slider2.jpg'),
            AssetImage('assets/images/slider3.jpg'),
            AssetImage('assets/images/slider4.png'),
          ],
          hasBorderRadius: true,
          radius: Radius.circular(30),
          dotBgColor: Colors.transparent,
          dotIncreasedColor: kPrimaryColor,
          dotSpacing: 25.0,
          animationCurve: Curves.fastOutSlowIn,
          animationDuration: Duration(
            milliseconds: 800,
          ),
        ) ,
      ),
    );
  }
}
