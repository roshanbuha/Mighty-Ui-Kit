import 'package:flutter/material.dart';
import 'package:mighty_ui_kit/sqflite_demo_hk/databasehelper_hk.dart';
import 'package:mighty_ui_kit/sqflite_demo_hk/home_sqflite_hk.dart';
import 'package:mighty_ui_kit/sqflite_demo_hk/sign_up_sqflite_hk.dart';
import 'package:mighty_ui_kit/sqflite_demo_hk/usermodelhk.dart';

class SqFliteLoginDemoHk extends StatefulWidget {
  @override
  _SqFliteLoginDemoHkState createState() => _SqFliteLoginDemoHkState();
}

class _SqFliteLoginDemoHkState extends State<SqFliteLoginDemoHk> {
  List<UserModelHk> userModelHkList = [];

  // DatabaseHelperHk dbHelper = DatabaseHelperHk();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void initState() {
    DatabaseHelperHk dbHelper = DatabaseHelperHk();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.3,
                    color: Colors.blue,
                  ),
                  Positioned(
                    bottom: -50,
                    child: Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: 100,
                        width: MediaQuery.of(context).size.width * 1,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(40),
                                topRight: Radius.circular(40))),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    children: <Widget>[
                      // Stroked text as border.
                      Text(
                        'Log in',
                        style: TextStyle(
                          fontSize: 22,
                          letterSpacing: 5,
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 6
                            ..color = Colors.blue,
                        ),
                      ),
                      // Solid text as fill.
                      const Text(
                        'Log in',
                        style: TextStyle(
                          letterSpacing: 5,
                          fontSize: 22,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Container(
                padding: EdgeInsets.all(15),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: emailController,
                      autocorrect: true,
                      keyboardType: TextInputType.emailAddress,
                      validator: (String? value) {
                        if (value!.isEmpty) {
                          return 'Please a Enter E-mail';
                        }
                        if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                            .hasMatch(value)) {
                          return 'Please a valid E-mail';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        labelText: 'E-Mail',
                        filled: true,
                        fillColor: Colors.white70,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0),
                          borderSide: BorderSide(
                            color: Colors.blue,
                            width: 2,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12.0)),
                          borderSide: BorderSide(color: Colors.blue, width: 2),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(color: Colors.blue, width: 2),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: passwordController,
                      keyboardType: TextInputType.visiblePassword,
                      autocorrect: true,
                      validator: (String? value) {
                        if (value!.isEmpty) {
                          return 'Please a Enter Password';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        labelText: 'Password',
                        filled: true,
                        fillColor: Colors.white70,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0),
                          borderSide: BorderSide(
                            color: Colors.blue,
                            width: 2,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12.0)),
                          borderSide: BorderSide(color: Colors.blue, width: 2),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(color: Colors.blue, width: 2),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    ElevatedButton(
                      onPressed: () async {
                        if (emailController.text != "" &&
                            passwordController.text != "") {
                          DatabaseHelperHk dbHelper = DatabaseHelperHk();
                          UserModelHk? userModelHK =
                              await dbHelper.getLoginUser(emailController.text,
                                  passwordController.text);

                          if (userModelHK != null) {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => HomePageSqfliteHk(
                                  user: userModelHK,
                                ),
                              ),
                            );
                          } else {
                            ScaffoldMessenger.of(context)
                                .showSnackBar(const SnackBar(
                              content: Text("user not found"),
                            ));
                          }
                        } else {
                          ScaffoldMessenger.of(context)
                              .showSnackBar(const SnackBar(
                            content: Text("Login Failed"),
                          ));
                        }

                        // if (formkey.currentState!.validate()) {
                        //
                        //   return;
                        // } else {
                        //   ScaffoldMessenger.of(context)
                        //       .showSnackBar(const SnackBar(
                        //     content:
                        //         Text("Signup Failed! Enter correct details."),
                        //   ));
                        //
                        //
                        //
                        // +-}
                      },
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          fixedSize: Size(
                              MediaQuery.of(context).size.width * 0.9, 50)),
                      child: const Text(
                        'Log in',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(children: <Widget>[
                      Expanded(
                        child: Container(
                            margin:
                                const EdgeInsets.only(left: 10.0, right: 15.0),
                            child: const Divider(
                              color: Colors.black,
                              height: 50,
                            )),
                      ),
                      const Text("OR"),
                      Expanded(
                        child: Container(
                            margin:
                                const EdgeInsets.only(left: 15.0, right: 10.0),
                            child: const Divider(
                              color: Colors.black,
                              height: 50,
                            )),
                      ),
                    ]),
                    SizedBox(
                      height: 15,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => SqFliteSignUpDemoHk(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          fixedSize: Size(
                              MediaQuery.of(context).size.width * 0.9, 50)),
                      child: const Text(
                        'Sign up',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void getListFromDb() async {
    debugPrint("Getting Data From Db");
    UserModelHk userModelHk = UserModelHk();

    debugPrint("email from model : - ${userModelHk.email}");
    userModelHkList = await DatabaseHelperHk().readUserInfo();
    setState(() {});

    if (emailController.text == userModelHk.email &&
        passwordController.text == userModelHk.password) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => HomePageSqfliteHk(),
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text("Login Failed"),
      ));
    }
  }
}
