import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:mighty_ui_kit/grocery_application/grocery_payment_screen.dart';
import 'package:mighty_ui_kit/grocery_application/grocery_successful_order.dart';


class GroceryCheckOutScreen extends StatefulWidget {
  const GroceryCheckOutScreen({Key? key}) : super(key: key);

  @override
  _GroceryCheckOutScreenState createState() => _GroceryCheckOutScreenState();
}

class _GroceryCheckOutScreenState extends State<GroceryCheckOutScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          title: Text('Checkout'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: SingleChildScrollView(
                physics: ClampingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 16, right: 16, top: 8, bottom: 8),
                      child: Text(
                        'Destination',
                        style: TextStyle(fontSize: 16, color: Colors.black54),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(16),
                      color: Colors.white,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image(
                            fit: BoxFit.fill,
                            height: 90,
                            width: 90,
                            image: AssetImage('assets/images/map.png'),
                          ),
                          SizedBox(width: 16),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '8618 Hickory Avenue Newington, CT 06111',
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.black87),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  '(254)544545645',
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.black87),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 8),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 16, right: 16, top: 8, bottom: 8),
                      child: Text(
                        'Pick up time',
                        style: TextStyle(color: Colors.black54, fontSize: 16),
                      ),
                    ),
                    SizedBox(height: 8),
                    Container(
                      color: Colors.white,
                      padding: EdgeInsets.all(16),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.schedule,
                                color: Color(0xFF5EB04E),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(child: Text('Fri,10 Sep 2021 - 11:18')),
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 18,
                                color: Color(0xFF5EB04E),
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          Row(
                            children: [
                              Icon(
                                Icons.watch,
                                color: Color(0xFF5EB04E),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(child: Text('Pick Up Time 30-40 Min')),
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 18,
                                color: Color(0xFF5EB04E),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 16, right: 16, top: 8, bottom: 8),
                      child: Text(
                        'Total',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Container(
                      color: Colors.white,
                      padding: EdgeInsets.all(16),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Total',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Text(
                            '\$0.78',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 16, right: 16, top: 8, bottom: 8),
                      child: Text(
                        'Payment Method',
                        style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.normal,
                            fontSize: 16),
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Container(
                      color: Colors.white,
                      padding: EdgeInsets.all(16),
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const GroceryPaymentScreen(),
                                ),
                              );
                            },
                            child: Row(
                              children: [
                                Icon(
                                  Icons.payment,
                                  color: Color(0xFF5EB04E),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Expanded(child: Text('Add Payment Method')),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  size: 18,
                                  color: Color(0xFF5EB04E),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 16, right: 16, top: 8, bottom: 8),
                      child: Text(
                        'Promo Code',
                        style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.normal,
                            fontSize: 16),
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Container(
                      color: Colors.white,
                      padding: EdgeInsets.all(16),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.payment,
                                color: Color(0xFF5EB04E),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(child: Text('Add Promo Code')),
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 18,
                                color: Color(0xFF5EB04E),
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
            MaterialButton(
              height: 50,
              color: Color(0xFF5EB04E),
              textColor: Colors.white,
              minWidth: double.maxFinite,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const GrocerySuccesfullOrder()));
              },
              child: Text(
                'Place Order',
                style: TextStyle(
                  fontSize: 16,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
