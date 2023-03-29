import 'package:flutter/material.dart';

class ChangeColorCounter extends StatefulWidget {
  const ChangeColorCounter({Key? key}) : super(key: key);

  @override
  _ChangeColorCounterState createState() => _ChangeColorCounterState();
}

class _ChangeColorCounterState extends State<ChangeColorCounter> {
  late int counter;
  late Color buttonColor;
  late String appBarTitle;
  List<int> student = [];

  @override
  void initState() {
    counter = 0;
    buttonColor = Colors.blue;
    appBarTitle = "abc";
    super.initState();
  }

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appBarTitle),
        backgroundColor: buttonColor,
      ),
      body: Center(
        child: Text("Counter = $counter student = $student"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counter = counter + 1;

          student.clear();

          if (buttonColor == Colors.blue) {
            buttonColor = Colors.red;
          } else if (buttonColor == Colors.red) {
            buttonColor = Colors.blue;
          }

          if (appBarTitle == "abc") {
            appBarTitle = "xyz";
          } else {
            appBarTitle = "abc";
          }

          debugPrint(
              "Counter=> $counter Color = $buttonColor List => $student");

          setState(() {});
        },
        backgroundColor: buttonColor,
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
