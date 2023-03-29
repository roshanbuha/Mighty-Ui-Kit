import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class GroceryMyAddressScreen extends StatefulWidget {
  const GroceryMyAddressScreen({Key? key}) : super(key: key);

  @override
  _GroceryMyAddressScreenState createState() => _GroceryMyAddressScreenState();
}

class _GroceryMyAddressScreenState extends State<GroceryMyAddressScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 1,
          automaticallyImplyLeading: false,
          titleSpacing: 0,
          title: Row(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.of(context).pop(true);
                },
                icon: Icon(Icons.arrow_back),
              ),
              SizedBox(
                width: 8,
              ),
              Expanded(
                child: Text(
                  'My Address',
                  style: TextStyle(
                      fontWeight: FontWeight.w400, color: Colors.black),
                ),
              ),
              Text(
                'Add',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF5EB04E),
                ),
              ),
              SizedBox(
                width: 8,
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                physics: ClampingScrollPhysics(),
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  physics: ClampingScrollPhysics(),
                  children: [
                    Padding(
                      padding: EdgeInsets.all(12),
                      child: Column(
                        children: [
                          Container(
                            height: 120,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Color(0xFF5EB04E),
                              ),
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            padding: EdgeInsets.all(16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('1980 Cicero Street'),
                                SizedBox(
                                  height: 5,
                                ),
                                Text('Malden',
                                    style: TextStyle(color: Colors.black54)),
                                SizedBox(
                                  height: 5,
                                ),
                                Text('Mo',
                                    style: TextStyle(color: Colors.black54)),
                                SizedBox(
                                  height: 5,
                                ),
                                Text('698569',
                                    style: TextStyle(color: Colors.black54)),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 120,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            padding: EdgeInsets.all(16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('1980 Cicero Street'),
                                SizedBox(
                                  height: 5,
                                ),
                                Text('Malden',
                                    style: TextStyle(color: Colors.black54)),
                                SizedBox(
                                  height: 5,
                                ),
                                Text('Mo',
                                    style: TextStyle(color: Colors.black54)),
                                SizedBox(
                                  height: 5,
                                ),
                                Text('698569',
                                    style: TextStyle(color: Colors.black54)),
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
          ],
        ),
      ),
    );
  }
}

// add scroll 