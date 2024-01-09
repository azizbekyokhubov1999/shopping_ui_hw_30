
import 'package:flutter/material.dart';
import 'package:shopping_ui_hw_30/constants.dart';
import 'package:shopping_ui_hw_30/pages/screens.dart';

class MyCartPage extends StatelessWidget {
   MyCartPage({super.key});

  final productListImages = [

    'assets/images/p1.png',
    'assets/images/NikeShoe.png',
    'assets/images/WhiteTshirt.png',
    'assets/images/WhiteTshirt.png'
  ];

   final productListNames = [
     'P1 Watch',
     'Nike Shoe',
     'White T-shorts',
     'White T-shorts',


   ];
   final productListPrices =[
        "40",
        "55",
        "100",
        '55,'
   ];

  // List imagesList = [
  //   "assets/images/golden_boots.jpg",
  //   "assets/images/kit_of_germany.jpg",
  //   "assets/images/WhiteTshirt.png",
  //   "assets/images/NikeShoe.png",
  // ];
  // List productTitles = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        elevation: 0,
        centerTitle: true,
        title: const Text('Cart'),
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Screens(),
              ),
            );
          },
          icon: const Icon(
              Icons.arrow_back,
              size: 20,
              color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Container(
                child: ListView.builder(
                    itemCount: productListImages.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index){
                      return Container(
                        margin: const EdgeInsets.symmetric(
                            vertical: 10,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Checkbox(
                                value: true,
                                onChanged: (val){},
                                splashRadius: 20,
                                activeColor: Colors.green,
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(productListImages[index],
                                height: 80,
                                width: 80 ,
                                fit: BoxFit.cover,
                              ),
                            ),

                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(productListNames[index],
                                style: const TextStyle(
                                  color: Colors.black87,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 18,
                                ),
                                ),
                                const SizedBox(height: 10),
                                const Text(
                                    'Quality products',
                                    style: TextStyle(
                                      color: Colors.black26,
                                      fontSize: 16,
                                    ),
                                ),
                                const SizedBox(height: 10),
                                Text(productListPrices[index],
                                style: const TextStyle(
                                  color: Colors.green,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w900,
                                ),
                                )
                              ],
                            ),
                            const Row(
                              children: [
                                Icon(
                                    Icons.delete,
                                    color: Colors.red,
                                ),
                                SizedBox(width: 20),
                                Text('1', style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                ),
                                ),
                                SizedBox(width: 5),
                                Icon(
                                  Icons.add_circle,
                                  color: Colors.green,
                                ),
                              ],
                            )
                          ],
                        ),
                      );
                    }
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Select all',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),),
                  Checkbox(
                      splashRadius: 10,
                       activeColor: Colors.green,
                      value: false,
                      onChanged: (val){}
                  ),
                ],
              ),
              const Divider(
                height: 10,
                thickness: 2,
                color: Colors.black,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Total payment',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text("\$250.0",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.green,
                    ),
                  )
                ],
              ),
              const SizedBox(height: 5),
              InkWell(
                onTap: (){},
                child: Container(
                  width: double.infinity,
                  child: MaterialButton(
                    onPressed: () {  },
                    color: Colors.green,

                    child: const Text('Checkout'),

                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
