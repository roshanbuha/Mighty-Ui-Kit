import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class CtHome extends StatefulWidget {
  const CtHome({Key? key}) : super(key: key);

  @override
  _CtHomeState createState() => _CtHomeState();
}

class _CtHomeState extends State<CtHome> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.indigo[600],
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      height: 200.0,
                      decoration: new BoxDecoration(
                        color: Colors.indigo[900],
                        borderRadius: BorderRadius.vertical(
                            bottom: Radius.elliptical(
                                MediaQuery.of(context).size.width, 100.0)),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10, right: 10, top: 5),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  CachedNetworkImage(
                                    fit: BoxFit.fill,
                                    height: 40,
                                    width: 40,
                                    color: Colors.white,
                                    placeholder: (context, url) =>
                                        CircularProgressIndicator(),
                                    imageUrl:
                                        'https://png2.cleanpng.com/dy/e7901369ea7c1216ae1028b2415dbe61/L0KzQYm3U8I1N5V9iZH0aYP2gLBuTfNzgaF5h9VAcoLofrTCTfJqfJR0gdC2Y3BwgMb7hgIucZR0huU2Ynzyc7zqiPFqdl5xRdRydHPyebA0VfFjPpY5eaQ9YUS3SYq1WMAyOWQ9T6M6NUK0SYS8VcIzO2E5SpD5bne=/kisspng-cryptocurrency-bitcoin-computer-icons-blockchain-l-bitcoin-5ab6e4a24a4499.8011387115219355223042.png',
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'Home',
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
                                    Icons.music_note_outlined,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Icon(
                                    Icons.notifications,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Good Morning',
                                  textScaleFactor: 1.1,
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                                SizedBox(
                                  height: 7,
                                ),
                                Text(
                                  'Richard',
                                  textScaleFactor: 1.2,
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    decoration: TextDecoration.none,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                SizedBox(
                                  height: 7,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 150,
                              padding: EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  boxShadow: [
                                    BoxShadow(
                                      offset: Offset(4, 4),
                                      blurRadius: 5,
                                      color: Color.fromRGBO(1, 1, 1, 0.30),
                                    ),
                                  ],
                                  color: Colors.indigo[600]),
                              child: Align(
                                alignment: Alignment.center,
                                child: Column(
                                  children: [
                                    Text(
                                      'Total Portfolio Value',
                                      textScaleFactor: 1.1,
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.white,
                                        decoration: TextDecoration.none,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Text(
                                      '\$ 4,409.98',
                                      textScaleFactor: 1.2,
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                        decoration: TextDecoration.none,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    RichText(
                                      text: TextSpan(
                                        children: <TextSpan>[
                                          TextSpan(
                                              text: '+\$324.87 ',
                                              style: TextStyle(
                                                  color:
                                                      Colors.blueAccent[100]!,
                                                  fontSize: 16)),
                                          TextSpan(
                                              text: 'Last month',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 16)),
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
                  ],
                ),
                Container(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Activity',
                          textScaleFactor: 1.2,
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 300,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          height: 150,
                          width: 170,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                    offset: Offset(0, 0),
                                    blurRadius: 5,
                                    spreadRadius: 1,
                                    color: Colors.black.withOpacity(0.3)),
                              ],
                              color: Colors.indigo[600]),
                          child: Column(
                            children: [
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      children: [
                                        CachedNetworkImage(
                                          fit: BoxFit.fill,
                                          height: 30,
                                          width: 30,
                                          color: Colors.yellow,
                                          placeholder: (context, url) =>
                                              CircularProgressIndicator(),
                                          imageUrl:
                                              'https://png2.cleanpng.com/dy/e7901369ea7c1216ae1028b2415dbe61/L0KzQYm3U8I1N5V9iZH0aYP2gLBuTfNzgaF5h9VAcoLofrTCTfJqfJR0gdC2Y3BwgMb7hgIucZR0huU2Ynzyc7zqiPFqdl5xRdRydHPyebA0VfFjPpY5eaQ9YUS3SYq1WMAyOWQ9T6M6NUK0SYS8VcIzO2E5SpD5bne=/kisspng-cryptocurrency-bitcoin-computer-icons-blockchain-l-bitcoin-5ab6e4a24a4499.8011387115219355223042.png',
                                        ),
                                        SizedBox(width: 5),
                                        Text(
                                          'Bitcoin',
                                          textScaleFactor: 1.1,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.white,
                                            decoration: TextDecoration.none,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Align(
                                      alignment: Alignment.topLeft,
                                      child: RichText(
                                        text: TextSpan(
                                          children: <TextSpan>[
                                            TextSpan(
                                                text: '128.76',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white,
                                                    fontSize: 22)),
                                            TextSpan(
                                                text: '  BTC',
                                                style: TextStyle(
                                                    color: Colors.grey,
                                                    fontSize: 14)),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        '+18.88(18%',
                                        textScaleFactor: 1.1,
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.blue,
                                          decoration: TextDecoration.none,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Container(
                                    height: 140,
                                    child: Image(
                                        fit: BoxFit.fill,
                                        image: AssetImage(
                                            'assets/images/analytic.png')),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          height: 150,
                          width: 170,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                    offset: Offset(0, 0),
                                    blurRadius: 5,
                                    spreadRadius: 1,
                                    color: Colors.black.withOpacity(0.3)),
                              ],
                              color: Colors.indigo[600]),
                          child: Column(
                            children: [
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      children: [
                                        Image(
                                            height: 30,
                                            width: 30,
                                            image: AssetImage(
                                                'assets/images/bitcoin.png')),
                                        SizedBox(width: 5),
                                        Text(
                                          'Bitcoin',
                                          textScaleFactor: 1.1,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.white,
                                            decoration: TextDecoration.none,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Align(
                                      alignment: Alignment.topLeft,
                                      child: RichText(
                                        text: TextSpan(
                                          children: <TextSpan>[
                                            TextSpan(
                                                text: '128.76',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white,
                                                    fontSize: 22)),
                                            TextSpan(
                                                text: '  BTC',
                                                style: TextStyle(
                                                    color: Colors.grey,
                                                    fontSize: 14)),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        '+18.88(18%',
                                        textScaleFactor: 1.1,
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.red,
                                          decoration: TextDecoration.none,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Container(
                                    height: 140,
                                    child: Image(
                                        fit: BoxFit.fill,
                                        color: Colors.red,
                                        image: AssetImage(
                                            'assets/images/analytic.png')),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          height: 150,
                          width: 170,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                    offset: Offset(0, 0),
                                    blurRadius: 5,
                                    spreadRadius: 1,
                                    color: Colors.black.withOpacity(0.3)),
                              ],
                              color: Colors.indigo[600]),
                          child: Column(
                            children: [
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      children: [
                                        CachedNetworkImage(
                                          fit: BoxFit.fill,
                                          height: 30,
                                          width: 30,
                                          color: Colors.yellow,
                                          placeholder: (context, url) =>
                                              CircularProgressIndicator(),
                                          imageUrl:
                                              'https://png2.cleanpng.com/dy/e7901369ea7c1216ae1028b2415dbe61/L0KzQYm3U8I1N5V9iZH0aYP2gLBuTfNzgaF5h9VAcoLofrTCTfJqfJR0gdC2Y3BwgMb7hgIucZR0huU2Ynzyc7zqiPFqdl5xRdRydHPyebA0VfFjPpY5eaQ9YUS3SYq1WMAyOWQ9T6M6NUK0SYS8VcIzO2E5SpD5bne=/kisspng-cryptocurrency-bitcoin-computer-icons-blockchain-l-bitcoin-5ab6e4a24a4499.8011387115219355223042.png',
                                        ),
                                        SizedBox(width: 5),
                                        Text(
                                          'Bitcoin',
                                          textScaleFactor: 1.1,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.white,
                                            decoration: TextDecoration.none,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Align(
                                      alignment: Alignment.topLeft,
                                      child: RichText(
                                        text: TextSpan(
                                          children: <TextSpan>[
                                            TextSpan(
                                                text: '128.76',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white,
                                                    fontSize: 22)),
                                            TextSpan(
                                                text: '  BTC',
                                                style: TextStyle(
                                                    color: Colors.grey,
                                                    fontSize: 14)),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        '+18.88(18%',
                                        textScaleFactor: 1.1,
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.blue,
                                          decoration: TextDecoration.none,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Container(
                                    height: 140,
                                    child: Image(
                                        fit: BoxFit.fill,
                                        image: AssetImage(
                                            'assets/images/analytic.png')),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Recent Transaction',
                          textScaleFactor: 1.2,
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ListTile(
                        leading: Container(
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.indigo[900],
                          ),
                          child: Icon(
                            Icons.arrow_downward,
                            color: Colors.white,
                          ),
                        ),
                        title: Text(
                          'Lapak lapk',
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
                        trailing: Text(
                          '+1.33BTC',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                      Divider(height: 5, color: Colors.black),
                      ListTile(
                        leading: Container(
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.indigo[900],
                          ),
                          child: Icon(
                            Icons.arrow_downward,
                            color: Colors.white,
                          ),
                        ),
                        title: Text(
                          'Lapak lapk',
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
                        trailing: Text(
                          '+1.33BTC',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                      Divider(height: 5, color: Colors.black),
                      ListTile(
                        leading: Container(
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.indigo[900],
                          ),
                          child: Icon(
                            Icons.arrow_downward,
                            color: Colors.white,
                          ),
                        ),
                        title: Text(
                          'Lapak lapk',
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
                        trailing: Text(
                          '+1.33BTC',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
