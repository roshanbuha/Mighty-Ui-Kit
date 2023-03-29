import 'package:flutter/material.dart';

class ListDemoOne extends StatefulWidget {
  ListDemoOne({Key? key}) : super(key: key);

  @override
  State<ListDemoOne> createState() => _ListDemoOneState();
}

class _ListDemoOneState extends State<ListDemoOne> {
  List<Map<String, dynamic>> student = [];

  TextEditingController nameController = TextEditingController();
  TextEditingController ageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('List')),
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
                hintStyle: TextStyle(color: Colors.blue),
                label: Text("Name"),
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
                hintStyle: TextStyle(color: Colors.blue),
                label: Text("Age"),
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

        Map<String, dynamic> std = {
          "name": name,
          "age": convertedAge,
        };

        student.add(std);
        debugPrint("$student");
        setState(() {});
      },
      backgroundColor: Colors.red,
      child: const Icon(
        Icons.add,
        color: Colors.white,
      ),
    );
  }
}
