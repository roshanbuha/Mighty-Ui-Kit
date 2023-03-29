import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mighty_ui_kit/finance_app/finance_send_money_next_screen.dart';

class FinanceSendMoneyScreen extends StatefulWidget {
  const FinanceSendMoneyScreen({Key? key}) : super(key: key);

  @override
  _FinanceSendMoneyScreenState createState() => _FinanceSendMoneyScreenState();
}

class _FinanceSendMoneyScreenState extends State<FinanceSendMoneyScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF1761C5),
        body: Container(
          child: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) {
              return [
                SliverAppBar(
                  backgroundColor: Color(0xFF1761C5),
                  expandedHeight: MediaQuery.of(context).size.height * 0.4,
                  floating: false,
                  pinned: true,
                  automaticallyImplyLeading: false,
                  flexibleSpace: FlexibleSpaceBar(
                    background: Padding(
                      padding:
                          const EdgeInsets.only(left: 32, right: 32, top: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Send money',
                            style: TextStyle(
                                fontSize: 24,
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Select contact below or add new recipient to send money.',
                            textAlign: TextAlign.center,
                            textScaleFactor: 1,
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.normal),
                          ),
                          SizedBox(
                            height: 32,
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.only(top: 10, bottom: 10),
                              primary: Color(0xFF0BB8E4),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const FinanceSendMoneyNextScreen()),
                              );
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  'Add recipient',
                                  style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 16),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.arrow_back_ios_outlined, color: Colors.white),
                      Icon(Icons.search, color: Colors.white),
                    ],
                  ),
                ),
              ];
            },
            body: SingleChildScrollView(
              child: Container(
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 16, left: 16),
                      child: Text(
                        'Send again',
                        textScaleFactor: 1.2,
                        style: TextStyle(
                            color: Colors.black87, fontWeight: FontWeight.w600),
                      ),
                    ),
                    Container(
                      height: 140,
                      child: ListView.builder(
                          padding:
                              EdgeInsets.only(left: 16, bottom: 16, top: 16),
                          itemCount: 8,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Wrap(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      Image(
                                        height: 70,
                                        width: 70,
                                        fit: BoxFit.fill,
                                        image:
                                            AssetImage('assets/images/men.png'),
                                      ),
                                      SizedBox(height: 8),
                                      Text(
                                        'Jerry',
                                        style: TextStyle(
                                            color: Colors.black87,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 14),
                                      ),
                                      SizedBox(height: 8),
                                    ],
                                  ),
                                ),
                              ],
                            );
                          }),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 16, left: 16),
                      child: Text(
                        'All contacts',
                        textScaleFactor: 1.2,
                        style: TextStyle(
                            color: Colors.black87, fontWeight: FontWeight.w600),
                      ),
                    ),
                    SizedBox(height: 10),
                    Expanded(
                      child: Container(
                        height: MediaQuery.of(context).size.height,
                        child: ListView.separated(
                          separatorBuilder: (_, i) => Divider(),
                          itemCount: 10,
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          padding:
                              EdgeInsets.only(left: 16, bottom: 16, top: 16),
                          itemBuilder: (BuildContext context, index) {
                            return Wrap(
                              children: [
                                Row(
                                  children: [
                                    Image(
                                      height: 50,
                                      width: 50,
                                      fit: BoxFit.fill,
                                      image:
                                          AssetImage('assets/images/men.png'),
                                    ),
                                    SizedBox(width: 16),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Jerry',
                                          style: TextStyle(
                                              color: Colors.black87,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 18),
                                        ),
                                        SizedBox(width: 8),
                                        Text(
                                          '@andrewslo',
                                          style: TextStyle(
                                              color: Colors.black54,
                                              fontWeight: FontWeight.normal,
                                              fontSize: 15),
                                        ),
                                      ],
                                    ),
                                    Spacer(),
                                    Icon(Icons.arrow_forward_ios_rounded),
                                    SizedBox(
                                      width: 10,
                                    )
                                  ],
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
