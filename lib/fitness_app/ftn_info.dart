import 'package:flutter/material.dart';

class FtnInfo extends StatefulWidget {
  const FtnInfo({Key? key}) : super(key: key);

  @override
  _FtnInfoState createState() => _FtnInfoState();
}

class _FtnInfoState extends State<FtnInfo> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        body: SizedBox(
          child: Column(
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(50),
                      ),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 10.0,
                        ),
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius:
                          BorderRadius.only(bottomRight: Radius.circular(50)),
                      child: Image(
                        fit: BoxFit.fill,
                        height: MediaQuery.of(context).size.height * 0.5,
                        width: MediaQuery.of(context).size.width,
                        image: AssetImage('assets/images/yoga.jpg'),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: -170,
                    child: Container(
                      height: 250,
                      width: MediaQuery.of(context).size.width * 0.9,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(50),
                          bottomRight: Radius.circular(50),
                        ),
                        color: Colors.white.withOpacity(0.5),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white.withOpacity(0.5),
                            blurRadius: 0.0,
                          ),
                        ],
                      ),
                      child: Container(
                        padding: EdgeInsets.all(15),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SelectableText(
                              'GYM CLASSES',
                              style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black.withOpacity(0.8),
                                  fontSize: 18),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            const SelectableText(
                              'CROSS FIT',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black87,
                                  fontSize: 21),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const SelectableText(
                              'Thurs, June 10, 5:30am',
                              style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black54,
                                  fontSize: 14),
                            ),
                            const SizedBox(height: 10),
                            const SelectableText(
                              'Note',
                              style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black87,
                                  fontSize: 16),
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                            TextField(
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.left,
                              enabled: true,
                              decoration: InputDecoration(
                                hintText: 'Write Something',
                              ),
                              style: TextStyle(
                                  fontSize: 16.0, color: Colors.grey[700]),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
