import 'package:fan_carousel_image_slider/fan_carousel_image_slider.dart';
import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  ProductPage({super.key});

  List<String> productListImages2 = [
    'assets/images/football_shoes_gold_nike.jpg',
    'assets/images/NikeShoe.png',
    'assets/images/WhiteTshirt.png',
    'assets/images/kit_of_germany.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 450,
                  width: MediaQuery.of(context).size.width,
                  child: FanCarouselImageSlider(
                    sliderHeight: 430,
                    sliderWidth: 400,
                    autoPlay: true,
                    imagesLink: productListImages2,
                    isAssets: true,
                  ),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 20),
                        Text(
                          'Sport Products',
                          style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.w900,
                              fontSize: 25),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Quality',
                          style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.w500,
                              fontSize: 18),
                        ),
                      ],
                    ),
                    Text(
                      "\$300.00",
                      style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                review()
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget review() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 33, vertical: 5),
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Image.asset(
                    'assets/images/person.png',
                     height: 50,
                     width:  50 ,
                )
                ,
              ),
              Column(
                children: [
                  const Text(
                    'Jane Cooper',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Image.asset('assets/images/stars.webp',
                    height: 100,
                    width: 100 ,
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.only(
                  left: 50.0,
                ),
                child: const Text(
                  '01/01/2021',
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
              ),
            ],
          ),
          Container(
            alignment: Alignment.topLeft,
            child: const Text(
              "Amazing Product",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            child: const Text(
              """Lörem ipsum sorad Madeleine Engström. Du kan vara drabbad. Krofask nystartsjobb det vill säga vinde.   Lörem ipsum sorad Madeleine Engström. Du kan vara drabbad. """,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
