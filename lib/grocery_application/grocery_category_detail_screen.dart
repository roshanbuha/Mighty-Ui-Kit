import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:mighty_ui_kit/grocery_application/grocery_checkout_screen.dart';


class GroceryCategoryDetailScreen extends StatefulWidget {
  const GroceryCategoryDetailScreen({Key? key}) : super(key: key);

  @override
  _GroceryCategoryDetailScreenState createState() => _GroceryCategoryDetailScreenState();
}

class _GroceryCategoryDetailScreenState extends State<GroceryCategoryDetailScreen> {
  int ratingNum = 0;
  int counter = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
        ),
        body: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                physics: ClampingScrollPhysics(),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Image(
                          height: 180,
                          width: 180,
                          fit: BoxFit.cover,
                          alignment: Alignment.center,
                          image: AssetImage('assets/images/koby.png'),
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Cauliflower',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    '\$30.0/kg',
                                    style: TextStyle(
                                        color: Colors.black54,
                                        decoration: TextDecoration.lineThrough),
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text('\$30.0/kg')
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      Divider(),
                      SizedBox(height: 8),
                      Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quod dicit Epicurus etiam de voluptate, quae minime sint voluptates, eas obscurari saepe et obrui. Innumerabilia dici possunt in hanc sententiam, sed non necesse est.',
                        style: TextStyle(fontWeight: FontWeight.w300),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Review',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 16),
                      Row(
                        children: [
                          RatingBar.builder(
                            initialRating: 5,
                            minRating: 1,
                            itemCount: 5,
                            glow: false,
                            maxRating: 5,
                            itemSize: 20,
                            ignoreGestures: true,
                            itemBuilder: (context, _) =>
                                Icon(Icons.star, color: Colors.amber),
                            onRatingUpdate: (rating) {
                              ratingNum = rating.toInt();
                              setState(() {});
                            },
                          ),
                          SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              '5.0 from  1.942 users',
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w300),
                            ),
                          ),
                          Icon(Icons.arrow_forward_ios,
                              size: 20, color: Colors.grey),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              alignment: Alignment.bottomCenter,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(12),
                  topLeft: Radius.circular(12),
                ),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Total',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          '\$20.0',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Row(
                        children: [
                          Image(
                            image: AssetImage('assets/images/minus.png'),
                            height: 24,
                            width: 24,
                            color: Color(0xFF5EB04E),
                          ),
                          SizedBox(width: 16),
                          Text(
                            '1',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w400),
                          ),
                          SizedBox(width: 16),
                          Image(
                            image: AssetImage('assets/images/plus.png'),
                            height: 24,
                            width: 24,
                            color: Color(0xFF5EB04E),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit.\nQuod dicit Epicurus etiam de voluptate, quae minime.',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  SizedBox(height: 30),
                  MaterialButton(
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
                    child: Text(
                      'Checkout',
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
