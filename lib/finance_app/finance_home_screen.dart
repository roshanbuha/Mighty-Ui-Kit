import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:mighty_ui_kit/finance_app/finance_send_money.dart';

class FinanceHomeScreen extends StatefulWidget {
  const FinanceHomeScreen({Key? key}) : super(key: key);

  @override
  _FinanceHomeScreenState createState() => _FinanceHomeScreenState();
}

class _FinanceHomeScreenState extends State<FinanceHomeScreen> {
  String selectedAmount = '*2563';
  var isRecurring = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: MediaQuery.of(context).size.height * 0.5,
                floating: false,
                pinned: true,
                forceElevated: innerBoxIsScrolled,
                backgroundColor: Color(0xFF1761C5),
                automaticallyImplyLeading: false,
                title: Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Finance',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      height: 40,
                      padding: EdgeInsets.only(left: 16, right: 16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Color(0xFF0BB8E4).withOpacity(0.2),
                      ),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          value: selectedAmount,
                          dropdownColor: Colors.grey[600],
                          icon: Icon(Icons.keyboard_arrow_down,
                              color: Colors.white),
                          items: <String>['*2563', '*4523', '*1236', '*6522']
                              .map((String value) {
                            return new DropdownMenuItem<String>(
                              value: value,
                              child: Text(value,
                                  style: TextStyle(color: Colors.white)),
                            );
                          }).toList(),
                          onChanged: (newValue) {
                            setState(() {});
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Icon(
                      Icons.notifications,
                      color: Colors.white,
                    ),
                  ],
                ),
                flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  background: Stack(
                    children: [
                      Container(
                        color: Color(0xFF1761C5),
                        height: MediaQuery.of(context).size.height * 0.45,
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.only(left: 16, right: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Safe-to-Spend',
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Row(
                              children: [
                                Text(
                                  '\$ 2,985213.64',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 30),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Icon(Icons.info_outline_rounded,
                                    color: Colors.white70),
                              ],
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              'Updated 2 mins ago',
                              style: TextStyle(color: Colors.white70),
                            )
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          margin:
                              EdgeInsets.only(left: 16, right: 16, bottom: 8),
                          padding: EdgeInsets.only(left: 16, right: 16),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.white,
                                ),
                              ]),
                          height: 100,
                          child: Align(
                            alignment: Alignment.center,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        gradient: LinearGradient(
                                          colors: [
                                            Color(0xFF1761C5),
                                            Color(0xFF0BB8E4)
                                          ],
                                          begin: FractionalOffset(0.0, 0.0),
                                          end: FractionalOffset(1.0, 0.0),
                                          stops: [0.0, 1.0],
                                          tileMode: TileMode.clamp,
                                        ),
                                      ),
                                      padding: EdgeInsets.all(12),
                                      child: Image(
                                        image: AssetImage(
                                            'assets/images/money2.png'),
                                        height: 16,
                                        width: 16,
                                        fit: BoxFit.fill,
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Text(
                                      'Top Up',
                                      style: TextStyle(
                                          color: Colors.black54, fontSize: 12),
                                    ),
                                  ],
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const FinanceSendMoneyScreen()),
                                    );
                                  },
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: 50,
                                        width: 50,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          gradient: LinearGradient(
                                            colors: [
                                              Color(0xFF1761C5),
                                              Color(0xFF0BB8E4)
                                            ],
                                            begin: FractionalOffset(0.0, 0.0),
                                            end: FractionalOffset(1.0, 0.0),
                                            stops: [0.0, 1.0],
                                            tileMode: TileMode.clamp,
                                          ),
                                        ),
                                        padding: EdgeInsets.all(12),
                                        child: Image(
                                          image: AssetImage(
                                              'assets/images/money_transfer.png'),
                                          height: 16,
                                          width: 16,
                                          fit: BoxFit.fill,
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Text(
                                        'Transfer',
                                        style: TextStyle(
                                            color: Colors.black54,
                                            fontSize: 12),
                                      ),
                                    ],
                                  ),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        gradient: LinearGradient(
                                          colors: [
                                            Color(0xFF1761C5),
                                            Color(0xFF0BB8E4)
                                          ],
                                          begin: FractionalOffset(0.0, 0.0),
                                          end: FractionalOffset(1.0, 0.0),
                                          stops: [0.0, 1.0],
                                          tileMode: TileMode.clamp,
                                        ),
                                      ),
                                      padding: EdgeInsets.all(12),
                                      child: Image(
                                        image: AssetImage(
                                            'assets/images/history.png'),
                                        height: 16,
                                        width: 16,
                                        fit: BoxFit.fill,
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Text(
                                      'History',
                                      style: TextStyle(
                                          color: Colors.black54, fontSize: 12),
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        gradient: LinearGradient(
                                          colors: [
                                            Color(0xFF1761C5),
                                            Color(0xFF0BB8E4)
                                          ],
                                          begin: FractionalOffset(0.0, 0.0),
                                          end: FractionalOffset(1.0, 0.0),
                                          stops: [0.0, 1.0],
                                          tileMode: TileMode.clamp,
                                        ),
                                      ),
                                      padding: EdgeInsets.all(12),
                                      child: Image(
                                        image:
                                            AssetImage('assets/images/atm.png'),
                                        height: 16,
                                        width: 16,
                                        fit: BoxFit.fill,
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Text(
                                      'ATM',
                                      style: TextStyle(
                                          color: Colors.black54, fontSize: 12),
                                    ),
                                  ],
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
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 24),
                  Padding(
                    padding: const EdgeInsets.only(left: 16, right: 16),
                    child: Text(
                      'Upcoming',
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                    ),
                  ),
                  SizedBox(height: 8),
                  Padding(
                    padding: const EdgeInsets.only(left: 16, right: 16),
                    child: Text(
                      'You have 6 upcoming subscriptions',
                      style: TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.normal,
                          fontSize: 16),
                    ),
                  ),
                  SizedBox(height: 16),
                  Container(
                    height: 220,
                    child: ListView(
                      padding: EdgeInsets.only(
                          left: 8, bottom: 16, top: 16, right: 8),
                      scrollDirection: Axis.horizontal,
                      children: [
                        GestureDetector(
                          onTap: () async {
                            await showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return Center(
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      padding: EdgeInsets.all(15),
                                      margin: EdgeInsets.all(35),
                                      width: MediaQuery.of(context).size.width,
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Column(
                                                children: [
                                                  Image(
                                                    height: 50,
                                                    width: 50,
                                                    fit: BoxFit.fill,
                                                    image: AssetImage(
                                                        'assets/images/hotstar.png'),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(width: 20),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Hotstar Premium',
                                                    style: TextStyle(
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        color: Colors.black87),
                                                  ),
                                                  SizedBox(height: 5),
                                                  Text(
                                                    '*123456',
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        color: Colors.black54),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          SizedBox(height: 8),
                                          Divider(),
                                          SizedBox(height: 8),
                                          Text(
                                            'Amount',
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.normal,
                                                color: Colors.black87),
                                          ),
                                          SizedBox(height: 12),
                                          Text(
                                            '\$16.4',
                                            textScaleFactor: 1.2,
                                            style: TextStyle(
                                                fontSize: 22,
                                                fontWeight: FontWeight.w700,
                                                color: Colors.black87),
                                          ),
                                          SizedBox(height: 12),
                                          Row(
                                            children: [
                                              Expanded(
                                                child: Text(
                                                  'Date & time',
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      color: Colors.black54),
                                                ),
                                              ),
                                              Text(
                                                'Tuesday - Sep 14, 2021',
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    color: Colors.black),
                                              ),
                                            ],
                                          ),
                                          SizedBox(height: 20),
                                          Row(
                                            children: [
                                              Expanded(
                                                child: Text(
                                                  'Category',
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      color: Colors.black54),
                                                ),
                                              ),
                                              Text(
                                                'Bills & Utilities',
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    color: Colors.black),
                                              ),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Icon(
                                                  Icons
                                                      .arrow_forward_ios_outlined,
                                                  size: 13,
                                                  color: Colors.black54)
                                            ],
                                          ),
                                          SizedBox(height: 20),
                                          Row(
                                            children: [
                                              Expanded(
                                                child: Text(
                                                  'Recurring',
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      color: Colors.black54),
                                                ),
                                              ),
                                              CupertinoSwitch(
                                                value: true,
                                                activeColor: Color(0xFF0BB8E4),
                                                onChanged: (value) {
                                                  setState(() {
                                                    isRecurring = value;
                                                  });
                                                },
                                              )
                                            ],
                                          ),
                                          SizedBox(height: 20),
                                          Row(
                                            children: [
                                              Expanded(
                                                child: Text(
                                                  'Checking *6811',
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      color: Colors.black54),
                                                ),
                                              ),
                                              Text(
                                                'Bills & Utilities',
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    color: Colors.black),
                                              ),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Icon(
                                                  Icons
                                                      .arrow_forward_ios_outlined,
                                                  size: 13,
                                                  color: Colors.black54)
                                            ],
                                          ),
                                          SizedBox(height: 20),
                                          ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                              shape:  RoundedRectangleBorder(
                                                borderRadius:
                                                     BorderRadius.circular(
                                                        30.0),
                                              ),
                                              //minimumSize: Size(double.infinity,40
                                              minimumSize:
                                                  Size(double.infinity, 50),
                                            ),
                                            onPressed: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        const FinanceHomeScreen()),
                                              );
                                            },
                                            child: Text(
                                              'See history (10)',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  );
                                });
                          },
                          child: Container(
                            width: 175,
                            padding: EdgeInsets.all(16),
                            margin: EdgeInsets.symmetric(horizontal: 8),
                            decoration:
                                BoxDecoration(color: Colors.white, boxShadow: [
                              BoxShadow(
                                offset: Offset(2, 2),
                                blurRadius: 12,
                                color: Color.fromRGBO(0, 0, 0, 0.16),
                              )
                            ]),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image(
                                  height: 50,
                                  width: 50,
                                  fit: BoxFit.fill,
                                  image:
                                      AssetImage('assets/images/hotstar.png'),
                                ),
                                SizedBox(height: 16),
                                Text(
                                  'Hotstar Premium',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black87),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  'Tomorrow',
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.black54),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  '\$16.4',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black87),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 175,
                          padding: EdgeInsets.all(16),
                          margin: EdgeInsets.symmetric(horizontal: 8),
                          decoration:
                              BoxDecoration(color: Colors.white, boxShadow: [
                            BoxShadow(
                              offset: Offset(2, 2),
                              blurRadius: 12,
                              color: Color.fromRGBO(0, 0, 0, 0.16),
                            )
                          ]),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(
                                height: 50,
                                width: 50,
                                fit: BoxFit.fill,
                                image: AssetImage('assets/images/net.png'),
                              ),
                              SizedBox(height: 16),
                              Text(
                                'Netflix Premium',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black87),
                              ),
                              SizedBox(height: 8),
                              Text(
                                'Tomorrow',
                                style: TextStyle(
                                    fontSize: 14, color: Colors.black54),
                              ),
                              SizedBox(height: 8),
                              Text(
                                '\$16.4',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black87),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 175,
                          padding: EdgeInsets.all(16),
                          margin: EdgeInsets.symmetric(horizontal: 8),
                          decoration:
                              BoxDecoration(color: Colors.white, boxShadow: [
                            BoxShadow(
                              offset: Offset(2, 2),
                              blurRadius: 12,
                              color: Color.fromRGBO(0, 0, 0, 0.16),
                            )
                          ]),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(
                                height: 50,
                                width: 50,
                                fit: BoxFit.fill,
                                image: AssetImage('assets/images/net.png'),
                              ),
                              SizedBox(height: 16),
                              Text(
                                'Netflix Premium',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black87),
                              ),
                              SizedBox(height: 8),
                              Text(
                                'Tomorrow',
                                style: TextStyle(
                                    fontSize: 14, color: Colors.black54),
                              ),
                              SizedBox(height: 8),
                              Text(
                                '\$16.4',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black87),
                              ),
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
        ),
      ),
    );
  }
}
