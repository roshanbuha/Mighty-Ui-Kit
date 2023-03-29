import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:mighty_ui_kit/meela_bank/mb_create_budget.dart';

class MbSetAmountrScreen extends StatefulWidget {
  const MbSetAmountrScreen({Key? key}) : super(key: key);

  @override
  _MbSetAmountrScreenState createState() => _MbSetAmountrScreenState();
}

class _MbSetAmountrScreenState extends State<MbSetAmountrScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[50],
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    fixedSize: Size(130, 50),
                    elevation: 12.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusDirectional.all(
                        Radius.circular(8),
                      ),
                    ),
                    primary: Colors.blue),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MbCreateBudgetScreen()),
                  );
                },
                child: Text(
                  'Transfer',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    fixedSize: Size(130, 50),
                    elevation: 12.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusDirectional.all(
                        Radius.circular(8),
                      ),
                    ),
                    primary: Colors.white),
                onPressed: () {},
                child: Text(
                  'Cancel',
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Set Amount',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 22,
                      color: Colors.black87),
                ),
                SizedBox(height: 15),
                Text(
                  'How much you would like to send ?',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: Colors.black54),
                ),
                SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.all(16),
                  height: 180,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(2, 2),
                        blurRadius: 5,
                        color: Color.fromRGBO(0, 0, 0, 0.16),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(8),
                              ),
                              color: Color(0xFFA3E5EE),
                            ),
                            child:
                                Icon(Icons.add, color: Colors.white, size: 22),
                          ),
                          SizedBox(width: 20),
                          Text(
                            '\$7,000',
                            style: TextStyle(
                                color: Colors.blue,
                                fontSize: 22,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(width: 20),
                          Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(8),
                              ),
                              color: Color(0xFFA3E5EE),
                            ),
                            child: Icon(Icons.horizontal_rule,
                                color: Colors.white, size: 22),
                          ),
                        ],
                      ),
                      SizedBox(height: 16),
                      Text(
                        'Quick Action',
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(height: 10),
                      Container(
                          height: 60,
                          child: ListView.builder(
                            itemCount: 3,
                            shrinkWrap: true,
                            padding: EdgeInsets.only(top: 16),
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Container(
                                margin: EdgeInsets.only(right: 16),
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: Text('\$100'),
                                  style: ElevatedButton.styleFrom(
                                    fixedSize: Size(90, 60),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(12),
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            },
                          )),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  padding: EdgeInsets.all(16),
                  height: 180,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(2, 2),
                        blurRadius: 5,
                        color: Color.fromRGBO(0, 0, 0, 0.16),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Recent Receipts',
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(height: 10),
                      Container(
                          height: 110,
                          width: MediaQuery.of(context).size.width,
                          child: ListView.builder(
                            itemCount: 6,
                            shrinkWrap: true,
                            padding: EdgeInsets.only(top: 16),
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Container(
                                margin: EdgeInsets.only(right: 16),
                                child: Column(
                                  children: [
                                    Image(
                                      height: 60,
                                      width: 60,
                                      image:
                                          AssetImage('assets/images/men.png'),
                                    ),
                                    SizedBox(height: 10),
                                    Expanded(
                                      child: Text(
                                        'Billy',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                            color: Colors.black54),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          )),
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
