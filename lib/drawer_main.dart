import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:mighty_ui_kit/crypto/ct_splash.dart';
import 'package:mighty_ui_kit/finance_app/finance_splash_screen.dart';
import 'package:mighty_ui_kit/fitness_app/ftn_splash.dart';
import 'package:mighty_ui_kit/grocery_application/grocery_splash_screen.dart';
import 'package:mighty_ui_kit/meela_bank/mb_home.dart';
import 'package:mighty_ui_kit/passing%20_data_screen/todo_home.dart';
import 'package:mighty_ui_kit/sqflite_demo_hk/sign_up_sqflite_hk.dart';
import 'package:mighty_ui_kit/valdation_home_login/validation_login_home_screen.dart';

class MyUiApp extends StatelessWidget {
  const MyUiApp({Key? key}) : super(key: key);

  static const appTitle = 'Main Ui Drawer';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      home: MyUiHomePage(title: appTitle),
    );
  }
}

class MyUiHomePage extends StatelessWidget {
  const MyUiHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0, title: Text(title)),
      body: Scaffold(
        body: Container(
          color: Colors.blue,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: SizedBox(
            child: Center(
              child: TextLiquidFill(
                text: 'All App Ui',
                waveDuration: const Duration(seconds: 1),
                waveColor: Colors.white,
                boxBackgroundColor: Colors.blue,
                textStyle: const TextStyle(
                  fontSize: 50.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Column(
              children: const [
                UserAccountsDrawerHeader(
                  accountName: Text('Harkishan Pansuriya'),
                  accountEmail: Text('Test@gmail.com'),
                  currentAccountPicture: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Text(
                      'H',
                      style: TextStyle(fontSize: 40.0),
                    ),
                  ),
                )
              ],
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  ListTile(
                    title: const Text('Finance App'),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const FinanceMyHomePage()));
                    },
                  ),
                  ListTile(
                    title: const Text('Fitness App'),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const FtnSplashScreen()));
                    },
                  ),
                  ListTile(
                    title: const Text('Grocery App'),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const GroceryMyHomePage()));
                    },
                  ),
                  ListTile(
                    title: const Text('Meela Bank App'),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MbHomePage()));
                    },
                  ),
                  ListTile(
                    title: const Text('Crypto App'),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CtSplash()));
                    },
                  ),
                  ListTile(
                    title: const Text('Passing data screen App'),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ToDOHome()));
                    },
                  ),
                  ListTile(
                    title: const Text('Login local validation'),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const ValidationLoginHome()));
                    },
                  ),
                  ListTile(
                    title: const Text('Login SqFlite Demo'),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                   SqFliteSignUpDemoHk()));
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
