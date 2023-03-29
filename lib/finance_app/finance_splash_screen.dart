import 'package:flutter/material.dart';
import 'dart:async';

import 'package:mighty_ui_kit/finance_app/finance_signin_screen.dart';

class FinanceMyHomePage extends StatefulWidget {
  const FinanceMyHomePage({Key? key}) : super(key: key);

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<FinanceMyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 2),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const FinanceSignInScreen(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.yellow[300],
        child: const Image(image: AssetImage('assets/images/finance.png')));
  }
}
