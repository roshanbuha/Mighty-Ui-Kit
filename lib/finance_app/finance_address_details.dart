import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mighty_ui_kit/finance_app/finance_create_password_screen.dart';

class FinanceAddressDetailScreen extends StatefulWidget {
  const FinanceAddressDetailScreen({Key? key}) : super(key: key);

  @override
  _FinanceAddressDetailScreenState createState() =>
      _FinanceAddressDetailScreenState();
}

class _FinanceAddressDetailScreenState
    extends State<FinanceAddressDetailScreen> {
  var streetAddressController = TextEditingController();
  var streetNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blueGrey[50],
        body: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.5,
              child: Image(
                fit: BoxFit.fill,
                height: MediaQuery.of(context).size.height * 0.5,
                image: AssetImage('assets/images/map.png'),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                height: MediaQuery.of(context).size.height - 50,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(18),
                    topLeft: Radius.circular(18),
                  ),
                  color: Colors.blueGrey[50],
                ),
                margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.45,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Address Details',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 24),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      const Text(
                        'Please let us know if you have apartmnet or unit number',
                        style: TextStyle(color: Colors.black54),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Form(
                        child: Column(
                          children: [
                            TextFormField(
                              controller: streetAddressController,
                              keyboardType: TextInputType.number,
                              autofocus: false,
                              decoration: InputDecoration(
                                hintText: 'Street Address',
                                filled: true,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10.0),
                                  ),
                                  borderSide: BorderSide(
                                      width: 10.0, color: Colors.black54),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            TextFormField(
                              controller: streetAddressController,
                              autofocus: false,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                hintText: 'Street / Apt number',
                                filled: true,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10.0),
                                  ),
                                  borderSide: BorderSide(
                                      width: 10.0, color: Colors.black54),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 24,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 16, right: 16, bottom: 16),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  shape:  RoundedRectangleBorder(
                                    borderRadius:
                                         BorderRadius.circular(30.0),
                                  ),
                                  minimumSize: Size(
                                      MediaQuery.of(context).size.width * 0.85,
                                      50),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const FCCreatePasswordScreen()),
                                  );
                                },
                                child: Text(
                                  'Continue',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
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
            Container(
              height: MediaQuery.of(context).size.height * 0.2,
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(top: 30, left: 16),
              child: Icon(Icons.arrow_back_ios),
            ),
          ],
        ),
      ),
    );
  }
}
