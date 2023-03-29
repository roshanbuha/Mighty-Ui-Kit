import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class TryDemoOtp extends StatefulWidget {
  TryDemoOtp({Key? key}) : super(key: key);

  @override
  _TryDemoOtpState createState() => _TryDemoOtpState();
}

class _TryDemoOtpState extends State<TryDemoOtp> {
  late Color buttonColor;
  late bool isError = false;
  @override
  void initState() {
    buttonColor = Colors.blue;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: scaffoldBody(),
    );
  }

  Widget scaffoldBody() {
    return SafeArea(
      child: Container(
        // alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: Container(
                  //  alignment: Alignment.center,
                  height: 375,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(40),
                      bottomLeft: Radius.circular(40),
                    ),
                    //color: Color(#OXFF328B5B),
                    color: Color.fromRGBO(50, 139, 91, 1),
                  ),
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                        top: 86,
                        left: 93,
                        right: 92,
                        child: Container(
                          height: 53,
                          // width: 190,
                          child: Text(
                            "WELCOME",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 180,
                        left: 30,
                        right: 29,
                        child: Container(
                          height: 50,
                          child: Text(
                            "Mobile Number Verification",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 26,
                              //fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: -30,
                        left: MediaQuery.of(context).size.width * 0.30,
                        // right: MediaQuery.of(context).size.width / -1,
                        child: Container(
                          height: 68,
                          width: 154,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromRGBO(0, 0, 0, 0.16),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset:
                                    Offset(0, 3), // changes position of shadow
                              ),
                            ],
                            borderRadius: BorderRadius.all(
                              Radius.circular(100),
                            ),
                            image: DecorationImage(
                              image: AssetImage(
                                "assets/Geo-Fresh-logo.png",
                              ),
                              // fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                height: 50,
              ),
              Container(
                padding: EdgeInsets.all(10),
                height: 100,
                child: Column(
                  children: [
                    Text(
                      "We have sent you One Time",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        color: Color.fromRGBO(0, 9, 33, 1),
                      ),
                    ),
                    Text(
                      "Password to your Mobile",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        color: Color.fromRGBO(0, 9, 33, 1),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Text(
                  "Please Enter OTP",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(0, 9, 33, 1),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Icon(
                      isError ? Icons.close : Icons.done,

                      color: isError
                          ? Color.fromRGBO(201, 0, 0, 1)
                          : Color.fromRGBO(50, 139, 91, 1),
                      // color: Color.fromRGBO(201, 0, 0, 1),
                    ),
                  ),
                  Container(
                    child: GestureDetector(
                      child: Text(
                        " Incorrect OTP",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 21,
                          color: isError
                              ? Color.fromRGBO(201, 0, 0, 1)
                              : Color.fromRGBO(50, 139, 91, 1),
                          // color: Color.fromRGBO(201, 0, 0, 1),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                alignment: Alignment.center,
                height: 80,
                width: 350,
                // padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _textFieldOTP(first: true, last: false),
                    _textFieldOTP(first: false, last: false),
                    _textFieldOTP(first: false, last: false),
                    _textFieldOTP(first: false, last: false),
                    _textFieldOTP(first: false, last: false),
                    _textFieldOTP(first: false, last: true),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.only(
                  right: 20,
                ),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    "Resend OTP",
                    style: TextStyle(
                      fontSize: 16,
                      color: Color.fromRGBO(0, 9, 33, 1),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MaterialButton(
                      color: Colors.teal,
                      textColor: Colors.white,
                      onPressed: () {
                        isError = true;

                        setState(() {});
                      },
                      child: Text(
                        "Error",
                      ),
                    ),
                    MaterialButton(
                      color: Colors.teal,
                      textColor: Colors.white,
                      onPressed: () {
                        isError = false;

                        setState(() {});
                      },
                      child: Text(
                        "Validation",
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 50,
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                    children: [
                      TextSpan(
                        text: "Don't have an account?",
                        style: TextStyle(
                          color: Color.fromRGBO(45, 48, 55, 1),
                        ),
                      ),
                      TextSpan(
                        text: "Sign Up",
                        style: TextStyle(
                          color: Color.fromRGBO(50, 139, 91, 1),
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //     builder: (context) => FoodSignUpScreen(),
                            //   ),
                            // );
                          },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _textFieldOTP({required bool first, last}) {
    return Container(
      height: 60,
      child: AspectRatio(
        aspectRatio: 0.80,
        child: TextField(
          // autofocus: true,
          autocorrect: true,
          onChanged: (value) {
            if (value.length == 1 && last == false) {
              FocusScope.of(context).nextFocus();
            }
            if (value.length == 0 && first == false) {
              FocusScope.of(context).previousFocus();
            }
          },
          showCursor: false,
          readOnly: false,
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          keyboardType: TextInputType.number,
          maxLength: 1,
          decoration: InputDecoration(
            counter: Offstage(),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                width: 1,
                color: isError
                    ? Color.fromRGBO(201, 0, 0, 1)
                    : Color.fromRGBO(50, 139, 91, 1),
                //color: isError ? Colors.red : Colors.green,
              ),
              borderRadius: BorderRadius.circular(6),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                width: 1,
                color: isError
                    ? Color.fromRGBO(201, 0, 0, 1)
                    : Color.fromRGBO(50, 139, 91, 1),
              ),
              borderRadius: BorderRadius.circular(6),
            ),
          ),
        ),
      ),
    );
  }
}
