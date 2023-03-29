import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MbCreateBudgetScreen extends StatefulWidget {
  const MbCreateBudgetScreen({Key? key}) : super(key: key);

  @override
  _MbCreateBudgetScreenState createState() => _MbCreateBudgetScreenState();
}

class _MbCreateBudgetScreenState extends State<MbCreateBudgetScreen> {
  TextEditingController budgetController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Create Budget',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 22,
                      color: Colors.black87),
                ),
                SizedBox(height: 15),
                Text(
                  'Choose category of budget',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: Colors.black54),
                ),
                SizedBox(height: 20),
                Container(
                  height: 170,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    children: [
                      Container(
                        height: 160,
                        width: 160,
                        margin: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                          color: Colors.white,
                          border: Border.all(color: Colors.blue),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(height: 10),
                            Image(
                              width: 60,
                              height: 60,
                              fit: BoxFit.cover,
                              image: AssetImage('assets/images/bank.png'),
                            ),
                            SizedBox(height: 20),
                            Text(
                              'Bank',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.blue,
                                  fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 160,
                        width: 160,
                        margin: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                          color: Colors.blue,
                          border: Border.all(color: Colors.blue),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(height: 10),
                            Image(
                              width: 60,
                              height: 60,
                              fit: BoxFit.cover,
                              image: AssetImage('assets/images/money.png'),
                            ),
                            SizedBox(height: 20),
                            Text(
                              'Cash',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                  fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 160,
                        width: 160,
                        margin: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                          color: Colors.white,
                          border: Border.all(color: Colors.blue),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(height: 10),
                            Image(
                              width: 60,
                              height: 60,
                              fit: BoxFit.cover,
                              image: AssetImage('assets/images/bank.png'),
                            ),
                            SizedBox(height: 20),
                            Text(
                              'Bank',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.blue,
                                  fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Column(
                  children: [
                    TextField(
                      controller: budgetController,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey.withOpacity(0.1),
                        hintText: 'Enter budget name',
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
                    SizedBox(height: 10),
                    TextField(
                      controller: budgetController,
                      decoration: InputDecoration(
                        filled: true,
                        suffixIcon:
                            Icon(Icons.arrow_drop_down, color: Colors.blue),
                        fillColor: Colors.grey.withOpacity(0.1),
                        hintText: 'Choose category',
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
                    SizedBox(height: 10),
                    TextField(
                      controller: budgetController,
                      decoration: InputDecoration(
                        filled: true,
                        suffixIcon:
                            Icon(Icons.edit_outlined, color: Colors.blue),
                        fillColor: Colors.grey.withOpacity(0.1),
                        hintText: 'Enter',
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
                    SizedBox(height: 10),
                    TextField(
                      controller: budgetController,
                      decoration: InputDecoration(
                        filled: true,
                        suffixIcon:
                            Icon(Icons.arrow_drop_down, color: Colors.blue),
                        fillColor: Colors.grey.withOpacity(0.1),
                        hintText: 'Enter',
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
                  ],
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              primary: Colors.blueAccent,
              fixedSize: Size.fromHeight(50),
            ),
            child: Text(
              'Create Budget',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
