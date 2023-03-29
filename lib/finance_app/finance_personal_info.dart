import 'package:flutter/material.dart';
import 'package:mighty_ui_kit/finance_app/finance_address_details.dart';

class FinancePersonalInfoScreen extends StatefulWidget {
  const FinancePersonalInfoScreen({Key? key}) : super(key: key);

  @override
  _FinancePersonalInfoScreenState createState() =>
      _FinancePersonalInfoScreenState();
}

class _FinancePersonalInfoScreenState extends State<FinancePersonalInfoScreen> {
  var firstnameController = TextEditingController();
  var lastnameController = TextEditingController();
  var dobController = TextEditingController();
  var socialsecurityController = TextEditingController();

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
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Personal Info',
                  style: TextStyle(
                      color: Colors.black87,
                      decorationThickness: 2.5,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      textScaleFactor: 1.1,
                      text: TextSpan(children: [
                        TextSpan(
                          text:
                              "We need your personal information to verify your identity ",
                          style: TextStyle(color: Colors.black54),
                        ),
                      ]),
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Form(
                child: Column(
                  children: [
                    TextFormField(
                      controller: firstnameController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: 'First Name',
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: lastnameController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: 'Last Name',
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: dobController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.calendar_today),
                        hintText: 'Date of Birth ( MM / DD/ YYYY)',
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: socialsecurityController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.lock),
                        hintText: 'Social Security number(last 4 digits)',
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: RichText(
                  textScaleFactor: 1.2,
                  text: TextSpan(children: [
                    TextSpan(
                      text:
                          "We use 128-bit encryption for security. and this is only used for identity verification purpose",
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.black87,
                          fontWeight: FontWeight.normal),
                    ),
                  ]),
                  textAlign: TextAlign.start,
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
                  minimumSize: Size(double.infinity, 50),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const FinanceAddressDetailScreen()),
                  );
                },
                child: Text(
                  'Continue',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
