import 'dart:async';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mighty_ui_kit/crypto/ct_signin.dart';
import 'package:mighty_ui_kit/crypto/ct_walkscreen.dart';

class CtSplash extends StatefulWidget {
  const CtSplash({Key? key}) : super(key: key);

  @override
  _CtSplashState createState() => _CtSplashState();
}

class _CtSplashState extends State<CtSplash> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 2),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const CtOnBoardingScreen(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.indigo[600],
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CachedNetworkImage(
                  fit: BoxFit.fill,
                  height: 200,
                  width: 200,
                  colorBlendMode: BlendMode.clear,
                  placeholder: (context, url) => CircularProgressIndicator(),
                  imageUrl:
                      'https://png2.cleanpng.com/dy/e7901369ea7c1216ae1028b2415dbe61/L0KzQYm3U8I1N5V9iZH0aYP2gLBuTfNzgaF5h9VAcoLofrTCTfJqfJR0gdC2Y3BwgMb7hgIucZR0huU2Ynzyc7zqiPFqdl5xRdRydHPyebA0VfFjPpY5eaQ9YUS3SYq1WMAyOWQ9T6M6NUK0SYS8VcIzO2E5SpD5bne=/kisspng-cryptocurrency-bitcoin-computer-icons-blockchain-l-bitcoin-5ab6e4a24a4499.8011387115219355223042.png',
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Welcome to',
                  textScaleFactor: 1.2,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'IIumina Coin',
                  textScaleFactor: 1.8,
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'All your crypto transactions in one place track coins add portfolio . buy and sell.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
