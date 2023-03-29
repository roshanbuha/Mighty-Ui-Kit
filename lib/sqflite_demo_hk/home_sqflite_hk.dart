import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:mighty_ui_kit/sqflite_demo_hk/change_password_sqflite_hk.dart';
import 'package:mighty_ui_kit/sqflite_demo_hk/databasehelper_hk.dart';
import 'package:mighty_ui_kit/sqflite_demo_hk/log_in_sqflite_hk.dart';
import 'package:mighty_ui_kit/sqflite_demo_hk/sign_up_sqflite_hk.dart';
import 'package:mighty_ui_kit/sqflite_demo_hk/update_sqflite_hk.dart';
import 'package:mighty_ui_kit/sqflite_demo_hk/usermodelhk.dart';

class HomePageSqfliteHk extends StatefulWidget {
  HomePageSqfliteHk({this.user, this.userModelHk});

  UserModelHk? user, userModelHk;

  @override
  _HomePageSqfliteHkState createState() => _HomePageSqfliteHkState();
}

class _HomePageSqfliteHkState extends State<HomePageSqfliteHk> {
  @override
  void initState() {
    setState(() {
      widget.userModelHk;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          elevation: 0.0,
          toolbarHeight: 70,
          automaticallyImplyLeading: false,
          systemOverlayStyle: SystemUiOverlayStyle.light,
          title: Row(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back),
                iconSize: 30,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.05,
              ),
              Expanded(child: Text('User Profile')),
              IconButton(
                onPressed: () async {
                  await Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) =>
                        SqFliteUpdateDemoHk(user: widget.user),
                  ));
                },
                icon: Icon(Icons.edit),
                iconSize: 30,
              ),
              IconButton(
                onPressed: () async {
                  await Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ChangePasswordSqfliteHk(
                      user: widget.user,
                    ),
                  ));
                },
                icon: const Icon(Icons.password),
                iconSize: 30,
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.fromLTRB(10, 15, 10, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Name',
                  style: TextStyle(color: Colors.blue, fontSize: 16),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.007,
                ),
                Text(
                  widget.user!.name!,
                  style: const TextStyle(color: Colors.black, fontSize: 16),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                const Text(
                  'Father name',
                  style: TextStyle(color: Colors.blue, fontSize: 16),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.007,
                ),
                Text(
                  widget.user!.fatherName!,
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                const Text(
                  'E-mail',
                  style: TextStyle(color: Colors.blue, fontSize: 16),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.007,
                ),
                Text(
                  widget.user!.email!,
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                const Text(
                  'Mobile No.',
                  style: TextStyle(color: Colors.blue, fontSize: 16),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.007,
                ),
                Text(
                  '+91:-  ${widget.user!.mobileNumber.toString()}',
                  style: const TextStyle(color: Colors.black, fontSize: 16),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                const Text(
                  'Adhar Card No.',
                  style: TextStyle(color: Colors.blue, fontSize: 16),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.007,
                ),
                Text(
                  widget.user!.adharNumber.toString(),
                  style: const TextStyle(color: Colors.black, fontSize: 16),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                const Text(
                  'Colony Name',
                  style: TextStyle(color: Colors.blue, fontSize: 16),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.007,
                ),
                Text(
                  widget.user!.colonyName!,
                  style: const TextStyle(color: Colors.black, fontSize: 16),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                const Text(
                  'City Name',
                  style: TextStyle(color: Colors.blue, fontSize: 16),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.007,
                ),
                Text(
                  widget.user!.cityName!,
                  style: const TextStyle(color: Colors.black, fontSize: 16),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                const Text(
                  'Pin Code',
                  style: TextStyle(color: Colors.blue, fontSize: 16),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.007,
                ),
                Text(
                  widget.user!.pinCode.toString(),
                  style: const TextStyle(color: Colors.black, fontSize: 16),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                const Text(
                  'Date-of-birth',
                  style: TextStyle(color: Colors.blue, fontSize: 16),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.007,
                ),
                Text(
                  widget.user!.date!,
                  style: const TextStyle(color: Colors.black, fontSize: 16),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                const Text(
                  'Gender',
                  style: TextStyle(color: Colors.blue, fontSize: 16),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.007,
                ),
                Text(
                  widget.user!.gender!,
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushAndRemoveUntil(
                      // the new route
                      MaterialPageRoute(
                        builder: (BuildContext context) => SqFliteLoginDemoHk(),
                      ),

                      // this function should return true when we're done removing routes
                      // but because we want to remove all other screens, we make it
                      // always return false
                      (Route route) => false,
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      fixedSize:
                          Size(MediaQuery.of(context).size.width * 0.9, 50)),
                  child: const Text(
                    'Log out',
                    style: TextStyle(fontSize: 18),
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
