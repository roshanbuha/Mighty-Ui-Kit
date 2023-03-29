import 'package:flutter/material.dart';
import 'package:mighty_ui_kit/meela_bank/mb_bottom_navigation.dart';
import 'package:mighty_ui_kit/meela_bank/mb_homescreen.dart';
import 'package:mighty_ui_kit/meela_bank/mb_signin.dart';

class MbSignUpScreen extends StatefulWidget {
  const MbSignUpScreen({Key? key}) : super(key: key);

  @override
  _MbSignUpScreenState createState() => _MbSignUpScreenState();
}

class _MbSignUpScreenState extends State<MbSignUpScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController numberController = TextEditingController();
  bool rememberMe = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Welcome!',
                  style: TextStyle(
                      fontSize: 24,
                      color: Colors.black87,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 15),
                Text(
                  'Sign in with username or email and',
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.black54,
                      fontWeight: FontWeight.normal),
                ),
                Text(
                  'password to use your account',
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.black54,
                      fontWeight: FontWeight.normal),
                ),
                SizedBox(height: 50),
                TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey.withOpacity(0.1),
                    hintText: 'Username or email',
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 16),
                    alignLabelWithHint: true,
                    contentPadding:
                        EdgeInsets.only(top: 8, bottom: 8, right: 8, left: 8),
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.blue.withOpacity(0.2)),
                        borderRadius: BorderRadius.circular(8)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(8)),
                  ),
                ),
                SizedBox(height: 10),
                TextField(
                  controller: passwordController,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey.withOpacity(0.1),
                    hintText: 'Password',
                    hintStyle:
                        const TextStyle(color: Colors.grey, fontSize: 16),
                    alignLabelWithHint: true,
                    contentPadding: const EdgeInsets.only(
                        top: 8, bottom: 8, right: 8, left: 8),
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.blue.withOpacity(0.2)),
                        borderRadius: BorderRadius.circular(8)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(8)),
                  ),
                ),
                SizedBox(height: 10),
                TextField(
                  controller: numberController,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey.withOpacity(0.1),
                    hintText: 'Phone Number',
                    hintStyle:
                        const TextStyle(color: Colors.grey, fontSize: 16),
                    alignLabelWithHint: true,
                    contentPadding: const EdgeInsets.only(
                        top: 8, bottom: 8, right: 8, left: 8),
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.blue.withOpacity(0.2)),
                        borderRadius: BorderRadius.circular(8)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(8)),
                  ),
                ),
                SizedBox(height: 20),
                Theme(
                  data: Theme.of(context)
                      .copyWith(unselectedWidgetColor: Colors.grey),
                  child: CheckboxListTile(
                    title: Text(
                        'Be creating your account you have to agree with our Teams and Conditions.',
                        style: TextStyle(color: Colors.black54, fontSize: 14)),
                    dense: true,
                    contentPadding: EdgeInsets.all(0),
                    value: rememberMe,
                    onChanged: (newValue) {
                      setState(() {
                        rememberMe = newValue!;
                      });
                    },
                    controlAffinity: ListTileControlAffinity.leading,
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(10.0),
                    ),
                    minimumSize: Size(double.infinity, 50),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const MbBottomNavigationScreen()),
                    );
                  },
                  child: Text(
                    'Sign up my Account',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(10.0),
                    ),
                    primary: Colors.black,
                    minimumSize: Size(double.infinity, 50),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MbHomeScreen()),
                    );
                  },
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 50,
                      ),
                      Image(
                        height: 30,
                        width: 30,
                        color: Colors.white,
                        image: AssetImage('assets/images/apple.png'),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Sign up with Apple ID',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MbSignInScreen()),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          style: TextStyle(color: Colors.black, fontSize: 15),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Don\'t have an account ? ',
                              style: TextStyle(color: Colors.black),
                            ),
                            TextSpan(
                              text: 'Sign in',
                              style: TextStyle(
                                  color: Colors.black54, fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                    ],
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
