import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mighty_ui_kit/finance_app/finance_bottom_navigation_screen.dart';
import 'package:mighty_ui_kit/finance_app/finance_home_screen.dart';

class FinanceSentCardRequestScreen extends StatefulWidget {
  const FinanceSentCardRequestScreen({Key? key}) : super(key: key);

  @override
  _FinanceSentCardRequestScreenState createState() =>
      _FinanceSentCardRequestScreenState();
}

class _FinanceSentCardRequestScreenState
    extends State<FinanceSentCardRequestScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF1761C5), Color(0xFF0BB8E4)],
              begin: FractionalOffset(0.0, 1.0),
              end: FractionalOffset(1.0, 0.0),
              stops: [0.0, 1.0],
              tileMode: TileMode.clamp,
            ),
          ),
          child: Stack(
            children: [
              AppBar(
                automaticallyImplyLeading: false,
                title: Row(
                  children: [
                    Icon(Icons.arrow_back_ios_outlined),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 64, bottom: 64, right: 16, left: 16),
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  child: Column(
                    children: [
                      SizedBox(height: 16),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Center(
                          child: Image(
                            height: 140,
                            width: 140,
                            fit: BoxFit.fill,
                            image: AssetImage('assets/images/email.png'),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Request Sent',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Text(
                              'We have received your request you will receive your card soon',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(50.0),
                        child: AnimatedContainer(
                            duration: Duration(milliseconds: 800),
                            alignment: Alignment.center,
                            padding: EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(height: 20),
                                Text(
                                  'Estimated time arrival',
                                  style: TextStyle(color: Colors.black54),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  'Tuesday - Sep 14, 2021',
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.black87),
                                ),
                                SizedBox(height: 20),
                              ],
                            )),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 16,
                left: 16,
                right: 16,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0),
                    ),
                    primary: Color(0xFF0BB8E4),
                    minimumSize: Size(double.infinity, 50),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const FinanceBottomNavigationScreen()),
                    );
                  },
                  child: Text(
                    'Got it',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
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
