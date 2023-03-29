import 'package:flutter/material.dart';

class MbAddNewCardScreen extends StatefulWidget {
  const MbAddNewCardScreen({Key? key}) : super(key: key);

  @override
  _MbAddNewCardScreenState createState() => _MbAddNewCardScreenState();
}

class _MbAddNewCardScreenState extends State<MbAddNewCardScreen> {
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
                  'Add new card',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 22,
                      color: Colors.black87),
                ),
                SizedBox(height: 15),
                Image(
                  width: MediaQuery.of(context).size.width,
                  height: 240,
                  fit: BoxFit.fill,
                  image: AssetImage('assets/images/atmcard.png'),
                ),
                SizedBox(height: 15),
                TextField(
                  controller: budgetController,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey.withOpacity(0.1),
                    hintText: 'Please 4 digit card number',
                    hintStyle:
                        const TextStyle(color: Colors.grey, fontSize: 16),
                    alignLabelWithHint: true,
                    contentPadding: const EdgeInsets.only(
                        top: 8, bottom: 8, right: 8, left: 8),
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.blue.withOpacity(0.2)),
                        borderRadius: BorderRadius.circular(8)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(8)),
                  ),
                ),
                SizedBox(height: 15),
                TextField(
                  controller: budgetController,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey.withOpacity(0.1),
                    hintText: 'Card holder name',
                    hintStyle:
                        const TextStyle(color: Colors.grey, fontSize: 16),
                    alignLabelWithHint: true,
                    contentPadding: const EdgeInsets.only(
                        top: 8, bottom: 8, right: 8, left: 8),
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.blue.withOpacity(0.2)),
                        borderRadius: BorderRadius.circular(8)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(8)),
                  ),
                ),
                SizedBox(height: 15),
                TextField(
                  controller: budgetController,
                  decoration: InputDecoration(
                    filled: true,
                    suffixIcon: Icon(
                      Icons.calendar_today,
                      color: Colors.blue,
                    ),
                    fillColor: Colors.grey.withOpacity(0.1),
                    hintText: 'Expiry date',
                    hintStyle:
                        const TextStyle(color: Colors.grey, fontSize: 16),
                    alignLabelWithHint: true,
                    contentPadding: const EdgeInsets.only(
                        top: 8, bottom: 8, right: 8, left: 8),
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.blue.withOpacity(0.2)),
                        borderRadius: BorderRadius.circular(8)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(8)),
                  ),
                ),
                SizedBox(height: 15),
                TextField(
                  controller: budgetController,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey.withOpacity(0.1),
                    hintText: 'CVV',
                    hintStyle:
                        const TextStyle(color: Colors.grey, fontSize: 16),
                    alignLabelWithHint: true,
                    contentPadding: const EdgeInsets.only(
                        top: 8, bottom: 8, right: 8, left: 8),
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.blue.withOpacity(0.2)),
                        borderRadius: BorderRadius.circular(8)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(8)),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blueAccent,
                      ),
                      child: Text(
                        'Place BTN Text here',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.normal),
                      ),
                    ),
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
