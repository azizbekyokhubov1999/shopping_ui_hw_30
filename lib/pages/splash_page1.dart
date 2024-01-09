import 'package:flutter/material.dart';
import 'package:shopping_ui_hw_30/pages/screens.dart';

class SplashPage1 extends StatefulWidget {
  static const id = '/splash_page1';
  const SplashPage1({super.key});

  @override
  State<SplashPage1> createState() => _SplashPage1State();
}

class _SplashPage1State extends State<SplashPage1> {
  final int _numPages = 3;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

List<Widget> _buildPageIndicator(){
  List<Widget> list = [];
  for(int i = 0; i < _numPages; i++){
    list.add(i == _currentPage ? _indicator(true) : _indicator(false));
  }
  return list;
}

Widget _indicator(bool isActive){
  return AnimatedContainer(duration: const Duration(milliseconds: 150),
    margin: const EdgeInsets.symmetric(horizontal: 8.0),
    height: 8.0,
    width: isActive ? 24.0 : 16.0,
    decoration: BoxDecoration(
       color: isActive ? Colors.black : Colors.grey,
      borderRadius: const BorderRadius.all(
        Radius.circular(12),
      ),
    ) ,

  );
}

  Widget skipBtn(){
    return Container(
      alignment: Alignment.centerRight,
      child: TextButton(
        onPressed: () {},
        child: const Text(
            'Skip',
          style: TextStyle(
            color: Colors.black87,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
          ),
        ),

      ),
    );
  }

  Widget imageView(){
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      height: 600.0,
      child: PageView(
        physics: const ClampingScrollPhysics(),
        controller: _pageController,
        onPageChanged: (int page) {
          setState(() {
            _currentPage = page;
          });
        },
        children:  [
          Padding(
            padding: const EdgeInsets.all(0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Center(
                  child: Image(
                    image: AssetImage('assets/images/splash_screen1.png'
                    ),
                    height: 400.0,
                    width: 400.0,
                  ),
                ),
                const SizedBox(height: 10),
                textView(),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Center(
                  child: Image(
                    image: AssetImage('assets/images/splash_screen2.png'
                    ),
                    height: 400.0,
                    width: 400.0,
                  ),
                ),
                const SizedBox(height: 10),
                textView2(),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Center(
                  child: Image(
                    image: AssetImage('assets/images/splash_screen3.png'
                    ),
                    height: 400.0,
                    width: 400.0,
                  ),
                ),
                const SizedBox(height: 10),
                textView3(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget textView(){
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Shop online product",
            style: TextStyle(
              color: Colors.black87,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 5.0),
          Text(
            'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint.\n Velit officia consequat duis enim velit mollit.\nExercitation veniam consequat sunt nostrud amet.',
            style: TextStyle(
              color: Colors.black38,
              fontSize: 15,
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.center
          ),
        ],
      ),
    );
  }


  Widget textView2(){
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Fastest delivery",
            style: TextStyle(
              color: Colors.black87,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 5.0),
          Text(
              'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint.\n Velit officia consequat duis enim velit mollit.\n Exercitation veniam consequat sunt nostrud amet.',
              style: TextStyle(
                color: Colors.black38,
                fontSize: 15,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center
          ),
        ],
      ),
    );
  }
  Widget textView3(){
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Contactless Delivery",
            style: TextStyle(
              color: Colors.black87,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 5.0),
          Text(
              'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint.\nVelit officia consequat duis enim velit mollit.\nExercitation veniam consequat sunt nostrud amet.',
              style: TextStyle(
                color: Colors.black38,
                fontSize: 15,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center
          ),
        ],
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.white
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 10),
            skipBtn(),
            const SizedBox(height: 10),
            imageView(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: _buildPageIndicator(),
        ),
        _currentPage != _numPages - 1 ? Expanded(
        child: Align(alignment: FractionalOffset.bottomRight,
        child: TextButton(
          onPressed: () { 
            _pageController.nextPage(
                duration: const Duration(milliseconds: 500),
                curve: Curves.ease
            );
          },
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Next',
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic
                ),
              ),
              SizedBox(width: 10.0),
              Icon(Icons.arrow_forward,
                color: Colors.orange,
                size: 30.0,
              )
            ] ,
          ) ,
        ),
      ),
    )
          : const Text(''),
          ],
        ),
      ),
      bottomSheet: _currentPage == _numPages - 1 ? Container(
        height: 70.0,
        width: double.infinity,
        color: Colors.green,
        child: GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => Screens()));
          },
          child: const Center(
            child: Padding(padding: EdgeInsets.only(bottom: 20.0),
              child: Text(
                'Get started',
                style: TextStyle(
                  color: Colors.white54,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      )
          : const Text(''),
    );
  }
}
