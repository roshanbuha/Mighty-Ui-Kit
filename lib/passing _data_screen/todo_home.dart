import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:mighty_ui_kit/passing%20_data_screen/to_do_add.dart';

import 'package:numberpicker/numberpicker.dart';

class ToDOHome extends StatefulWidget {
  const ToDOHome({Key? key}) : super(key: key);

  @override
  _ToDOHomeState createState() => _ToDOHomeState();
}

class _ToDOHomeState extends State<ToDOHome> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController heightController = TextEditingController();
  TextEditingController weightController = TextEditingController();
  TextEditingController dateinputController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  List<Map<String, dynamic>> userDetails = [];

  String dropdownValue = 'Male';
  int _currentValue = 0;
  int _currentHeightInchValue = 0;
  int _currentHeightFootValue = 0;

  @override
  void initState() {
    dateinputController.text = ""; //set the initial value of text field
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('To-Do Home'),
        ),
        body: SingleChildScrollView(
          child: Container(
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
                  height: 20,
                ),
                TextField(
                  controller: phoneController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      hintText: "Enter Mobile No.",
                      hintStyle: const TextStyle(color: Colors.blue),
                      label: const Text("Mobile Number"),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5))),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 60,
                  child: FormField<String>(
                    builder: (FormFieldState<String> state) {
                      return InputDecorator(
                        decoration: InputDecoration(
                            errorStyle: const TextStyle(
                                color: Colors.redAccent, fontSize: 16.0),
                            labelText: 'Please select Gender',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0))),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            value: dropdownValue,
                            icon: const Icon(Icons.arrow_downward),
                            style: const TextStyle(color: Colors.deepPurple),
                            underline: Container(
                              color: Colors.deepPurpleAccent,
                            ),
                            onChanged: (String? newValue) {
                              setState(() {
                                dropdownValue = newValue!;
                              });
                            },
                            items: <String>['Male', 'Female', 'Custom']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 90,
                  child: FormField<String>(
                    builder: (FormFieldState<String> state) {
                      return InputDecorator(
                        decoration: InputDecoration(
                            errorStyle: const TextStyle(
                                color: Colors.redAccent, fontSize: 16.0),
                            labelText: 'Please select Weight',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0))),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          height: 50,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('Weight: $_currentValue'),
                                ],
                              ),
                              Column(
                                children: [
                                  NumberPicker(
                                    itemHeight: 50,
                                    itemWidth: 50,
                                    axis: Axis.horizontal,
                                    value: _currentValue,
                                    minValue: 0,
                                    maxValue: 100,
                                    onChanged: (value) =>
                                        setState(() => _currentValue = value),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 130,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: FormField<String>(
                    builder: (FormFieldState<String> state) {
                      return InputDecorator(
                        decoration: InputDecoration(
                            errorStyle: TextStyle(
                                color: Colors.redAccent, fontSize: 16.0),
                            labelText: 'Please select Height',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0))),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          height: 100,
                          child: Column(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Text(
                                        'Height in Feet',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: const [
                                      Text(
                                        'Height in Inch',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      NumberPicker(
                                        itemHeight: 50,
                                        itemWidth: 50,
                                        axis: Axis.horizontal,
                                        value: _currentHeightFootValue,
                                        minValue: 0,
                                        maxValue: 10,
                                        onChanged: (value) => setState(() =>
                                            _currentHeightFootValue = value),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      NumberPicker(
                                        itemHeight: 50,
                                        itemWidth: 50,
                                        axis: Axis.horizontal,
                                        value: _currentHeightInchValue,
                                        minValue: 0,
                                        maxValue: 10,
                                        onChanged: (value) => setState(() =>
                                            _currentHeightInchValue = value),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Your Height is : - $_currentHeightFootValue \'$_currentHeightInchValue',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: dateinputController,
                  decoration: InputDecoration(
                      suffixIcon: Icon(Icons.calendar_today),
                      hintStyle: const TextStyle(color: Colors.blue),
                      label: const Text("Date"),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5))),
                  readOnly: true,
                  onTap: () async {
                    DateTime? pickedDate = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2000),
                        lastDate: DateTime(2101));
                    if (pickedDate != null) {
                      print(
                          pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                      String formattedDate =
                          DateFormat('yyyy-MM-dd').format(pickedDate);
                      print(
                          formattedDate); //formatted date output using intl package =>  2021-03-16
                      //you can implement different kind of Date Format here according to your requirement

                      setState(() {
                        dateinputController.text =
                            formattedDate; //set output date to TextField value.
                      });
                    } else {
                      print("Date is not selected");
                    }
                  },
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            String name = nameController.text;
            String email = emailController.text;
            String mobileNumber = phoneController.text;

            String date = dateinputController.text;
            String gendert = dropdownValue.toString();
            int weightt = _currentValue;
            int heightf = _currentHeightFootValue;

            int heighti = _currentHeightInchValue;
            // String height =
            //     ('$_currentHeightFootValue\'$_currentHeightInchValue')
            //         .toString();

            Map<String, dynamic> addDetail = {
              'name': name,
              'email': email,
              'mobileNumber': mobileNumber,
              'date': date,
              'gendert': gendert,
              'weightt': weightt,
              'heightf': heightf,
              'heighti': heighti
            };

            userDetails.add(addDetail);
            setState(() {});
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ToDoAdd(userDetails),
              ),
            );
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
