import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MbBudgetScreen extends StatefulWidget {
  const MbBudgetScreen({Key? key}) : super(key: key);

  @override
  _MbBudgetScreenState createState() => _MbBudgetScreenState();
}

class _MbBudgetScreenState extends State<MbBudgetScreen> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        body: SingleChildScrollView(
          padding: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 28),
              Text(
                'Budget',
                textScaleFactor: 1.4,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 28),
              ),
              SizedBox(height: 16),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(12),
                ),
                height: 60,
                child: ListView.builder(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            count = index;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                            primary:
                                count == index ? Colors.blue : Colors.white),
                        child: Text(
                          'January',
                          style: TextStyle(
                              fontSize: 15,
                              color:
                                  count == index ? Colors.white : Colors.black),
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 20),
              Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Material(
                        borderRadius: BorderRadius.circular(20),
                        elevation: 5,
                        child: Container(
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.white,
                                  blurRadius: 5.0,
                                ),
                              ]),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 16),
                              Text(
                                'Budget',
                                style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.normal),
                              ),
                              SizedBox(height: 6),
                              Row(
                                children: [
                                  Text(
                                    '\$2446.00',
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(width: 16),
                                  Expanded(child: Text('66%')),
                                  Text('\$60,000'),
                                ],
                              ),
                              SizedBox(height: 16),
                              Container(
                                height: 8.0,
                                alignment: Alignment.topLeft,
                                width: MediaQuery.of(context).size.width * 0.75,
                                decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: Container(
                                    color: Colors.greenAccent,
                                    width: 170,
                                    height: 50.0,
                                  ),
                                ),
                              ),
                              SizedBox(height: 16),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Material(
                        borderRadius: BorderRadius.circular(20),
                        elevation: 5,
                        child: Container(
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.white,
                                  blurRadius: 5.0,
                                ),
                              ]),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 16),
                              Text(
                                'Budget',
                                style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.normal),
                              ),
                              SizedBox(height: 6),
                              Row(
                                children: [
                                  Text(
                                    '\$2446.00',
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(width: 16),
                                  Expanded(child: Text('66%')),
                                  Text('\$60,000'),
                                ],
                              ),
                              SizedBox(height: 16),
                              Container(
                                height: 8.0,
                                alignment: Alignment.topLeft,
                                width: MediaQuery.of(context).size.width * 0.75,
                                decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: Container(
                                    color: Colors.greenAccent,
                                    width: 170,
                                    height: 50.0,
                                  ),
                                ),
                              ),
                              SizedBox(height: 16),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              fixedSize: Size.fromHeight(50),
                            ),
                            onPressed: () {},
                            child: Text(
                              'Save New Budget',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            )),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
