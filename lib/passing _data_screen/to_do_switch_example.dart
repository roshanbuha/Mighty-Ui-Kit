import 'package:flutter/material.dart';

class ToDOSwitchColor extends StatefulWidget {
  const ToDOSwitchColor({Key? key}) : super(key: key);

  @override
  _ToDOSwitchColorState createState() => _ToDOSwitchColorState();
}

class _ToDOSwitchColorState extends State<ToDOSwitchColor> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  List<Map<String, dynamic>> userDetails = [];
  bool switched = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('To-Do Home'),
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: nameController,
                decoration: InputDecoration(
                    hintText: "Enter Name",
                    hintStyle: const TextStyle(color: Colors.blue),
                    label: const Text("Name"),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5))),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    hintText: "Enter Email",
                    hintStyle: const TextStyle(color: Colors.blue),
                    label: const Text("Email"),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5))),
              ),
              const SizedBox(
                height: 10,
              ),
              Switch(
                value: switched,
                onChanged: (bool value) {
                  setState(() {
                    switched = value;
                  });
                },
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: userDetails.length,
                  itemBuilder: (context, index) {
                    Map<String, dynamic> data = userDetails[index];

                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: ListTile(
                            leading: Icon(
                              Icons.account_circle_rounded,
                              color: data['priority'] ? Colors.red : Colors.yellow,
                              size: 30,
                            ),
                            title: Text(" ${data["name"]}"),
                            subtitle: Text(" ${data["email"]}"),
                            trailing:
                                const Icon(Icons.remove_circle_outline_rounded),
                            onTap: () {
                              userDetails.remove(data);
                              setState(() {});
                            },
                          ),
                        ),
                      ],
                    );
                  },
                ),
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            String name = nameController.text;
            String email = emailController.text;

            Map<String, dynamic> addDetail = {
              'name': name,
              'email': email,
              "priority": switched
            };
            userDetails.add(addDetail);
            setState(() {});
          },
          backgroundColor: Colors.blue,
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
