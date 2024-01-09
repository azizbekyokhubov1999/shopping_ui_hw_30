import 'package:flutter/material.dart';
import 'package:shopping_ui_hw_30/constants.dart';

class CategorySection extends StatefulWidget {
  const CategorySection({super.key});

  @override
  State<CategorySection> createState() => _CategorySectionState();
}

class _CategorySectionState extends State<CategorySection> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children:  [
          CategoryProducts(
            image: 'assets/images/shoes_icon.png',
            text: 'Shoes',
            press: (){  },
          ),
          const SizedBox(
            width: 20,
          ),
          CategoryProducts(
            image: 'assets/images/cl_women.png',
            text: 'Sport wear',
            press: () {  },
          ),
          const SizedBox(
            width: 20,
          ),
          CategoryProducts(
            image: 'assets/images/icon_cl.png',
            text: 'T-shorts',
            press: () {  },
          ),
          const SizedBox(
            width: 20,
          ),
          CategoryProducts(
            image: 'assets/images/icon_kit.png',
            text: 'Kits',
            press: () {  },
          ),
        ],
      ),
    );
  }
}



class CategoryProducts extends StatelessWidget {
  const CategoryProducts({
    super.key,
    required this.image,
    required this.text,
    required this.press,
  });

  final String image,text;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(2.0),
      child: GestureDetector(
        onTap: () {},
        child: Container(
          child:  Chip(
            backgroundColor: kPrimaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0),
            ),
            label: Row(
              children: [
                Image.asset(
                  image,
                  height: 40,
                ),
                const SizedBox(
                  width: 20,
                ),
                 Text(text),


              ],
            ),
          ),
        ),
      ),
    );
  }
}

