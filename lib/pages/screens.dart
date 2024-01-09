
import 'package:flutter/material.dart';
import 'package:shopping_ui_hw_30/pages/home_page.dart';
import 'package:shopping_ui_hw_30/pages/my_cart_page.dart';
import 'package:shopping_ui_hw_30/pages/product_page.dart';

class Screens extends StatefulWidget {
  static const id = '/screens';
  const Screens({super.key});

  @override
  State<Screens> createState() => _ScreensState();
}

class _ScreensState extends State<Screens> {

  int index = 0;

  final _pages = [
    HomePage(),
    // FavoritePage(),
    ProductPage(),
    MyCartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _pages[index],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: index,
          selectedLabelStyle: const TextStyle(color: Colors.black)  ,
          unselectedLabelStyle: const TextStyle(color: Colors.grey)  ,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.black,
          onTap: (int index){
            setState(() {
              this.index = index;
            });
          },
          items: const <BottomNavigationBarItem> [
            BottomNavigationBarItem(
              label: '',
              icon: Icon(
                Icons.home,
              ),
            ),
            // BottomNavigationBarItem(
            //   label: '',
            //   icon: Icon(
            //     Icons.favorite,
            //
            //   ),
            // ),
            BottomNavigationBarItem(
              label: '',
              icon: Icon(
                Icons.shopping_bag_outlined,
              ),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: Icon(
                Icons.shopping_cart,
              ),
            ),
          ],
        ),
    );
  }
}
