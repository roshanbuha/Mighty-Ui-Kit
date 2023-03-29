import 'package:flutter/material.dart';
import 'package:mighty_ui_kit/fitness_app/ftn_splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: FtnSplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
