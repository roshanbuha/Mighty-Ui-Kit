import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class FinanceActivityScreen extends StatefulWidget {
  const FinanceActivityScreen({Key? key}) : super(key: key);

  @override
  _FinanceActivityScreenState createState() => _FinanceActivityScreenState();
}

class _FinanceActivityScreenState extends State<FinanceActivityScreen> {
  String selectedDays = 'Monthly';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.4,
              color: Color(0xFF1761C5),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 100, left: 20),
                  child: Row(
                    children: [
                      Text(
                        'Monthly',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                      Icon(
                        Icons.arrow_drop_down,
                        color: Colors.white,
                        size: 30,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color(0xFF0BB8E4).withOpacity(0.2),
                    ),
                    padding: EdgeInsets.all(8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: Colors.grey[200],
                          ),
                          child: Icon(Icons.navigate_next_outlined,
                              color: Colors.grey),
                        ),
                        SizedBox(width: 4),
                        Column(
                          children: [
                            Text(
                              'September',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 4),
                            Row(
                              children: [
                                Text('1 April 2021 - ',
                                    style: TextStyle(color: Colors.white)),
                                Text('30 April 2021',
                                    style: TextStyle(color: Colors.white)),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(width: 4),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: Colors.grey[200],
                          ),
                          child: Icon(Icons.navigate_next_outlined,
                              color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 16),
                Container(
                  margin: EdgeInsets.only(left: 16, right: 16),
                  padding: EdgeInsets.only(left: 16, right: 16),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 5.0,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(26),
                    color: Colors.white,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ListTile(
                        leading: Image(
                          height: 60,
                          width: 60,
                          fit: BoxFit.fill,
                          color: Colors.red,
                          image: AssetImage('assets/images/up.png'),
                        ),
                        title: Text(
                          '\$684.12',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text('Income'),
                        trailing: Icon(
                          Icons.navigate_next_outlined,
                          color: Colors.black,
                        ),
                      ),
                      Divider(
                        thickness: 2,
                      ),
                      ListTile(
                        leading: Image(
                          height: 60,
                          width: 60,
                          fit: BoxFit.fill,
                          color: Colors.green,
                          image: AssetImage('assets/images/down.png'),
                        ),
                        title: Text(
                          '\$684.12',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text('Income'),
                        trailing: Icon(
                          Icons.navigate_next_outlined,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Expenses Trend',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                  fontSize: 20)),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('1 April 2021 - 30 April 2021',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black54,
                                  fontSize: 14)),
                        ],
                      ),
                      SizedBox(height: 30),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                            height: 200,
                            width: 350,
                            fit: BoxFit.fill,
                            image: AssetImage('assets/images/tred.png'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
