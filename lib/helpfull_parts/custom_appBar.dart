import 'package:flutter/material.dart';

import '../constants.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return   Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Builder(
            builder: (context) => IconButton(
              icon: const Icon(
                Icons.dashboard,
                color: kPrimaryColor,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            ),
          ),
        ),
        const Column(
          children: [
            Text(
              'Azizbek',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400
              ),
            ),
            Text(
              'Tashkent city',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500
              ),),
          ],
        ),
        const CircleAvatar(
          backgroundColor: kPrimaryColor,
        ),
      ],
    );
  }
}
