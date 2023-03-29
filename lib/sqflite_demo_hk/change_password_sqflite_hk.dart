import 'package:flutter/material.dart';
import 'package:mighty_ui_kit/sqflite_demo_hk/databasehelper_hk.dart';
import 'package:mighty_ui_kit/sqflite_demo_hk/home_sqflite_hk.dart';
import 'package:mighty_ui_kit/sqflite_demo_hk/log_in_sqflite_hk.dart';
import 'package:mighty_ui_kit/sqflite_demo_hk/usermodelhk.dart';

class ChangePasswordSqfliteHk extends StatefulWidget {
  ChangePasswordSqfliteHk({this.user});

  UserModelHk? user;

  @override
  _ChangePasswordSqfliteHkState createState() =>
      _ChangePasswordSqfliteHkState();
}

class _ChangePasswordSqfliteHkState extends State<ChangePasswordSqfliteHk> {
  TextEditingController oldPasswordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController newPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Form(
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
                                'Change Password',
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
                                'Change Password',
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
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          children: [
                            TextFormField(
                              controller: oldPasswordController,
                              keyboardType: TextInputType.visiblePassword,
                              autocorrect: true,
                              validator: (String? value) {
                                if (value!.isEmpty) {
                                  return 'Please a Enter Password';
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                labelText: 'Enter Old Password',
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
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(12.0)),
                                  borderSide:
                                      BorderSide(color: Colors.blue, width: 2),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                  borderSide:
                                      BorderSide(color: Colors.blue, width: 2),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.03,
                            ),
                            TextFormField(
                              controller: newPasswordController,
                              keyboardType: TextInputType.visiblePassword,
                              autocorrect: true,
                              validator: (String? value) {
                                if (value!.isEmpty) {
                                  return 'Please a Enter new Password';
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                labelText: 'Enter New Password',
                                filled: true,
                                fillColor: Colors.white70,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12.0),
                                  borderSide: BorderSide(
                                    color: Colors.blue,
                                    width: 2,
                                  ),
                                ),
                                enabledBorder: const OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(12.0)),
                                  borderSide:
                                      BorderSide(color: Colors.blue, width: 2),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                  borderSide:
                                      BorderSide(color: Colors.blue, width: 2),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.03,
                            ),
                            TextFormField(
                              controller: confirmPasswordController,
                              keyboardType: TextInputType.visiblePassword,
                              autocorrect: true,
                              validator: (String? value) {
                                if (value!.isEmpty) {
                                  return 'Please a Enter Confirm Password';
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                labelText: 'Enter Confirm Password',
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
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(12.0)),
                                  borderSide:
                                      BorderSide(color: Colors.blue, width: 2),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                  borderSide:
                                      BorderSide(color: Colors.blue, width: 2),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.03,
                            ),
                            ElevatedButton(
                              onPressed: () async {
                                if (oldPasswordController.text !=
                                    widget.user!.password!) {
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(const SnackBar(
                                    content: Text("Old password is wrong"),
                                  ));

                                  //Navigator.of(context).pop();
                                } else if (newPasswordController.text == "") {
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(const SnackBar(
                                    content: Text("Please enter new password"),
                                  ));
                                } else if (confirmPasswordController.text ==
                                    "") {
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(const SnackBar(
                                    content:
                                        Text("Please enter confirm password"),
                                  ));
                                } else if (confirmPasswordController.text !=
                                    newPasswordController.text) {
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(const SnackBar(
                                    content: Text(
                                        "Password and confirm password not match"),
                                  ));
                                } else {
                                  updatePassword();
                                  Navigator.of(context).pop();
                                }
                              },
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  fixedSize: Size(
                                      MediaQuery.of(context).size.width * 0.9,
                                      50)),
                              child: const Text(
                                'Save Password',
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                          ],
                        ),
                      )
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

  void updatePassword() async {
    widget.user!.password = confirmPasswordController.text;

    int result = await DatabaseHelperHk().updateUserDetails(widget.user!);
  }
}
