import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:mighty_ui_kit/grocery_application/grocery_checkout_screen.dart';

class GroceryCartScreen extends StatefulWidget {
  const GroceryCartScreen({Key? key}) : super(key: key);

  @override
  _GroceryCartScreenState createState() => _GroceryCartScreenState();
}

class _GroceryCartScreenState extends State<GroceryCartScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            elevation: 1,
            centerTitle: false,
            automaticallyImplyLeading: false,
            title: Text('Cart')),
        body: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                physics: ClampingScrollPhysics(),
                child: ListView(
                  shrinkWrap: true,
                  physics: ClampingScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image(
                                height: 80,
                                width: 80,
                                fit: BoxFit.cover,
                                image: AssetImage('assets/images/apple1.png'),
                              ),
                              SizedBox(width: 30),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Asian pear',
                                    style: TextStyle(
                                        wordSpacing: 2,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(height: 5),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: const [
                                      Text(
                                        '\$30.00',
                                        style: TextStyle(
                                            color: Colors.black54,
                                            decoration:
                                                TextDecoration.lineThrough),
                                      ),
                                      SizedBox(width: 8),
                                      Text('\$20.00')
                                    ],
                                  ),
                                  SizedBox(height: 10),
                                  Row(
                                    children: [
                                      Image(
                                        height: 20,
                                        width: 20,
                                        color: Color(0xFF5EB04E),
                                        image: AssetImage(
                                            'assets/images/minus.png'),
                                      ),
                                      SizedBox(width: 16),
                                      Row(
                                        children: const [
                                          Text(
                                            '1',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                      SizedBox(width: 16),
                                      Image(
                                        height: 20,
                                        width: 20,
                                        color: Color(0xFF5EB04E),
                                        image: AssetImage(
                                            'assets/images/plus.png'),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      thickness: 1.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image(
                                height: 80,
                                width: 80,
                                fit: BoxFit.cover,
                                image: AssetImage('assets/images/koby.png'),
                              ),
                              SizedBox(width: 30),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Asian pear',
                                    style: TextStyle(
                                        wordSpacing: 2,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(height: 5),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: const [
                                      Text(
                                        '\$30.00',
                                        style: TextStyle(
                                            color: Colors.black54,
                                            decoration:
                                                TextDecoration.lineThrough),
                                      ),
                                      SizedBox(width: 8),
                                      Text('\$20.00')
                                    ],
                                  ),
                                  SizedBox(height: 10),
                                  Row(
                                    children: [
                                      Image(
                                        height: 20,
                                        width: 20,
                                        color: Color(0xFF5EB04E),
                                        image: AssetImage(
                                            'assets/images/minus.png'),
                                      ),
                                      SizedBox(width: 16),
                                      Row(
                                        children: const [
                                          Text(
                                            '2',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                      SizedBox(width: 16),
                                      Image(
                                        height: 20,
                                        width: 20,
                                        color: Color(0xFF5EB04E),
                                        image: AssetImage(
                                            'assets/images/plus.png'),
                                      ),
                                    ],
                                  ),
                                ],
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
            Padding(
              padding: const EdgeInsets.only(left: 12,right: 12),
              child: MaterialButton(
                height: 50,
                color: Color(0xFF5EB04E),
                textColor: Colors.white,
                minWidth: double.maxFinite,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const GroceryCheckOutScreen()));
                },
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Proceed to Checkout',
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ),
                    Row(
                      children: const [
                        Text(
                          'Total',
                          style: TextStyle(
                            fontSize: 16,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        SizedBox(width: 8),
                        Text(
                          '\$50',
                          style: TextStyle(
                            fontSize: 16,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 8),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 25,
                    )
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
