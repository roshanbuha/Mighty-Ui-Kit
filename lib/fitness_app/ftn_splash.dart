import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mighty_ui_kit/fitness_app/ftn_signin.dart';

class FtnSplashScreen extends StatefulWidget {
  const FtnSplashScreen({Key? key}) : super(key: key);

  @override
  _FtnSplashScreenState createState() => _FtnSplashScreenState();
}

class _FtnSplashScreenState extends State<FtnSplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 2),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const FtnSignInScreen(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: const Center(
        child: Text(
          'OVERFUN',
          style: TextStyle(
              fontSize: 40,
              color: Colors.white,
              decoration: TextDecoration.none,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
