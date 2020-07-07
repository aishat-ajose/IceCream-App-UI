import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:onboarding/p.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final pages = [
    Container(child: pa(Color(0xfffffdd0), 'Gelato','assets/pic1.png',1),),
    Container(child: pa(Color(0xff955a73), 'Mochi Ice Cream','assets/pic2.png',2)), 
    Container(child: pa(Color(0xff89cff0), 'Ice Cream','assets/pic4.png',3)), 
    Container(child: pa(Color(0xFFF9B3C2), 'Frozen Yogurt','assets/pic3.png',4)),  
  ];

  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: LiquidSwipe(
          pages: pages,
          enableLoop: true,
          fullTransitionValue: 200,
          // enableSlideIcon: true,
          waveType: WaveType.liquidReveal,
          // positionSlideIcon: 0.5,
        ),
      ),
    );
  }
}

  
