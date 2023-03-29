import 'package:flutter/material.dart';

class FtnProfile extends StatefulWidget {
  const FtnProfile({Key? key}) : super(key: key);

  @override
  _FtnProfileState createState() => _FtnProfileState();
}

class _FtnProfileState extends State<FtnProfile> {
  @override
  Widget build(BuildContext context) {
    bool on = true;
    bool off = false;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              child: Image(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.fill,
                image: AssetImage('assets/images/model.jpg'),
              ),
            ),
            Positioned(
              left: 0,
              top: 200,
              child: Container(
                height: 300,
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                  ),
                  color: Colors.white.withOpacity(0.5),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white.withOpacity(0.7),
                      blurRadius: 0.0,
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      ListTile(
                        title: Text(
                          'NOTIFICATION',
                          style: TextStyle(fontSize: 14, color: Colors.black87),
                        ),
                        trailing: Icon(Icons.arrow_forward_ios),
                      ),
                      ListTile(
                        title: Text(
                          'TERMS OF USE',
                          style: TextStyle(fontSize: 14, color: Colors.black87),
                        ),
                        trailing: Icon(Icons.arrow_forward_ios),
                      ),
                      ListTile(
                        title: Text(
                          'PRIVACY POLICY',
                          style: TextStyle(fontSize: 14, color: Colors.black87),
                        ),
                        trailing: Icon(Icons.arrow_forward_ios),
                      ),
                      ListTile(
                        title: Text(
                          'FACE ID',
                          style: TextStyle(fontSize: 14, color: Colors.black87),
                        ),
                        trailing: Switch(
                          value: off,
                          activeColor: Colors.red,
                          onChanged: (value) {},
                        ),
                      ),
                      ListTile(
                        title: Text(
                          'DARK MODE',
                          style: TextStyle(fontSize: 14, color: Colors.black87),
                        ),
                        trailing: Switch(
                          value: on,
                          activeColor: Colors.red,
                          onChanged: (value) {},
                        ),
                      ),
                    ],
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
