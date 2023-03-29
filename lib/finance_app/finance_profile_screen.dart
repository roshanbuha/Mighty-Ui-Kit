import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FinanceProfileScreen extends StatefulWidget {
  const FinanceProfileScreen({Key? key}) : super(key: key);

  @override
  _FinanceProfileScreenState createState() => _FinanceProfileScreenState();
}

class _FinanceProfileScreenState extends State<FinanceProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: Color(0xFF1761C5),
                height: MediaQuery.of(context).size.height * 0.4,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(
                      children: [
                        Image(
                          height: 120,
                          width: 120,
                          fit: BoxFit.cover,
                          alignment: Alignment.center,
                          image: AssetImage('assets/images/men.png'),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: Container(
                            width: 26,
                            height: 26,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: Colors.white),
                            child: Center(
                                child: Icon(Icons.edit_outlined,
                                    color: Color(0xFF1761C5), size: 18)),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                    Text(
                      'William',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8),
                    Text(
                      '@William',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                height: MediaQuery.of(context).size.height,
                child: Column(
                  children: [
                    ListTile(
                      leading: Icon(
                        Icons.account_circle_rounded,
                        color: Colors.black,
                      ),
                      title: Text("Account"),
                      trailing: Icon(
                        Icons.navigate_next_rounded,
                        color: Colors.black,
                      ),
                    ),
                   
                    ListTile(
                      leading: Icon(
                        Icons.notifications,
                        color: Colors.black,
                      ),
                      title: Text("Notification"),
                      trailing: Icon(
                        Icons.navigate_next_rounded,
                        color: Colors.black,
                      ),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.lock,
                        color: Colors.black,
                      ),
                      title: Text("Privacy & Security"),
                      trailing: Icon(
                        Icons.navigate_next_rounded,
                        color: Colors.black,
                      ),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.help,
                        color: Colors.black,
                      ),
                      title: Text("Help and Support"),
                      trailing: Icon(
                        Icons.navigate_next_rounded,
                        color: Colors.black,
                      ),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.info,
                        color: Colors.black,
                      ),
                      title: Text("About"),
                      trailing: Icon(
                        Icons.navigate_next_rounded,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
