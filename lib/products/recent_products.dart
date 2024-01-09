import 'package:flutter/material.dart';
import 'package:shopping_ui_hw_30/constants.dart';

class RecentProducts extends StatelessWidget {
final productList = [
  {
    'name': 'P1 Watch',
    'image': 'assets/images/p1.png',
    'price': 40,
    'disc' : 'Quality boots for football'
  },
  {
    'name': 'Nike Shoe',
    'image': 'assets/images/NikeShoe.png',
    'price': 55,
    'disc' : 'Quality shoe'
  },
  {
    'name': 'White T-shorts',
    'image': 'assets/images/WhiteTshirt.png',
    'price': 60,
    'disc' : 'Football kit'
  },
  {
    'name': "Messi's world cup boots",
    'image': 'assets/images/NikeShoe.png',
    'price': 100,
    'disc' : 'Quality shoe'
  },
  {
    'name': 'White T-shorts',
    'image': 'assets/images/WhiteTshirt.png',
    'price': 40,
    'disc' : 'Quality T-short'
  },
];

  @override
  Widget build(BuildContext context) {

    return GridView.builder(
        itemCount: productList.length ,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 0.70
        ),

        itemBuilder: (BuildContext context, int index){
          return RecentSingleProducts(
            recent_single_prod_disc: productList[index]['disc'],
            recent_single_prod_name: productList[index]['name'],
            recent_single_prod_image: productList[index]['image'],
            recent_single_prod_price: productList[index]['price'],
          );
        });
  }
}


class RecentSingleProducts extends StatefulWidget {
   RecentSingleProducts(
      {super.key,
        this.recent_single_prod_name,
        this.recent_single_prod_image,
        this.recent_single_prod_price,
        this.recent_single_prod_disc,

      });
  final recent_single_prod_name;
  final recent_single_prod_image;
  final recent_single_prod_price;
  final recent_single_prod_disc;

  @override
  State<RecentSingleProducts> createState() => _RecentSingleProductsState();
}

class _RecentSingleProductsState extends State<RecentSingleProducts> {
  bool isLike = false;
  final Color inactiveColor = Colors.black38;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 195,
          width: 160,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: kPrimaryColor,
          ),
          child: Image.asset(widget.recent_single_prod_image),
        ),
        ListTile(
          title: Text(widget.recent_single_prod_name),
          subtitle: Text('\$${widget.recent_single_prod_price}'),
          trailing:
              Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.circular(30)
                ),
                child: IconButton(
                    onPressed: (){
                      setState(() {
                        isLike = !isLike;
                      });
                    },
                    icon: Icon(
                        isLike ? Icons.favorite : Icons.favorite_border_outlined,
                        color: isLike ? Colors.red : inactiveColor,
                       size: 15,
                    ),
                ),
              ),
        )
      ],
    );
  }
}
