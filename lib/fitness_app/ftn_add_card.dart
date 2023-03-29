import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FtnAddNewCard extends StatefulWidget {
  const FtnAddNewCard({Key? key}) : super(key: key);

  @override
  _FtnAddNewCardState createState() => _FtnAddNewCardState();
}

class _FtnAddNewCardState extends State<FtnAddNewCard> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          foregroundColor: Colors.white,
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: Text('Add new card'),
        ),
        body: SingleChildScrollView(
          child: SizedBox(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.lightBlue[200],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(width: 1),
                              Image(
                                height: 60,
                                width: 60,
                                image:
                                    AssetImage('assets/images/master_card.png'),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                '**** **** ****',
                                style: TextStyle(fontSize: 30),
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Card Holder',
                                style: TextStyle(
                                    color: Colors.black87, fontSize: 16),
                              ),
                              Text(
                                'Expiry',
                                style: TextStyle(
                                    color: Colors.black87, fontSize: 16),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(width: 10),
                              Text(
                                'MM/YY',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 22),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                const  SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40, right: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: const[
                            Icon(
                              Icons.check_circle_rounded,
                              color: Colors.red,
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Text(
                              'Credit Card',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 16),
                            ),
                          ],
                        ),
                        Row(
                          children: const[
                            Icon(
                              Icons.radio_button_off,
                              color: Colors.black,
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Text(
                              'Paypal',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 16),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
               const   SizedBox(
                    height: 40,
                  ),
                  Column(
                    children: [
                      TextField(
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.left,
                        enabled: true,
                        decoration: InputDecoration(
                          hintText: 'Email',
                        ),
                        style:
                            TextStyle(fontSize: 16.0, color: Colors.grey[700]),
                      ),
                      TextField(
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.left,
                        enabled: true,
                        decoration: InputDecoration(
                          hintText: 'MM/YY',
                        ),
                        style:
                            TextStyle(fontSize: 16.0, color: Colors.grey[700]),
                      ),
                      TextField(
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.left,
                        enabled: true,
                        decoration: InputDecoration(
                          hintText: 'CVV',
                        ),
                        style:
                            TextStyle(fontSize: 16.0, color: Colors.grey[700]),
                      ),
                      TextField(
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.left,
                        enabled: true,
                        decoration: InputDecoration(
                          hintText: 'Card Holder',
                        ),
                        style:
                            TextStyle(fontSize: 16.0, color: Colors.grey[700]),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 1,
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                fixedSize: Size.fromWidth(150),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        bottomLeft: Radius.circular(10))),
                                primary: Colors.red),
                            child: Text('Sign in'),
                          ),
                        ],
                      ),
                    ],
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
