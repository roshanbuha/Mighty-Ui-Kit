import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mighty_ui_kit/crypto/ct_signin.dart';

class CtGetStarted extends StatefulWidget {
  const CtGetStarted({Key? key}) : super(key: key);

  @override
  _CtGetStartedState createState() => _CtGetStartedState();
}

class _CtGetStartedState extends State<CtGetStarted> {
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
                  'Get Started',
                  textScaleFactor: 1.2,
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Let\'s Create your account',
                          style: TextStyle(color: Colors.white, fontSize: 16)),
                      TextSpan(
                          text: ' Privacy Policy',
                          style: TextStyle(
                              color: Colors.blueAccent[100]!, fontSize: 14)),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Name',
                            style: TextStyle(
                              fontSize: 14,
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
                        padding: EdgeInsets.all(15),
                        width: MediaQuery.of(context).size.width,
                        height: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.indigo[900]),
                        child: TextField(
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.left,
                          enabled: true,
                          decoration: InputDecoration(
                              hintText: 'Enter Name',
                              icon: Icon(
                                Icons.person_outline,
                                color: Colors.white,
                              ),
                              contentPadding: EdgeInsets.all(10),
                              border: InputBorder.none,
                              hintStyle: TextStyle(color: Colors.white)),
                          style: TextStyle(fontSize: 16.0, color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Email',
                            style: TextStyle(
                              fontSize: 14,
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
                        padding: EdgeInsets.all(15),
                        width: MediaQuery.of(context).size.width,
                        height: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.indigo[900]),
                        child: TextField(
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.left,
                          enabled: true,
                          decoration: InputDecoration(
                              hintText: 'Enter email',
                              icon: Icon(
                                Icons.email,
                                color: Colors.white,
                              ),
                              contentPadding: EdgeInsets.all(10),
                              border: InputBorder.none,
                              hintStyle: TextStyle(color: Colors.white)),
                          style: TextStyle(fontSize: 16.0, color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Phone No.',
                            style: TextStyle(
                              fontSize: 14,
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
                        padding: EdgeInsets.all(15),
                        width: MediaQuery.of(context).size.width,
                        height: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.indigo[900]),
                        child: TextField(
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.left,
                          enabled: true,
                          decoration: InputDecoration(
                              hintText: 'Enter No.',
                              icon: Icon(
                                Icons.email,
                                color: Colors.white,
                              ),
                              contentPadding: EdgeInsets.all(10),
                              border: InputBorder.none,
                              hintStyle: TextStyle(color: Colors.white)),
                          style: TextStyle(fontSize: 16.0, color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                      minimumSize: Size(
                                          MediaQuery.of(context).size.width *
                                              0.950,
                                          45)),
                                  child: Text('Get Started'),
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
                                      builder: (context) => CtSignInScreen()));
                            },
                            child: RichText(
                              text: TextSpan(
                                children: <TextSpan>[
                                  TextSpan(
                                      text: 'Don\'t have an account?',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          fontSize: 18)),
                                  TextSpan(
                                      text: ' Login',
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
