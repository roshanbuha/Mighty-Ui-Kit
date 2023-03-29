import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mighty_ui_kit/finance_app/finance_choose_delivery_time_screen.dart';

class FinanceReserveCardScreen extends StatefulWidget {
  const FinanceReserveCardScreen({Key? key}) : super(key: key);

  @override
  _FinanceReserveCardScreenState createState() =>
      _FinanceReserveCardScreenState();
}

class _FinanceReserveCardScreenState extends State<FinanceReserveCardScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.5,
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
                alignment: Alignment.topLeft,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16, top: 16),
                    child: Icon(
                      Icons.arrow_back_ios_new_outlined,
                      color: Colors.white,
                    ),
                  ),
                  Center(
                    child: Image(
                      height: 240,
                      width: 240,
                      fit: BoxFit.fill,
                      image: AssetImage('assets/images/credit_card.png'),
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: FittedBox(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.5,
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white,
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Reserve your card & get the benifits.',
                          textScaleFactor: 1.05,
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 22),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.check_outlined,
                                  color: Colors.blue,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'No monthly fees or minimum balance.',
                                  style: TextStyle(color: Colors.black54),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.check_outlined, color: Colors.blue),
                                SizedBox(
                                  width: 5,
                                ),
                                Text('Pay bills earlier, sleep better.',
                                    style: TextStyle(color: Colors.black54))
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.check_outlined, color: Colors.blue),
                                SizedBox(
                                  width: 5,
                                ),
                                Text('Send money instantly.',
                                    style: TextStyle(color: Colors.black54))
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30,
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
                                      const FinanceChooseDeliveryTimeScreen()),
                            );
                          },
                          child: Text(
                            'Continue',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Text(
                          'Skip, I\'ll open account later',
                          style: TextStyle(color: Colors.black54),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
