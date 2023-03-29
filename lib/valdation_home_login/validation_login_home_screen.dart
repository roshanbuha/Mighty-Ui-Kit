import 'package:flutter/material.dart';
import 'package:mighty_ui_kit/valdation_home_login/validate_login.dart';
import 'package:mighty_ui_kit/valdation_home_login/validation_signup.dart';

class ValidationLoginHome extends StatefulWidget {
  const ValidationLoginHome({Key? key}) : super(key: key);

  @override
  _ValidationLoginHomeState createState() => _ValidationLoginHomeState();
}

class _ValidationLoginHomeState extends State<ValidationLoginHome> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Login Home Screen'),
          automaticallyImplyLeading: false,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton.icon(
                  onPressed: () {
                    Map<String, dynamic> signupDetails = {};
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) =>
                            ValidateLoginScreen(signupDetails),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      fixedSize:
                          Size(MediaQuery.of(context).size.width * 0.8, 50)),
                  icon: const Icon(
                    Icons.email_outlined,
                    size: 25,
                  ),
                  label: const Text(
                    'Login',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  )),
              const SizedBox(
                height: 15,
              ),
              ElevatedButton.icon(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => ValidateSignUpScreen(this),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      fixedSize:
                          Size(MediaQuery.of(context).size.width * 0.8, 50)),
                  icon: const Icon(
                    Icons.email_outlined,
                    size: 25,
                  ),
                  label: const Text(
                    'SignUp Using Email',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
