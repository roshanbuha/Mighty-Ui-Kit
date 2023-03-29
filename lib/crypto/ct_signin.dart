import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mighty_ui_kit/crypto/ct_get_start.dart';
import 'package:mighty_ui_kit/crypto/ct_verification.dart';

class CtSignInScreen extends StatefulWidget {
  const CtSignInScreen({Key? key}) : super(key: key);

  @override
  _CtSignInScreenState createState() => _CtSignInScreenState();
}

class _CtSignInScreenState extends State<CtSignInScreen> {
  final TextEditingController _controller = new TextEditingController();
  var items = ['India', 'Usa', 'Japan', 'Russia'];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.indigo[600],
        body: SingleChildScrollView(
          child: Container(
            color: Colors.indigo[600],
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CachedNetworkImage(
                  fit: BoxFit.fill,
                  height: 200,
                  width: 200,
                  colorBlendMode: BlendMode.clear,
                  placeholder: (context, url) => CircularProgressIndicator(),
                  imageUrl:
                      'https://png2.cleanpng.com/dy/e7901369ea7c1216ae1028b2415dbe61/L0KzQYm3U8I1N5V9iZH0aYP2gLBuTfNzgaF5h9VAcoLofrTCTfJqfJR0gdC2Y3BwgMb7hgIucZR0huU2Ynzyc7zqiPFqdl5xRdRydHPyebA0VfFjPpY5eaQ9YUS3SYq1WMAyOWQ9T6M6NUK0SYS8VcIzO2E5SpD5bne=/kisspng-cryptocurrency-bitcoin-computer-icons-blockchain-l-bitcoin-5ab6e4a24a4499.8011387115219355223042.png',
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Welcome back!',
                  textScaleFactor: 1.2,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Enter your mobile no to login.',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    decoration: TextDecoration.none,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'National',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                              decoration: TextDecoration.none,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.indigo[900]),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: TextField(
                                    controller: _controller,
                                    style: TextStyle(
                                        fontSize: 16.0, color: Colors.white),
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.only(left: 10),
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                                PopupMenuButton(
                                  icon: const Icon(
                                    Icons.arrow_drop_down,
                                    color: Colors.white,
                                  ),
                                  onSelected: (String value) {
                                    _controller.text = value;
                                  },
                                  itemBuilder: (context) {
                                    return items.map<PopupMenuItem<String>>(
                                        (String value) {
                                      return new PopupMenuItem(
                                          child: new Text(
                                            value,
                                            style:
                                                TextStyle(color: Colors.black),
                                          ),
                                          value: value);
                                    }).toList();
                                  },
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Phone no.',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                              decoration: TextDecoration.none,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.indigo[900]),
                        child: TextField(
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.left,
                          enabled: true,
                          decoration: InputDecoration(
                              hintText: 'Enter no.',
                              suffixIcon: Icon(
                                Icons.check,
                                color: Colors.blue,
                              ),
                              contentPadding: EdgeInsets.all(15),
                              border: InputBorder.none,
                              hintStyle: TextStyle(color: Colors.white)),
                          style: TextStyle(fontSize: 16.0, color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 45,
                                width: 45,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: Colors.blue),
                                child: Icon(
                                  Icons.auto_awesome,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Row(
                              children: [
                                ElevatedButton(
                                  onPressed: () {
                                     Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => CtVerification()));
                                  },
                                  style: ElevatedButton.styleFrom(
                                      minimumSize: Size(
                                          MediaQuery.of(context).size.width *
                                              0.8,
                                          45)),
                                  child: Text('Send Code'),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => CtGetStarted()));
                            },
                            child: RichText(
                              text: TextSpan(
                                children: <TextSpan>[
                                  TextSpan(
                                      text: 'New user?',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          fontSize: 18)),
                                  TextSpan(
                                      text: ' Get Started',
                                      style: TextStyle(
                                          color: Colors.blueAccent[100]!,
                                          fontSize: 16)),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
