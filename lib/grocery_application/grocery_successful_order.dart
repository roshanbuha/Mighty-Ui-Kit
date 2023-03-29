import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:mighty_ui_kit/grocery_application/grocery_checkout_screen.dart';


class GrocerySuccesfullOrder extends StatefulWidget {
  const GrocerySuccesfullOrder({Key? key}) : super(key: key);

  @override
  _GrocerySuccesfullOrderState createState() => _GrocerySuccesfullOrderState();
}

class _GrocerySuccesfullOrderState extends State<GrocerySuccesfullOrder> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF5EB04E),
        body: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    height: 120,
                    width: 120,
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/right.jpg'),
                  ),
                  SizedBox(height: 30),
                  Center(
                    child: Text(
                      'John, your order has been successful',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Check your status in  My Order',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  Text(
                    'about next steps information',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ],
              ),
            ),
            Container(
              padding:
                  EdgeInsets.only(left: 16, right: 16, bottom: 16, top: 30),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Preparing your order',
                    style: TextStyle(
                        fontSize: 22,
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    'Your order will be prepared and will come soon',
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  MaterialButton(
                    height: 50,
                    color: Color(0xFF5EB04E),
                    textColor: Colors.white,
                    minWidth: double.maxFinite,
                    onPressed: () {
                      Navigator.push(
                        context,
                        
                        MaterialPageRoute(builder: (context) => const GroceryCheckOutScreen())
                      );
                    },
                    child: Text(
                      'Track My Order',
                      style: TextStyle(
                        fontSize: 16,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
