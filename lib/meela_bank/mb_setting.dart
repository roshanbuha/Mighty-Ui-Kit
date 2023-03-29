import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MbAppSetting extends StatefulWidget {
  const MbAppSetting({Key? key}) : super(key: key);

  @override
  _MbAppSettingState createState() => _MbAppSettingState();
}

class _MbAppSettingState extends State<MbAppSetting> {
  bool statusValue = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'App Settings',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 22,
                    color: Colors.black87),
              ),
              SizedBox(height: 15),
              Container(
                height: 150,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 36),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              'Do more with pro account',
                              style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 16,
                                  color: Colors.white),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              'Get Premium Now',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  color: Colors.white),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Text(
                              'Purchase Account',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  decoration: TextDecoration.underline,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: -55,
                      right: 0,
                      child: Image(
                        height: 120,
                        width: 150,
                        fit: BoxFit.fill,
                        image: AssetImage('assets/images/trophy.png'),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Column(
                  children: [
                    ListTile(
                      leading: Icon(
                        Icons.notifications,
                        color: Colors.blue,
                      ),
                      title: Text(
                        'Get Notification',
                        style: TextStyle(fontSize: 15, color: Colors.black),
                      ),
                      trailing: Switch(
                        activeColor: Colors.green,
                        activeTrackColor: Colors.grey,
                        inactiveTrackColor: Colors.grey,
                        value: statusValue,
                        onChanged: (value) {
                          statusValue = value;
                          setState(() {});
                        },
                      ),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.email,
                        color: Colors.blue,
                      ),
                      title: Text(
                        'Email Newsletters',
                        style: TextStyle(fontSize: 15, color: Colors.black),
                      ),
                      trailing: Switch(
                        activeColor: Colors.green,
                        activeTrackColor: Colors.grey,
                        inactiveTrackColor: Colors.grey,
                        value: statusValue,
                        onChanged: (value) {
                          statusValue = value;
                          setState(() {});
                        },
                      ),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.privacy_tip,
                        color: Colors.blue,
                      ),
                      title: Text(
                        'Privacy and security',
                        style: TextStyle(fontSize: 15, color: Colors.black),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black54,
                      ),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.settings,
                        color: Colors.blue,
                      ),
                      title: Text(
                        'Account settings',
                        style: TextStyle(fontSize: 15, color: Colors.black),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black54,
                      ),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.edit_off,
                        color: Colors.blue,
                      ),
                      title: Text(
                        'Set stock Rates',
                        style: TextStyle(fontSize: 15, color: Colors.black),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black54,
                      ),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.data_saver_off_outlined,
                        color: Colors.blue,
                      ),
                      title: Text(
                        'Date and Usage',
                        style: TextStyle(fontSize: 15, color: Colors.black),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black54,
                      ),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.help,
                        color: Colors.blue,
                      ),
                      title: Text(
                        'Help and supports',
                        style: TextStyle(fontSize: 15, color: Colors.black),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black54,
                      ),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.block,
                        color: Colors.blue,
                      ),
                      title: Text(
                        'Factory Reset',
                        style: TextStyle(fontSize: 15, color: Colors.black),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black54,
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 50,
                      child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            'Deactive My Account',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.white),
                          )),
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
