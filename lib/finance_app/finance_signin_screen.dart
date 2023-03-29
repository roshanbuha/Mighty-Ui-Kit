import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:mighty_ui_kit/finance_app/finance_confirm_screen.dart';

class FinanceSignInScreen extends StatefulWidget {
  const FinanceSignInScreen({Key? key}) : super(key: key);

  @override
  _FinanceSignInScreenState createState() => _FinanceSignInScreenState();
}

class _FinanceSignInScreenState extends State<FinanceSignInScreen> {
  var phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blueGrey[50],
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.blueGrey[50],
          elevation: 0,
          foregroundColor: Colors.black,
          title: Row(
            children: const [
              Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(
                height: 120,
                width: 120,
                fit: BoxFit.fill,
                image: AssetImage('assets/images/finance.png'),
              ),
              SizedBox(
                height: 30,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Sign in',
                  style: TextStyle(
                      color: Colors.black87,
                      decorationThickness: 2.5,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'simply enter your number to login or create an account',
                    style: TextStyle(fontSize: 17, color: Colors.black54),
                  )),
              SizedBox(
                height: 30,
              ),
              Form(
                child: TextFormField(
                  controller: phoneController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: 'enter phone number',
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              RichText(
                text: TextSpan(children: [
                  TextSpan(
                    text: "By using our mobile app, you agree to our ",
                    style: TextStyle(color: Colors.black87),
                  ),
                  TextSpan(
                    text: "Terms of Use",
                    style: TextStyle(
                        color: Colors.black87,
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: " and",
                    style: TextStyle(color: Colors.black87),
                  ),
                  TextSpan(
                    text: " Privacy Policy",
                    style: TextStyle(
                        color: Colors.black87,
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.bold),
                  ),
                ]),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0),
                  ),
                  //minimumSize: Size(double.infinity,40
                  minimumSize: Size(double.infinity, 50),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const FinanceConfirmScreen()),
                  );
                },
                child: Text(
                  'Continue',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
