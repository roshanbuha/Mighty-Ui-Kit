import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CtWatchList extends StatefulWidget {
  const CtWatchList({Key? key}) : super(key: key);

  @override
  _CtWatchListState createState() => _CtWatchListState();
}

class _CtWatchListState extends State<CtWatchList> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.indigo[600],
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Dashboard',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Icon(
                          Icons.more_vert,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 60,
                child: ListView.builder(
                  itemCount: 6,
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
                          'Lowest Price',
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0, 0),
                            blurRadius: 5,
                            spreadRadius: 0,
                            color: Colors.black.withOpacity(0.2)),
                      ],
                      color: Colors.indigo[400]),
                  child: Column(
                    children: [
                      ListTile(
                        leading: Image(
                            height: 40,
                            width: 40,
                            fit: BoxFit.fill,
                            image: AssetImage('assets/images/bitcoin.png')),
                        title: Text(
                          'Bitcoin',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        subtitle: Text(
                          'Received - taken 2020',
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.white,
                            decoration: TextDecoration.none,
                          ),
                        ),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              '-1.33BTC',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.red,
                                decoration: TextDecoration.none,
                              ),
                            ),
                            Icon(
                              Icons.trending_down,
                              color: Colors.red,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0, 0),
                            blurRadius: 5,
                            spreadRadius: 0,
                            color: Colors.black.withOpacity(0.2)),
                      ],
                      color: Colors.indigo[400]),
                  child: Column(
                    children: [
                      ListTile(
                        leading: Image(
                            height: 40,
                            width: 40,
                            fit: BoxFit.fill,
                            image: AssetImage('assets/images/bitcoin.png')),
                        title: Text(
                          'Nov 30 2017',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        subtitle: Text(
                          'Received - taken 2020',
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.white,
                            decoration: TextDecoration.none,
                          ),
                        ),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              '-1.33BTC',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.blue,
                                decoration: TextDecoration.none,
                              ),
                            ),
                            Icon(
                              Icons.trending_up,
                              color: Colors.blueAccent,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0, 0),
                            blurRadius: 5,
                            spreadRadius: 0,
                            color: Colors.black.withOpacity(0.2)),
                      ],
                      color: Colors.indigo[400]),
                  child: Column(
                    children: [
                      ListTile(
                        leading: Image(
                            height: 40,
                            width: 40,
                            fit: BoxFit.fill,
                            image: AssetImage('assets/images/bitcoin.png')),
                        title: Text(
                          'Bitcoin',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        subtitle: Text(
                          'Received - taken 2020',
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.white,
                            decoration: TextDecoration.none,
                          ),
                        ),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              '-1.33BTC',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.red,
                                decoration: TextDecoration.none,
                              ),
                            ),
                            Icon(
                              Icons.trending_down,
                              color: Colors.red,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0, 0),
                            blurRadius: 5,
                            spreadRadius: 0,
                            color: Colors.black.withOpacity(0.2)),
                      ],
                      color: Colors.indigo[400]),
                  child: Column(
                    children: [
                      ListTile(
                        leading: Image(
                            height: 40,
                            width: 40,
                            fit: BoxFit.fill,
                            image: AssetImage('assets/images/bitcoin.png')),
                        title: Text(
                          'Nov 30 2017',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        subtitle: Text(
                          'Received - taken 2020',
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.white,
                            decoration: TextDecoration.none,
                          ),
                        ),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              '-1.33BTC',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.blue,
                                decoration: TextDecoration.none,
                              ),
                            ),
                            Icon(
                              Icons.trending_up,
                              color: Colors.blueAccent,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0, 0),
                            blurRadius: 5,
                            spreadRadius: 0,
                            color: Colors.black.withOpacity(0.2)),
                      ],
                      color: Colors.indigo[400]),
                  child: Column(
                    children: [
                      ListTile(
                        leading: Image(
                            height: 40,
                            width: 40,
                            fit: BoxFit.fill,
                            image: AssetImage('assets/images/bitcoin.png')),
                        title: Text(
                          'Bitcoin',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        subtitle: Text(
                          'Received - taken 2020',
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.white,
                            decoration: TextDecoration.none,
                          ),
                        ),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              '-1.33BTC',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.red,
                                decoration: TextDecoration.none,
                              ),
                            ),
                            Icon(
                              Icons.trending_down,
                              color: Colors.red,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0, 0),
                            blurRadius: 5,
                            spreadRadius: 0,
                            color: Colors.black.withOpacity(0.2)),
                      ],
                      color: Colors.indigo[400]),
                  child: Column(
                    children: [
                      ListTile(
                        leading: Image(
                            height: 40,
                            width: 40,
                            fit: BoxFit.fill,
                            image: AssetImage('assets/images/bitcoin.png')),
                        title: Text(
                          'Nov 30 2017',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        subtitle: Text(
                          'Received - taken 2020',
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.white,
                            decoration: TextDecoration.none,
                          ),
                        ),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              '-1.33BTC',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.blue,
                                decoration: TextDecoration.none,
                              ),
                            ),
                            Icon(
                              Icons.trending_up,
                              color: Colors.blueAccent,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0, 0),
                            blurRadius: 5,
                            spreadRadius: 0,
                            color: Colors.black.withOpacity(0.2)),
                      ],
                      color: Colors.indigo[400]),
                  child: Column(
                    children: [
                      ListTile(
                        leading: Image(
                            height: 40,
                            width: 40,
                            fit: BoxFit.fill,
                            image: AssetImage('assets/images/bitcoin.png')),
                        title: Text(
                          'Bitcoin',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        subtitle: Text(
                          'Received - taken 2020',
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.white,
                            decoration: TextDecoration.none,
                          ),
                        ),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              '-1.33BTC',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.red,
                                decoration: TextDecoration.none,
                              ),
                            ),
                            Icon(
                              Icons.trending_down,
                              color: Colors.red,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0, 0),
                            blurRadius: 5,
                            spreadRadius: 0,
                            color: Colors.black.withOpacity(0.2)),
                      ],
                      color: Colors.indigo[400]),
                  child: Column(
                    children: [
                      ListTile(
                        leading: Image(
                            height: 40,
                            width: 40,
                            fit: BoxFit.fill,
                            image: AssetImage('assets/images/bitcoin.png')),
                        title: Text(
                          'Nov 30 2017',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        subtitle: Text(
                          'Received - taken 2020',
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.white,
                            decoration: TextDecoration.none,
                          ),
                        ),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              '-1.33BTC',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.blue,
                                decoration: TextDecoration.none,
                              ),
                            ),
                            Icon(
                              Icons.trending_up,
                              color: Colors.blueAccent,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
