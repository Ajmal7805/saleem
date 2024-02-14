import 'package:flutter/material.dart';
import 'package:flutter_application_2/startingscreen/loginscreen.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';

class Scrollingscreen extends StatefulWidget {
  const Scrollingscreen({super.key});

  @override
  State<Scrollingscreen> createState() => _ScrollingscreenState();
}

class _ScrollingscreenState extends State<Scrollingscreen> {
  List<String> barracks = [
    'images/barracks.png',
    'images/barracks.png',
    'images/barracks.png'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color(0xff010220),
      body: Container(
        margin:const EdgeInsets.all(25),
        child: Column(
          children: [
            SizedBox(
                height: 600,
                child: CarouselSlider.builder(
                    unlimitedMode: true,
                    slideBuilder: (index) {
                      return Container(
                        alignment: Alignment.center,
                        child: Image(image: AssetImage(barracks[index])),
                      );
                    },
                    slideTransform:const CubeTransform(),
                    slideIndicator: CircularSlideIndicator(
                        currentIndicatorColor: Colors.blue,
                        indicatorBackgroundColor: Colors.white),
                    itemCount: barracks.length)),
          const  SizedBox(
              height: 40,
            ),
            MaterialButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return const Loginscreen();
                  },
                ));
              },
              height: 40,
              minWidth: 200,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              color: Colors.white,
              child:const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Get Started",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.double_arrow_outlined),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
