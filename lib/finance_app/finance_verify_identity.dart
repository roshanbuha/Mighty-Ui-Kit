import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:mighty_ui_kit/finance_app/finance_reserve_card.dart';

class FCVerifyIdentityScreen extends StatefulWidget {
  const FCVerifyIdentityScreen({Key? key}) : super(key: key);

  @override
  _FCVerifyIdentityScreenState createState() => _FCVerifyIdentityScreenState();
}

class _FCVerifyIdentityScreenState extends State<FCVerifyIdentityScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blueGrey[100],
        appBar: AppBar(
          backgroundColor: Colors.blueGrey[100],
          foregroundColor: Colors.black,
          elevation: 0,
          automaticallyImplyLeading: false,
          actions: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    Icon(Icons.arrow_back_ios),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: Text(
                        'Verify Identity',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.5,
                            fontSize: 18),
                      ),
                    ),
                    Icon(Icons.info_outline),
                  ],
                ),
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image(
                        height: 80,
                        width: 80,
                        fit: BoxFit.fill,
                        image: AssetImage('assets/images/id.png'),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        'Goverment ID',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Take a drive license.national identity card or passport photo.',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 15, color: Colors.black87),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.camera_alt,
                            size: 24,
                            color: Colors.blue,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            'Take a Photo',
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.blue[300],
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  padding: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image(
                        height: 80,
                        width: 80,
                        fit: BoxFit.fill,
                        image: AssetImage('assets/images/user.png'),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        'Selfie Photo',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Take a drive license.national identity card or passport photo.',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 15, color: Colors.black87),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.camera_alt,
                            size: 24,
                            color: Colors.blue,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            'Take a Photo',
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.blue[300],
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(30.0),
              ),
              minimumSize: Size(double.infinity, 50),
            ),
            onPressed: () {
              showModalBottomSheet(
                context: context,
                enableDrag: true,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(12),
                  ),
                ),
                builder: (context) {
                  return SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 25, right: 16, left: 16),
                          child: Text(
                            'Let\'s get you verified!',
                            style: TextStyle(
                                fontSize: 17,
                                color: Colors.black87,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 16, left: 16),
                          child: Text(
                            'Which photo ID would you like to use?',
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.black54,
                                fontWeight: FontWeight.normal),
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Column(
                          children: [
                            ListTile(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const FinanceReserveCardScreen()),
                                );
                              },
                              leading: Image(
                                image: AssetImage('assets/images/driving.png'),
                              ),
                              title: Text(
                                'Driver\'s License',
                                textScaleFactor: 1.05,
                              ),
                              trailing: Icon(Icons.arrow_forward_ios),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Divider(),
                            SizedBox(
                              height: 8,
                            ),
                            ListTile(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const FinanceReserveCardScreen()),
                                );
                              },
                              leading: Image(
                                image: AssetImage('assets/images/visa2.png'),
                              ),
                              title: Text(
                                'National Identity Card',
                                textScaleFactor: 1.05,
                              ),
                              trailing: Icon(Icons.arrow_forward_ios),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Divider(),
                            SizedBox(
                              height: 8,
                            ),
                            ListTile(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const FinanceReserveCardScreen()),
                                );
                              },
                              leading: Image(
                                image: AssetImage('assets/images/driving.png'),
                              ),
                              title: Text(
                                'Passport',
                                textScaleFactor: 1.05,
                              ),
                              trailing: Icon(Icons.arrow_forward_ios),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Divider(),
                            SizedBox(
                              height: 8,
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              );
            },
            child: Text(
              'Verify my identity',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
        ),
      ),
    );
  }
}
