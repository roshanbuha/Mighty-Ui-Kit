import 'package:flutter/material.dart';

class MbCardcreen extends StatefulWidget {
  const MbCardcreen({Key? key}) : super(key: key);

  @override
  _MbCardcreenState createState() => _MbCardcreenState();
}

class _MbCardcreenState extends State<MbCardcreen> {
  int count = 0;
  bool statusValue = true;
  TextEditingController budgetController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.only(top: 20, right: 12, left: 12, bottom: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Your Cards',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 22,
                      color: Colors.black87),
                ),
                SizedBox(height: 15),
                Text(
                  '2 Physical Card 1 Virtual debit card',
                  style: TextStyle(fontSize: 15, color: Colors.black54),
                ),
                SizedBox(height: 15),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  height: 60,
                  child: ListView.builder(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    itemCount: 2,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              count = index;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                              primary:
                                  count == index ? Colors.blue : Colors.white),
                          child: Text(
                            'Physical Card',
                            style: TextStyle(
                                fontSize: 15,
                                color: count == index
                                    ? Colors.white
                                    : Colors.black),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  height: 250,
                  child: ListView.builder(
                    itemCount: 2,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Image(
                        width: 300,
                        height: 240,
                        fit: BoxFit.fill,
                        image: AssetImage('assets/images/atmcard.png'),
                      );
                    },
                  ),
                ),
                SizedBox(height: 15),
                Text(
                  'Card Settings',
                  style: TextStyle(fontSize: 15, color: Colors.black),
                ),
                SizedBox(height: 15),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(2, 2),
                        blurRadius: 5,
                        color: Color.fromRGBO(0, 0, 0, 0.16),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(
                          Icons.confirmation_num,
                          color: Colors.blue,
                        ),
                        title: Text(
                          'Physical Card',
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
                    ],
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(2, 2),
                        blurRadius: 5,
                        color: Color.fromRGBO(0, 0, 0, 0.16),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(
                          Icons.card_giftcard,
                          color: Colors.blue,
                        ),
                        title: Text(
                          'Online Payments',
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
                    ],
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(2, 2),
                        blurRadius: 5,
                        color: Color.fromRGBO(0, 0, 0, 0.16),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(
                          Icons.monetization_on,
                          color: Colors.blue,
                        ),
                        title: Text(
                          'Atm withdraw',
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
