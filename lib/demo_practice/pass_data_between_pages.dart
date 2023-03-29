import 'package:flutter/material.dart';

class PassDataBetween extends StatefulWidget {
  const PassDataBetween({Key? key}) : super(key: key);

  @override
  _PassDataBetweenState createState() => _PassDataBetweenState();
}

class _PassDataBetweenState extends State<PassDataBetween> {
  List<Map<String, dynamic>> student = [];

  TextEditingController nameController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pass data first screen'),
      ),
       body: buildScaffoldBody(),
      floatingActionButton: buildFloatingActionButton(),
    );
  }

  Widget buildScaffoldBody() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          TextField(
            controller: nameController,
            decoration: InputDecoration(
                hintText: "Enter Name",
                hintStyle: const TextStyle(color: Colors.blue),
                label: const Text("Name"),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(5))),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            controller: ageController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
                hintText: "Enter Age",
                hintStyle: const TextStyle(color: Colors.blue),
                label: const Text("Age"),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(5))),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: student.length,
              itemBuilder: (context, index) {
                Map<String, dynamic> data = student[index];

                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(" ${data["name"]}"),
                    Text(" ${data["age"]}"),
                  ],
                );
              },
            ),
          )
        ],
      ),
    );
  }

  Widget buildFloatingActionButton() {
    return FloatingActionButton(
      onPressed: () {
        String name = nameController.text;
        String age = ageController.text;

        int convertedAge = int.parse(age);

        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => PassDataBetweenSecondScreen(name, convertedAge),
          ),
        );

        // String name = nameController.text;
        // String age = ageController.text;
        //
        // int convertedAge = int.parse(age);
        //
        // Map<String, dynamic> std = {
        //   "name": name,
        //   "age": convertedAge,
        // };
        //
        // student.add(std);
        // debugPrint("$student");
        // setState(() {});
      },
      backgroundColor: Colors.red,
      child: const Icon(
        Icons.add,
        color: Colors.white,
      ),
    );
  }
}


class PassDataBetweenSecondScreen extends StatefulWidget {
  PassDataBetweenSecondScreen(String name, int age) {
    passedName = name;
    passedAge = age;
  }

  late String passedName;
  late int passedAge;
  @override
  _PassDataBetweenSecondScreenState createState() =>
      _PassDataBetweenSecondScreenState();
}

class _PassDataBetweenSecondScreenState
    extends State<PassDataBetweenSecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pass data'),
      ),
      body: Text('Welcome ${widget.passedName} Age ${widget.passedAge}'),
    );
  }
}
