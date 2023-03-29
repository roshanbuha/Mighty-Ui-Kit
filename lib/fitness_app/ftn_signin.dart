import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mighty_ui_kit/fitness_app/ftn_bottomnav.dart';
import 'package:mighty_ui_kit/fitness_app/ftn_home.dart';

class FtnSignInScreen extends StatefulWidget {
  const FtnSignInScreen({Key? key}) : super(key: key);

  @override
  _FtnSignInScreenState createState() => _FtnSignInScreenState();
}

class _FtnSignInScreenState extends State<FtnSignInScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          clipBehavior: Clip.none,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Image(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.fill,
                image: const AssetImage('assets/images/fit_girl.jpg'),
              ),
            ),
            Positioned(
              top: -90,
              right: 30,
              child: Transform.rotate(
                angle: 15,
                child: Container(
                  height: 130,
                  width: 130,
                  decoration: BoxDecoration(
                    color: Colors.redAccent,
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ),
            const Positioned(
              right: 60,
              top: 8,
              child: Text(
                'Sign Up',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
            Positioned(
              bottom: -100,
              right: 110,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Transform.rotate(
                  angle: 15,
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.7,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 380,
              left: 35,
              child: Column(
                children: const[
                   Text(
                    'SIGN IN',
                    textScaleFactor: 1.2,
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 550,
              left: 35,
              child: Column(
                children: [
                  SizedBox(
                    width: 180,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.left,
                      enabled: true,
                      decoration:const InputDecoration(
                        hintText: 'Email',
                        icon: Icon(
                          Icons.email,
                          color: Colors.grey,
                        ),
                      ),
                      style: TextStyle(fontSize: 16.0, color: Colors.grey[700]),
                    ),
                  ),
             const     SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: 180,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.left,
                      enabled: true,
                      decoration:const InputDecoration(
                        hintText: 'Password',
                        icon: Icon(
                          Icons.lock,
                          color: Colors.grey,
                        ),
                      ),
                      style: TextStyle(fontSize: 16.0, color: Colors.grey[700]),
                    ),
                  ),
             const     SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                const  FtnBottomNavigationScreen()));
                    },
                    style: ElevatedButton.styleFrom(primary: Colors.red),
                    child:const Text('Sign in'),
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
