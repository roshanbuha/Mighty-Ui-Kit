import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class GroceryNotificationScreen extends StatefulWidget {
  const GroceryNotificationScreen({Key? key}) : super(key: key);

  @override
  _GroceryNotificationScreenState createState() => _GroceryNotificationScreenState();
}

class _GroceryNotificationScreenState extends State<GroceryNotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            title: Text('Notification')),
        body: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Info',
                  style: TextStyle(fontSize: 12, color: Colors.orange),
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  'Rate your Order Experince',
                  style: TextStyle(
                      wordSpacing: 2, fontSize: 16, color: Colors.black),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'The gift can you can use in next order',
                  style: TextStyle(
                      wordSpacing: 2, fontSize: 16, color: Colors.black54),
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(
                  height: 5,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Transaction',
                  style: TextStyle(fontSize: 12, color: Colors.orange),
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  'Waiting for payment',
                  style: TextStyle(
                      wordSpacing: 2, fontSize: 16, color: Colors.black),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'The gift can you can use in next order',
                  style: TextStyle(
                      wordSpacing: 2, fontSize: 16, color: Colors.black54),
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(
                  height: 5,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Promo',
                  style: TextStyle(fontSize: 12, color: Colors.orange),
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  'You got 10% off from your last order',
                  style: TextStyle(
                      wordSpacing: 2, fontSize: 16, color: Colors.black),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'The gift can you can use in next order',
                  style: TextStyle(
                      wordSpacing: 2, fontSize: 16, color: Colors.black54),
                ),
              ],
            )),
      ),
    );
  }
}
