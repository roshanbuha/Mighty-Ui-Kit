import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class FinanceSummaryScreen extends StatefulWidget {
  const FinanceSummaryScreen({Key? key}) : super(key: key);

  @override
  _FinanceSummaryScreenState createState() => _FinanceSummaryScreenState();
}

class _FinanceSummaryScreenState extends State<FinanceSummaryScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF1761C5), Color(0xFF0BB8E4)],
              begin: FractionalOffset(0.0, 1.0),
              end: FractionalOffset(1.0, 0.0),
              stops: [0.0, 1.0],
              tileMode: TileMode.clamp,
            ),
          ),
          child: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                SliverAppBar(
                  title: Padding(
                    padding: const EdgeInsets.only(top: 12, bottom: 16),
                    child: Row(
                      children: [
                        Icon(Icons.arrow_back_ios_outlined,
                            color: Colors.white),
                        SizedBox(width: 8),
                        Center(
                            child: Text('Summary',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 16))),
                      ],
                    ),
                  ),
                  expandedHeight: MediaQuery.of(context).size.height * 0.6,
                  floating: false,
                  pinned: true,
                  forceElevated: innerBoxIsScrolled,
                  backgroundColor: Colors.white,
                  automaticallyImplyLeading: false,
                  flexibleSpace: FlexibleSpaceBar(
                    centerTitle: true,
                    background: Stack(
                      children: [
                        Container(
                          color: Color(0xFF1761C5),
                          height: MediaQuery.of(context).size.height * 0.45,
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.only(left: 16, right: 16),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            margin: EdgeInsets.only(
                                top: 50, left: 16, right: 16, bottom: 8),
                            padding: EdgeInsets.only(left: 16, right: 16),
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 5.0,
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(26),
                                color: Colors.white),
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'September 2021',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(height: 8),
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text('\$148.2',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 24)),
                                      SizedBox(height: 4),
                                      Text(
                                        'left of \$2,744 budget',
                                        style: TextStyle(color: Colors.black54),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 50),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('Your expense is under control',
                                          style:
                                              TextStyle(color: Colors.black54)),
                                      SizedBox(width: 8),
                                      Icon(Icons.info_outline_rounded),
                                    ],
                                  ),
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      padding:
                                          EdgeInsets.only(top: 10, bottom: 10),
                                      primary: Color(0xFF0BB8E4),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30.0),
                                      ),
                                    ),
                                    onPressed: () {},
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Learn More',
                                          style: TextStyle(
                                              fontWeight: FontWeight.normal,
                                              fontSize: 16),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ];
            },
            body: SingleChildScrollView(
              child: Container(
                decoration: BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 5.0,
                  ),
                ]),
                height: MediaQuery.of(context).size.height,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 16),
                    Padding(
                      padding: const EdgeInsets.only(left: 16, right: 16),
                      child: Text(
                        'Top Expense',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ),
                    SizedBox(height: 8),
                    Container(
                      height: 240,
                      child: ListView.builder(
                          padding: EdgeInsets.only(
                              left: 8, bottom: 16, top: 16, right: 8),
                          itemCount: 4,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Container(
                              padding: EdgeInsets.all(16),
                              margin: EdgeInsets.symmetric(horizontal: 8),
                              width: 175,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 5.0,
                                  ),
                                ],
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: Color(0xFF1761C5),
                                    ),
                                    padding: EdgeInsets.all(8),
                                    child: Image(
                                      height: 40,
                                      width: 40,
                                      fit: BoxFit.fill,
                                      image: AssetImage(
                                          'assets/images/hotstar.png'),
                                    ),
                                  ),
                                  SizedBox(height: 8),
                                  Text(
                                    'Disney',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(height: 8),
                                  Text(
                                    'SPENT',
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.black54,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  RichText(
                                    text: TextSpan(
                                      text: '\$341',
                                      style: TextStyle(
                                          color: Colors.black87,
                                          fontWeight: FontWeight.normal,
                                          fontSize: 14),
                                      children: <TextSpan>[
                                        TextSpan(
                                          text: ' out of \$720',
                                          style: TextStyle(
                                              color: Colors.black87,
                                              fontWeight: FontWeight.w800,
                                              fontSize: 16),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 16),
                                  ClipRRect(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(12)),
                                    child: LinearProgressIndicator(
                                      value: 0.5,
                                      minHeight: 10,
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                          Color(0xFF1761C5)),
                                      backgroundColor: Colors.grey[200],
                                    ),
                                  )
                                ],
                              ),
                            );
                          }),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
