import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mighty_ui_kit/grocery_application/grocery_welcome_screen.dart';


class GroceryMyHomePage extends StatefulWidget {
  const GroceryMyHomePage({Key? key}) : super(key: key);

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<GroceryMyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 1),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const GroceryWelcomeScreen(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.yellow[300],
        child: const Image(
            image: AssetImage('assets/images/splash_food_icon.png')));
  }
}
