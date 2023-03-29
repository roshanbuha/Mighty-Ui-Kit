import 'package:flutter/material.dart';
import 'package:mighty_ui_kit/finance_app/finance_personal_info.dart';

class FinanceConfirmScreen extends StatefulWidget {
  const FinanceConfirmScreen({Key? key}) : super(key: key);

  @override
  _FinanceConfirmScreenState createState() => _FinanceConfirmScreenState();
}

class _FinanceConfirmScreenState extends State<FinanceConfirmScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blueGrey[50],
        appBar: AppBar(
          backgroundColor: Colors.blueGrey[50],
          elevation: 0,
          automaticallyImplyLeading: false,
          foregroundColor: Colors.black,
          title: Row(
            children: const [
              Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(
                height: 120,
                width: 120,
                fit: BoxFit.fill,
                image: AssetImage('assets/images/finance.png'),
              ),
              SizedBox(
                height: 30,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Confirm',
                  style: TextStyle(
                      color: Colors.black87,
                      decorationThickness: 2.5,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      textScaleFactor: 1.2,
                      text: TextSpan(children: [
                        TextSpan(
                          text: "Please enter 4-digit code just sent to ",
                          style: TextStyle(color: Colors.black87),
                        ),
                      ]),
                      textAlign: TextAlign.center,
                    ),
                    RichText(
                      textScaleFactor: 1.2,
                      text: TextSpan(children: [
                        TextSpan(
                          text: "+1(562)859-4936",
                          style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.bold),
                        ),
                      ]),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 15,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        height: 70,
                        width: 70,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        height: 70,
                        width: 70,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        height: 70,
                        width: 70,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        height: 70,
                        width: 70,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: RichText(
                  textScaleFactor: 1.2,
                  text: TextSpan(children: [
                    TextSpan(
                      text: "Resend code in 58 s",
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.blueAccent[400],
                          fontWeight: FontWeight.normal),
                    ),
                  ]),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0),
                  ),
                  //minimumSize: Size(double.infinity,40
                  minimumSize: Size(double.infinity, 50),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const FinancePersonalInfoScreen()),
                  );
                },
                child: Text(
                  'Continue',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
