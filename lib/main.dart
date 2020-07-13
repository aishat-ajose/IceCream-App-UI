import 'package:flutter/material.dart';
import 'package:onboarding/onboarding.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primaryColor: Color(0xFFF9B3C2)
    ),
      home:OnboardingPage()
      
    );
  }
}

  
