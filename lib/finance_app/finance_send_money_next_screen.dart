import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FinanceSendMoneyNextScreen extends StatefulWidget {
  const FinanceSendMoneyNextScreen({Key? key}) : super(key: key);

  @override
  _FinanceSendMoneyNextScreenState createState() =>
      _FinanceSendMoneyNextScreenState();
}

class _FinanceSendMoneyNextScreenState
    extends State<FinanceSendMoneyNextScreen> {
  var amountController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            gradient: LinearGradient(
              colors: [Color(0xFF1761C5), Color(0xFF0BB8E4)],
              begin: FractionalOffset(0.0, 1.0),
              end: FractionalOffset(1.0, 0.0),
              stops: [0.0, 1.0],
              tileMode: TileMode.clamp,
            ),
          ),
          child: Column(
            children: [
              AppBar(
                elevation: 0,
                automaticallyImplyLeading: false,
                title: Row(
                  children: [
                    Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text('Send Money')
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 16, right: 16, left: 16),
                        child: Container(
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.white,
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Image(
                                    height: 50,
                                    width: 50,
                                    fit: BoxFit.fill,
                                    image: AssetImage('assets/images/men.png'),
                                  ),
                                  SizedBox(width: 16),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Jerry',
                                        style: TextStyle(
                                            color: Colors.black87,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 18),
                                      ),
                                      SizedBox(width: 8),
                                      Text(
                                        '@andrewslo',
                                        style: TextStyle(
                                            color: Colors.black54,
                                            fontWeight: FontWeight.normal,
                                            fontSize: 15),
                                      ),
                                    ],
                                  ),
                                  Spacer(),
                                  Icon(Icons.arrow_forward_ios_rounded),
                                  SizedBox(
                                    width: 10,
                                  )
                                ],
                              ),
                              Divider(),
                              Row(
                                children: [
                                  Image(
                                    height: 50,
                                    width: 50,
                                    fit: BoxFit.fill,
                                    image: AssetImage('assets/images/men.png'),
                                  ),
                                  SizedBox(width: 16),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Jerry',
                                        style: TextStyle(
                                            color: Colors.black87,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 18),
                                      ),
                                      SizedBox(width: 8),
                                      Text(
                                        '@andrewslo',
                                        style: TextStyle(
                                            color: Colors.black54,
                                            fontWeight: FontWeight.normal,
                                            fontSize: 15),
                                      ),
                                    ],
                                  ),
                                  Spacer(),
                                  Icon(Icons.arrow_forward_ios_rounded),
                                  SizedBox(
                                    width: 10,
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 60),
                      Text(
                        'How much?',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                            fontSize: 14),
                      ),
                      SizedBox(height: 16),
                      Padding(
                        padding: const EdgeInsets.only(left: 30, right: 30),
                        child: Container(
                          alignment: Alignment.center,
                          child: TextField(
                            controller: amountController,
                            keyboardType: TextInputType.number,
                            autofocus: false,
                            minLines: 1,
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                            decoration: InputDecoration(
                              hintText: 'Enter amounnt',
                              hintStyle: TextStyle(
                                  fontSize: 16.0, color: Colors.white),
                              prefixIcon: Icon(
                                Icons.monetization_on_outlined,
                                color: Colors.white,
                                size: 35,
                              ),
                            ),
                            maxLength: 10,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30, right: 30),
                        child: Divider(color: Colors.grey[100]),
                      ),
                      SizedBox(height: 24),
                      Text(
                        'Thanks for your work',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                            fontSize: 18),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 16, right: 16, left: 16),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.only(top: 10, bottom: 10),
                      primary: Color(0xFF0BB8E4),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                    onPressed: () {
                      showModalBottomSheet(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        context: context,
                        builder: (context) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              child: SingleChildScrollView(
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Confirmation',
                                        style: TextStyle(
                                            color: Colors.black87,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16),
                                      ),
                                      SizedBox(height: 30),
                                      Image(
                                        height: 80,
                                        width: 80,
                                        fit: BoxFit.fill,
                                        image:
                                            AssetImage('assets/images/men.png'),
                                      ),
                                      SizedBox(height: 16),
                                      Text(
                                        'William',
                                        style: TextStyle(
                                            color: Colors.black87,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16),
                                      ),
                                      Text(
                                        '@William',
                                        style: TextStyle(
                                            color: Colors.black54,
                                            fontWeight: FontWeight.normal,
                                            fontSize: 14),
                                      ),
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          'Fund Source',
                                          style: TextStyle(
                                              color: Colors.black54,
                                              fontWeight: FontWeight.normal,
                                              fontSize: 14),
                                        ),
                                      ),
                                      SizedBox(height: 16),
                                      Row(
                                        children: [
                                          Image(
                                            height: 50,
                                            width: 50,
                                            fit: BoxFit.fill,
                                            image: AssetImage(
                                                'assets/images/visa.png'),
                                          ),
                                          SizedBox(width: 16),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                'Visa',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 16),
                                              ),
                                              RichText(
                                                text: TextSpan(
                                                  text: 'Safe to spend: ',
                                                  style: TextStyle(
                                                      color: Colors.black87,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      fontSize: 14),
                                                  children: <TextSpan>[
                                                    TextSpan(
                                                      text: '\$2130.4',
                                                      style: TextStyle(
                                                          color: Colors.black87,
                                                          fontWeight:
                                                              FontWeight.w800,
                                                          fontSize: 16),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          Spacer(),
                                          Text(
                                            'Change',
                                            style: TextStyle(
                                                color: Color(0xFF0BB8E4),
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 8),
                                      Divider(),
                                      SizedBox(height: 8),
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          'Notes',
                                          style: TextStyle(
                                              color: Colors.black54,
                                              fontWeight: FontWeight.normal,
                                              fontSize: 14),
                                        ),
                                      ),
                                      SizedBox(height: 8),
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          'Thanks for your work',
                                          style: TextStyle(
                                              color: Colors.black87,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14),
                                        ),
                                      ),
                                      SizedBox(height: 8),
                                      Divider(),
                                      SizedBox(height: 8),
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          'Transfer details',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14),
                                        ),
                                      ),
                                      SizedBox(height: 8),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('Total'),
                                          Text("\$240.51"),
                                        ],
                                      ),
                                      SizedBox(height: 16),
                                      Text(
                                        'Payment received in seconds',
                                        style: TextStyle(
                                            color: Colors.black54,
                                            fontWeight: FontWeight.normal,
                                            fontSize: 14),
                                      ),
                                      SizedBox(height: 16),
                                      Container(
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            padding: EdgeInsets.only(
                                                top: 10, bottom: 10),
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
                                              Icon(
                                                Icons.add,
                                                color: Colors.white,
                                              ),
                                              SizedBox(
                                                width: 4,
                                              ),
                                              Text(
                                                'Send money',
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    fontSize: 16),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      );
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Next',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.normal,
                              fontSize: 16),
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
    );
  }
}
