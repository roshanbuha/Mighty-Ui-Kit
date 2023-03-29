import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:mighty_ui_kit/fitness_app/ftn_book_success.dart';

class FtnpayNow extends StatefulWidget {
  const FtnpayNow({Key? key}) : super(key: key);

  @override
  _FtnpayNowState createState() => _FtnpayNowState();
}

class _FtnpayNowState extends State<FtnpayNow> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                child: CachedNetworkImage(
                    fit: BoxFit.fill,
                    placeholder: (context, url) =>
                        const CircularProgressIndicator(),
                    imageUrl:
                        'https://files.oyebesmartest.com/uploads/preview/indian-girl-model-photography-photoshoot-hd--(4)x2nnvj2keb.jpg'),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.arrow_back, color: Colors.white),
                        Icon(Icons.share, color: Colors.white),
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                left: 0,
                top: 200,
                child: Container(
                  height: 400,
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
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Column(
                              children: [
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(15),
                                    child: CachedNetworkImage(
                                        fit: BoxFit.fill,
                                        placeholder: (context, url) =>
                                            const CircularProgressIndicator(),
                                        imageUrl:
                                            'https://files.oyebesmartest.com/uploads/preview/indian-girl-model-photography-photoshoot-hd--(4)x2nnvj2keb.jpg'),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  'Increadible Body Art',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black,
                                      fontSize: 20),
                                ),
                                Text(
                                  '44 Swason Dr.hmaden',
                                  style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      color: Colors.black87,
                                      fontSize: 15),
                                ),
                                Text(
                                  '8:00 am - 11:00 am',
                                  style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      color: Colors.black87,
                                      fontSize: 15),
                                ),
                                Text.rich(
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                        text: '\$1000 ',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black87,
                                            fontSize: 15),
                                      ),
                                      TextSpan(
                                          text: '*2 tickets',
                                          style: TextStyle(
                                              fontWeight: FontWeight.normal)),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Divider(height: 5, color: Colors.grey),
                        SizedBox(
                          height: 15,
                        ),
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Payment Methods',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black,
                                      fontSize: 20),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ListTile(
                                  leading: Icon(
                                    Icons.check_circle_rounded,
                                    color: Colors.red,
                                  ),
                                  title: Text(
                                    'VISA **** **** 1122',
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.black87),
                                  ),
                                  trailing: Icon(Icons.arrow_forward_ios,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                ElevatedButton(
                                   onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => FtnBookSuccesfull()));
                                },
                                  style: ElevatedButton.styleFrom(
                                      fixedSize: Size.fromWidth(150),
                                      primary: Colors.red),
                                  child: Text(
                                    'Pay Now',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
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
