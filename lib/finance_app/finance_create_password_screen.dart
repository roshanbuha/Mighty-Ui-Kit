import 'package:flutter/material.dart';
import 'package:mighty_ui_kit/finance_app/finance_verify_identity.dart';

class FCCreatePasswordScreen extends StatefulWidget {
  const FCCreatePasswordScreen({Key? key}) : super(key: key);

  @override
  _FCCreatePasswordScreenState createState() => _FCCreatePasswordScreenState();
}

class _FCCreatePasswordScreenState extends State<FCCreatePasswordScreen> {
  var passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blueGrey[50],
        appBar: AppBar(
          backgroundColor: Colors.blueGrey[50],
          elevation: 0,
          foregroundColor: Colors.black,
          automaticallyImplyLeading: false,
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
                  'Create Password',
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
                  child: Text(
                    'Choose a secure password that will be easy for you to remember',
                    style: TextStyle(fontSize: 17, color: Colors.black54),
                  )),
              SizedBox(
                height: 30,
              ),
              Form(
                child: TextFormField(
                  controller: passwordController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    fillColor: Colors.white,
                    filled: true,
                    suffixIcon: Icon(Icons.visibility_off),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.check_outlined,
                          color: Colors.green,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text('Has at least 8  characters')
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.check_outlined, color: Colors.green),
                        SizedBox(
                          width: 5,
                        ),
                        Text('Has an uppercase letter or symbol')
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.check_outlined, color: Colors.green),
                        SizedBox(
                          width: 5,
                        ),
                        Text('Has a number')
                      ],
                    ),
                  ],
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
                        builder: (context) => const FCVerifyIdentityScreen()),
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
