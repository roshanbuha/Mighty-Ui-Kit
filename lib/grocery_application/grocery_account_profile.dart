import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:mighty_ui_kit/grocery_application/grocery_edit_profilescreen.dart';
import 'package:mighty_ui_kit/grocery_application/grocery_help_screen.dart';
import 'package:mighty_ui_kit/grocery_application/grocery_my_address.dart';

class GroceryAccountScreen extends StatefulWidget {
  const GroceryAccountScreen({Key? key}) : super(key: key);

  @override
  _GroceryAccountScreenState createState() => _GroceryAccountScreenState();
}

class _GroceryAccountScreenState extends State<GroceryAccountScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          automaticallyImplyLeading: false,
          title: Text('Account'),
          elevation: 0,
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.only(top: 10),
          physics: ClampingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(
                height: 110,
                width: 110,
                fit: BoxFit.fill,
                image: AssetImage('assets/images/user.png'),
              ),
              SizedBox(height: 8),
              Text(
                'John',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              Text(
                'John@gmail.com',
                style: TextStyle(color: Colors.black54, fontSize: 16),
              ),
              SizedBox(height: 16),
              SizedBox(
                height: 50,
                width: 150,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF5EB04E),
                  ),
                  onPressed: () {},
                  child: Row(
                    children: [
                      Icon(
                        Icons.edit_outlined,
                        color: Colors.white,
                      ),
                      SizedBox(width: 8),
                      Text(
                        'Edit Profile',
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const GroceryEditProfileScreen()),
                      );
                      },
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Profile Settings',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400,
                                      wordSpacing: 2),
                                ),
                                SizedBox(height: 5),
                                Text('change Your Basic Profile',
                                    style: TextStyle(color: Colors.black54)),
                              ],
                            ),
                          ),
                          Column(
                            children: [
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Color(0xFF5EB04E),
                                size: 20,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Promos',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    wordSpacing: 2),
                              ),
                              SizedBox(height: 5),
                              Text('Latest promos from us',
                                  style: TextStyle(color: Colors.black54)),
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Color(0xFF5EB04E),
                              size: 20,
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const GroceryMyAddressScreen()),
                      );
                      },
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'My Address',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400,
                                      wordSpacing: 2),
                                ),
                                SizedBox(height: 5),
                                Text('Your Address',
                                    style: TextStyle(color: Colors.black54)),
                              ],
                            ),
                          ),
                          Column(
                            children: [
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Color(0xFF5EB04E),
                                size: 20,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Terms, pricacy, & policy',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    wordSpacing: 2),
                              ),
                              SizedBox(height: 5),
                              Text('Things you may want to know',
                                  style: TextStyle(color: Colors.black54)),
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Color(0xFF5EB04E),
                              size: 20,
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const GroceryHelpScreen()),
                      );
                      },
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Help & Support',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400,
                                      wordSpacing: 2),
                                ),
                                SizedBox(height: 5),
                                Text('Get support from Us',
                                    style: TextStyle(color: Colors.black54)),
                              ],
                            ),
                          ),
                          Column(
                            children: [
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Color(0xFF5EB04E),
                                size: 20,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Logout',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    wordSpacing: 3),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
