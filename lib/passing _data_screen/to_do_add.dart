import 'package:flutter/material.dart';
import 'package:mighty_ui_kit/passing%20_data_screen/to_do_add_update.dart';


class ToDoAdd extends StatefulWidget {
  ToDoAdd(List<Map<String, dynamic>> userDetails) {
    passedUserDetails = userDetails;
  }
  late List<Map<String, dynamic>> passedUserDetails;
  @override
  _ToDoAddState createState() => _ToDoAddState();
}

class _ToDoAddState extends State<ToDoAdd> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Second Screen'),
        ),
        body: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          itemCount: widget.passedUserDetails.length,
          itemBuilder: (context, index) {
            Map<String, dynamic> data = widget.passedUserDetails[index];
            return GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ToDoUpdateScreen(data),
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  padding: const EdgeInsets.all(10),
                  height: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.grey.shade300),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Text(
                            'Name : - ',
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                wordSpacing: 2),
                          ),
                          Text('${data['name']}'),
                        ],
                      ),
                      const SizedBox(height: 5),
                      Row(
                        children: [
                          const Text(
                            'Email : - ',
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                wordSpacing: 2),
                          ),
                          Text('${data['email']}'),
                        ],
                      ),
                      const SizedBox(height: 5),
                      Row(
                        children: [
                          const Text(
                            'mobileNumber : - ',
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                wordSpacing: 2),
                          ),
                          Text('${data['mobileNumber']}'),
                        ],
                      ),
                      const SizedBox(height: 5),
                      Row(
                        children: [
                          const Text(
                            'Weight : - ',
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                wordSpacing: 2),
                          ),
                          Text('${data['weightt']}'),
                        ],
                      ),
                      const SizedBox(height: 5),
                      Row(
                        children: [
                          const Text(
                            'Height : - ',
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                wordSpacing: 2),
                          ),
                          Text('${data['heightf']}'),
                          Text('\'${data['heighti']}'),
                        ],
                      ),
                      const SizedBox(height: 5),
                      Row(
                        children: [
                          const Text(
                            'Date : - ',
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                wordSpacing: 2),
                          ),
                          Text('${data['date']}'),
                        ],
                      ),
                      const SizedBox(height: 5),
                      Row(
                        children: [
                          const Text(
                            'Gender : - ',
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                wordSpacing: 2),
                          ),
                          Text('${data['gendert']}'),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
