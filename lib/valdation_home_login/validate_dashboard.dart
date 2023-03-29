import 'dart:io';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mighty_ui_kit/valdation_home_login/validation_login_home_screen.dart';

class ValidateDashboardScreen extends StatefulWidget {
  ValidateDashboardScreen(Map<String, dynamic> data) {
    dashboardUserDetails = data;
  }
  late Map<String, dynamic> dashboardUserDetails;

  @override
  _ValidateDashboardScreenState createState() =>
      _ValidateDashboardScreenState();
}

class _ValidateDashboardScreenState extends State<ValidateDashboardScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  TextEditingController numberController = TextEditingController();
  TextEditingController dateinputController = TextEditingController();
  TextEditingController adharController = TextEditingController();
  TextEditingController fatherController = TextEditingController();
  TextEditingController pinController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController colonyController = TextEditingController();

  // dropdownvalue
  String dropdownValue = 'Male';
  // form validation
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();
  String? nameValidation, emailValidation, phoneValidation, adharValidation;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Dashboard Profile'),
              GestureDetector(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text("Alert!!"),
                        content: SingleChildScrollView(
                          child: Container(
                            padding: const EdgeInsets.all(15),
                            child: Form(
                              key: formkey,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  TextFormField(
                                    controller: nameController,
                                    keyboardType: TextInputType.name,
                                    autocorrect: true,
                                    validator: (String? value) {
                                      if (value!.isEmpty) {
                                        return 'Please Enter Name';
                                      }
                                      return null;
                                    },
                                    onSaved: (String? value) {
                                      nameValidation = value;
                                    },
                                    decoration: InputDecoration(
                                      labelText: 'Name',
                                      filled: true,
                                      fillColor: Colors.white70,
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                        borderSide: BorderSide(
                                          color: Colors.blue,
                                          width: 2,
                                        ),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(12.0)),
                                        borderSide: BorderSide(
                                            color: Colors.green, width: 2),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10.0)),
                                        borderSide: BorderSide(
                                            color: Colors.green, width: 2),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  TextFormField(
                                    controller: fatherController,
                                    keyboardType: TextInputType.name,
                                    autocorrect: true,
                                    validator: (String? value) {
                                      if (value!.isEmpty) {
                                        return 'Please Enter Father Name';
                                      }
                                      return null;
                                    },
                                    onSaved: (String? value) {
                                      nameValidation = value;
                                    },
                                    decoration: InputDecoration(
                                      labelText: 'Father Name',
                                      filled: true,
                                      fillColor: Colors.white70,
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                        borderSide: BorderSide(
                                          color: Colors.blue,
                                          width: 2,
                                        ),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(12.0)),
                                        borderSide: BorderSide(
                                            color: Colors.green, width: 2),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10.0)),
                                        borderSide: BorderSide(
                                            color: Colors.green, width: 2),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  TextFormField(
                                    controller: emailController,
                                    autocorrect: true,
                                    keyboardType: TextInputType.emailAddress,
                                    validator: (String? value) {
                                      if (value!.isEmpty) {
                                        return 'Please a Enter';
                                      }
                                      if (!RegExp(
                                              "^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                                          .hasMatch(value)) {
                                        return 'Please a valid Email';
                                      }
                                      return null;
                                    },
                                    onSaved: (String? value) {
                                      emailValidation = value;
                                    },
                                    decoration: InputDecoration(
                                      labelText: 'E-Mail',
                                      filled: true,
                                      fillColor: Colors.white70,
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                        borderSide: BorderSide(
                                          color: Colors.blue,
                                          width: 2,
                                        ),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(12.0)),
                                        borderSide: BorderSide(
                                            color: Colors.green, width: 2),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10.0)),
                                        borderSide: BorderSide(
                                            color: Colors.green, width: 2),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),

                                  TextFormField(
                                    controller: numberController,
                                    keyboardType: TextInputType.number,
                                    autocorrect: true,
                                    validator: (String? value) {
                                      if (value!.isEmpty) {
                                        return 'Please enter phone no ';
                                      }
                                      return null;
                                    },
                                    onSaved: (String? value) {
                                      phoneValidation = value;
                                    },
                                    decoration: InputDecoration(
                                      labelText: 'Mobie Number',
                                      filled: true,
                                      fillColor: Colors.white70,
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                        borderSide: BorderSide(
                                          color: Colors.blue,
                                          width: 2,
                                        ),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(12.0)),
                                        borderSide: BorderSide(
                                            color: Colors.green, width: 2),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10.0)),
                                        borderSide: BorderSide(
                                            color: Colors.green, width: 2),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  // 3838 9816 3497
                                  TextFormField(
                                    controller: adharController,
                                    keyboardType: TextInputType.number,
                                    autocorrect: true,
                                    validator: (String? value) {
                                      if (value!.isEmpty) {
                                        return 'Please a Enter';
                                      }
                                      if (!RegExp(
                                              "^[2-9]{1}[0-9]{3}\\s[0-9]{4}\\s[0-9]{4}")
                                          .hasMatch(value)) {
                                        return 'Please a valid Adhar Number';
                                      }
                                      return null;
                                    },
                                    onSaved: (String? value) {
                                      adharValidation = value;
                                    },
                                    decoration: InputDecoration(
                                      labelText: 'Aadhar Card Number',
                                      filled: true,
                                      fillColor: Colors.white70,
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                        borderSide: BorderSide(
                                          color: Colors.blue,
                                          width: 2,
                                        ),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(12.0)),
                                        borderSide: BorderSide(
                                            color: Colors.green, width: 2),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10.0)),
                                        borderSide: BorderSide(
                                            color: Colors.green, width: 2),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  TextFormField(
                                    controller: colonyController,
                                    keyboardType: TextInputType.name,
                                    autocorrect: true,
                                    validator: (String? value) {
                                      if (value!.isEmpty) {
                                        return 'Please Enter Colony Name';
                                      }
                                      return null;
                                    },
                                    onSaved: (String? value) {
                                      nameValidation = value;
                                    },
                                    decoration: InputDecoration(
                                      labelText: 'Colony Name',
                                      filled: true,
                                      fillColor: Colors.white70,
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                        borderSide: BorderSide(
                                          color: Colors.blue,
                                          width: 2,
                                        ),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(12.0)),
                                        borderSide: BorderSide(
                                            color: Colors.green, width: 2),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10.0)),
                                        borderSide: BorderSide(
                                            color: Colors.green, width: 2),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  TextFormField(
                                    controller: cityController,
                                    keyboardType: TextInputType.name,
                                    autocorrect: true,
                                    validator: (String? value) {
                                      if (value!.isEmpty) {
                                        return 'Please Enter City Name';
                                      }
                                      return null;
                                    },
                                    onSaved: (String? value) {
                                      nameValidation = value;
                                    },
                                    decoration: InputDecoration(
                                      labelText: 'City Name',
                                      filled: true,
                                      fillColor: Colors.white70,
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                        borderSide: BorderSide(
                                          color: Colors.blue,
                                          width: 2,
                                        ),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(12.0)),
                                        borderSide: BorderSide(
                                            color: Colors.green, width: 2),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10.0)),
                                        borderSide: BorderSide(
                                            color: Colors.green, width: 2),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  TextFormField(
                                    controller: pinController,
                                    keyboardType: TextInputType.name,
                                    autocorrect: true,
                                    validator: (String? value) {
                                      if (value!.isEmpty) {
                                        return 'Please Enter PinCode';
                                      }
                                      return null;
                                    },
                                    onSaved: (String? value) {
                                      nameValidation = value;
                                    },
                                    decoration: InputDecoration(
                                      labelText: 'Pin Code',
                                      filled: true,
                                      fillColor: Colors.white70,
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                        borderSide: BorderSide(
                                          color: Colors.blue,
                                          width: 2,
                                        ),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(12.0)),
                                        borderSide: BorderSide(
                                            color: Colors.green, width: 2),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10.0)),
                                        borderSide: BorderSide(
                                            color: Colors.green, width: 2),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  TextField(
                                    controller: dateinputController,
                                    decoration: InputDecoration(
                                        suffixIcon:
                                            const Icon(Icons.calendar_today),
                                        hintStyle:
                                            const TextStyle(color: Colors.blue),
                                        label: const Text("Date-Of-Birth"),
                                        filled: true,
                                        fillColor: Colors.white70,
                                        enabledBorder: const OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(12.0)),
                                          borderSide: BorderSide(
                                              color: Colors.green, width: 2),
                                        ),
                                        focusedBorder: const OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10.0)),
                                          borderSide: BorderSide(
                                              color: Colors.green, width: 2),
                                        ),
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(5))),
                                    readOnly: true,
                                    onTap: () async {
                                      DateTime? pickedDate =
                                          await showDatePicker(
                                              context: context,
                                              initialDate: DateTime.now(),
                                              firstDate: DateTime(2000),
                                              lastDate: DateTime(2101));
                                      if (pickedDate != null) {
                                        print(
                                            pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                                        String formattedDate =
                                            DateFormat('yyyy-MM-dd')
                                                .format(pickedDate);
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
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  FormField<String>(
                                    builder: (FormFieldState<String> state) {
                                      return InputDecorator(
                                        decoration: InputDecoration(
                                            enabledBorder:
                                                const OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(12.0)),
                                              borderSide: BorderSide(
                                                  color: Colors.green,
                                                  width: 2),
                                            ),
                                            focusedBorder:
                                                const OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10.0)),
                                              borderSide: BorderSide(
                                                  color: Colors.green,
                                                  width: 2),
                                            ),
                                            errorStyle: const TextStyle(
                                                color: Colors.redAccent,
                                                fontSize: 16.0),
                                            labelText: 'Please select Gender',
                                            border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        5.0))),
                                        child: DropdownButtonHideUnderline(
                                          child: DropdownButton<String>(
                                            value: dropdownValue,
                                            icon: const Icon(
                                                Icons.arrow_downward),
                                            style: const TextStyle(
                                                color: Colors.deepPurple),
                                            underline: Container(
                                              color: Colors.deepPurpleAccent,
                                            ),
                                            onChanged: (String? newValue) {
                                              setState(() {
                                                dropdownValue = newValue!;
                                              });
                                            },
                                            items: <String>[
                                              'Male',
                                              'Female',
                                              'Custom'
                                            ].map<DropdownMenuItem<String>>(
                                                (String value) {
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
                                ],
                              ),
                            ),
                          ),
                        ),
                        actions: <Widget>[
                          ElevatedButton(
                            onPressed: () {
                              // widget.dashboardUserDetails['name'] = controller.text
                              String email = emailController.text;
                              String name = nameController.text;
                              String number = numberController.text;
                              String date = dateinputController.text;
                              String adhar = adharController.text;
                              String father = fatherController.text;
                              String colony = colonyController.text;

                              String pin = pinController.text;
                              String city = cityController.text;
                              Map<String, dynamic> addDetail = {
                                'name': name,
                                'email': email,
                                'number': number,
                                'date': date,
                                'adhar': adhar,
                                'father': father,
                                'pin': pin,
                                'colony': colony,
                                'city': city
                              };
                              widget.dashboardUserDetails.addAll(addDetail);
                              

                              if (formkey.currentState!.validate()) {
                                Navigator.of(context).pop();
                                return;
                              } else {
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(const SnackBar(
                                  content: Text(
                                      "Update Failed! Enter correct details."),
                                ));
                              }
                            },
                            style: ElevatedButton.styleFrom(
                                fixedSize: Size(
                                    MediaQuery.of(context).size.width * 0.9,
                                    50)),
                            child: const Text(
                              'Sign Up',
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        ],
                      );
                    },
                  );
                },
                child: Icon(
                  Icons.edit,
                  color: Colors.white,
                ),
              )
            ],
          ),
          leading: GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const ValidationLoginHome(),
                  ),
                );
              },
              child: const Icon(Icons.home, color: Colors.white)),
          elevation: 0,
          automaticallyImplyLeading: false,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.4,
                    width: MediaQuery.of(context).size.height * 0.5,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30),
                        ),
                        color: Colors.blue),
                  ),
                  Positioned.fill(
                    top: -100,
                    child: Align(
                      alignment: Alignment.center,
                      child: ClipOval(
                        child: Image.file(
                          File(widget.dashboardUserDetails['image']!),
                          width: 120.0,
                          height: 120.0,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  Positioned.fill(
                    top: 100,
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        '${widget.dashboardUserDetails['name']}',
                        style:
                            const TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    ),
                  ),
                ],
              ),
              Container(height: 30),
              Container(
                color: Colors.white,
                padding: const EdgeInsets.all(15),
                child: Column(
                  children: [
                    ListTile(
                      leading: const Icon(
                        Icons.phone_android,
                        size: 30,
                        color: Colors.blue,
                      ),
                      title: const Text(
                        'Mobile',
                        style: TextStyle(color: Colors.blue),
                      ),
                      subtitle: Text(
                        '+91 ${widget.dashboardUserDetails['number']}',
                        style: const TextStyle(color: Colors.black),
                      ),
                    ),
                    ListTile(
                      leading: const Icon(
                        Icons.email,
                        size: 30,
                        color: Colors.blue,
                      ),
                      title: const Text(
                        'Email',
                        style: TextStyle(color: Colors.blue),
                      ),
                      subtitle: Text(
                        '${widget.dashboardUserDetails['email']}',
                        style: const TextStyle(color: Colors.black),
                      ),
                    ),
                    ListTile(
                      leading: const Icon(
                        Icons.date_range_outlined,
                        size: 30,
                        color: Colors.blue,
                      ),
                      title: const Text(
                        'Date of Birth',
                        style: TextStyle(color: Colors.blue),
                      ),
                      subtitle: Text(
                        '${widget.dashboardUserDetails['date']}',
                        style: const TextStyle(color: Colors.black),
                      ),
                    ),
                    ListTile(
                      leading: const Icon(
                        Icons.male_outlined,
                        size: 30,
                        color: Colors.blue,
                      ),
                      title: const Text(
                        'Gender',
                        style: TextStyle(color: Colors.blue),
                      ),
                      subtitle: Text(
                        '${widget.dashboardUserDetails['gender']}',
                        style: const TextStyle(color: Colors.black),
                      ),
                    ),
                    const SizedBox(height: 50),
                    Stack(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                          child: Center(
                            child: Column(
                              children: [
                                Stack(
                                  children: [
                                    Column(
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.fromLTRB(
                                              0, 20, 0, 7),
                                          height: 50,
                                          decoration: const BoxDecoration(
                                            color: Colors.blueAccent,
                                            borderRadius: BorderRadius.vertical(
                                                top: Radius.circular(20),
                                                bottom: Radius.circular(0)),
                                          ),
                                          width:
                                              MediaQuery.of(context).size.width,
                                          child: const Center(
                                              child: Text(
                                            'Front',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          )),
                                        ),
                                        Container(
                                          margin:
                                              EdgeInsets.fromLTRB(0, 0, 0, 50),
                                          height: 257,
                                          decoration: BoxDecoration(
                                            color: Colors.grey[100],
                                            borderRadius:
                                                const BorderRadius.vertical(
                                                    top: Radius.circular(0),
                                                    bottom:
                                                        Radius.circular(20)),
                                            border: Border.all(
                                                color: Colors.black, width: 1),
                                          ),
                                          width:
                                              MediaQuery.of(context).size.width,
                                          padding:
                                              const EdgeInsets.fromLTRB(5, 5, 5, 5),
                                          child: Column(
                                            children: [
                                              Row(
                                                children: [
                                                  Container(
                                                    margin: const EdgeInsets
                                                        .fromLTRB(20, 0, 0, 0),
                                                    height: 50,
                                                    width: 50,
                                                    decoration: const BoxDecoration(
                                                        image: DecorationImage(
                                                            image: AssetImage(
                                                                'assets/images/ashoka.png'))),
                                                  ),
                                                  Column(
                                                    children: [
                                                      Container(
                                                        // orange rectangle box
                                                        margin:
                                                            EdgeInsets.fromLTRB(
                                                                0, 0, 30, 5),
                                                        height: 15,
                                                        width: 150,
                                                        decoration:
                                                            const BoxDecoration(
                                                          borderRadius: BorderRadius
                                                              .horizontal(
                                                                  left: Radius
                                                                      .circular(
                                                                          0),
                                                                  right: Radius
                                                                      .circular(
                                                                          100)),
                                                          color: Colors.orange,
                                                        ),
                                                        child: const Text(
                                                          'Bharat Sarkar',
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.black),
                                                          textAlign:
                                                              TextAlign.center,
                                                        ),
                                                      ),
                                                      Container(
                                                        // green rectangle box
                                                        height: 15,
                                                        width: 200,
                                                        margin:
                                                            EdgeInsets.fromLTRB(
                                                                20, 0, 0, 5),
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius: BorderRadius
                                                              .horizontal(
                                                                  left: Radius
                                                                      .circular(
                                                                          0),
                                                                  right: Radius
                                                                      .circular(
                                                                          100)),
                                                          color:
                                                              Colors.lightGreen,
                                                        ),
                                                        child: Text(
                                                          'Government Of India',
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.black),
                                                          textAlign:
                                                              TextAlign.center,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Column(
                                                    children: [
                                                      Container(
                                                        height: 100,
                                                        width: 100,
                                                        decoration:
                                                            BoxDecoration(
                                                          border: Border.all(
                                                              color:
                                                                  Colors.black),
                                                        ),
                                                        child: Image.file(
                                                          File(widget
                                                                  .dashboardUserDetails[
                                                              'image']!),
                                                          width: 120.0,
                                                          height: 120.0,
                                                          fit: BoxFit.fill,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  const SizedBox(width: 10),
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        'Name:- ${widget.dashboardUserDetails['name']}',
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 16),
                                                      ),
                                                      Text(
                                                        'DOB:- ${widget.dashboardUserDetails['date']}',
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 16),
                                                        textAlign:
                                                            TextAlign.left,
                                                      ),
                                                      Text(
                                                        'Gender:- ${widget.dashboardUserDetails['gender']}',
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 16),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(
                                                height: 20,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    '${widget.dashboardUserDetails['adhar']}',
                                                    style: const TextStyle(
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                    textAlign: TextAlign.center,
                                                  )
                                                ],
                                              ),
                                            const  Divider(
                                                thickness: 3,
                                                color: Colors.red,
                                              ),
                                           const   SizedBox(
                                                height: 5,
                                              ),
                                              Container(
                                                  child:const Text(
                                                'MERA ADHAR, MERI PEHCHAAN',
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.bold),
                                                textAlign: TextAlign.center,
                                              )),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Container(
                                          margin:const EdgeInsets.fromLTRB(
                                              0, 355, 0, 10),
                                          decoration:const BoxDecoration(
                                            color: Colors.blueAccent,
                                            borderRadius: BorderRadius.vertical(
                                                top: Radius.circular(20),
                                                bottom: Radius.circular(0)),
                                          ),
                                          height: 50,
                                          width:
                                              MediaQuery.of(context).size.width,
                                          child:const Center(
                                              child: Text(
                                            'Back',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          )),
                                        ),
                                        Container(
                                          margin:
                                            const  EdgeInsets.fromLTRB(0, 0, 0, 20),
                                          height: 280,
                                          width:
                                              MediaQuery.of(context).size.width,
                                          decoration: BoxDecoration(
                                            color: Colors.grey[100],
                                            borderRadius:const BorderRadius.vertical(
                                                top: Radius.circular(0),
                                                bottom: Radius.circular(20)),
                                            border: Border.all(
                                                color: Colors.black, width: 1),
                                          ),
                                          padding:
                                              const EdgeInsets.fromLTRB(5, 5, 5, 5),
                                          child: Column(
                                            children: [
                                              Row(
                                                children: [
                                                  Container(
                                                    margin: const EdgeInsets.fromLTRB(
                                                        20, 0, 0, 0),
                                                    height: 50,
                                                    width: 50,
                                                    decoration: const BoxDecoration(
                                                        image: DecorationImage(
                                                            image: AssetImage(
                                                                'assets/images/ashoka.png'))),
                                                  ),
                                                  Column(
                                                    children: [
                                                      Container(
                                                        // orange rectangle box
                                                        margin:
                                                            const EdgeInsets.fromLTRB(
                                                                0, 0, 30, 5),
                                                        height: 15,
                                                        width: 150,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius: BorderRadius
                                                              .horizontal(
                                                                  left: Radius
                                                                      .circular(
                                                                          0),
                                                                  right: Radius
                                                                      .circular(
                                                                          100)),
                                                          color: Colors.orange,
                                                        ),
                                                        child: Text(
                                                          'Bharat Sarkar',
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.black),
                                                          textAlign:
                                                              TextAlign.center,
                                                        ),
                                                      ),
                                                      Container(
                                                        // green rectangle box
                                                        height: 15,
                                                        width: 200,
                                                        margin:
                                                            EdgeInsets.fromLTRB(
                                                                20, 0, 0, 5),
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius: BorderRadius
                                                              .horizontal(
                                                                  left: Radius
                                                                      .circular(
                                                                          0),
                                                                  right: Radius
                                                                      .circular(
                                                                          100)),
                                                          color:
                                                              Colors.lightGreen,
                                                        ),
                                                        child: Text(
                                                          'Government Of India',
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.black),
                                                          textAlign:
                                                              TextAlign.center,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                              Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    0, 5, 0, 0),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  children: [
                                                    Container(
                                                      height: 140,
                                                      width: 150,
                                                      child: Column(
                                                        children: [
                                                          Container(
                                                              margin: EdgeInsets
                                                                  .fromLTRB(0,
                                                                      0, 40, 0),
                                                              child: Column(
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Text(
                                                                    'Address:',
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            17,
                                                                        fontWeight:
                                                                            FontWeight.bold),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                  ),
                                                                  Text(
                                                                    '${widget.dashboardUserDetails['father']}',
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            13,
                                                                        fontWeight:
                                                                            FontWeight.w400),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                  ),
                                                                  Text(
                                                                    '${widget.dashboardUserDetails['colony']}',
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            13,
                                                                        fontWeight:
                                                                            FontWeight.w400),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                  ),
                                                                  Text(
                                                                    '${widget.dashboardUserDetails['city']}',
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            13,
                                                                        fontWeight:
                                                                            FontWeight.w400),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                  ),
                                                                  Text(
                                                                    '${widget.dashboardUserDetails['pin']}',
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            13,
                                                                        fontWeight:
                                                                            FontWeight.w400),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                  ),
                                                                ],
                                                              )),
                                                        ],
                                                      ),
                                                    ),
                                                    Container(
                                                      decoration: BoxDecoration(
                                                          image: DecorationImage(
                                                              image: AssetImage(
                                                                  'assets/images/qr.png'))),
                                                      height: 140,
                                                      width: 140,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      0, 5, 0, 0),
                                                  child: Text(
                                                    '${widget.dashboardUserDetails['adhar']}',
                                                    style: TextStyle(
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                    textAlign: TextAlign.center,
                                                  )),
                                              Divider(
                                                thickness: 3,
                                                color: Colors.red,
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Container(
                                                  child: Text(
                                                'MERA ADHAR, MERI PEHCHAAN',
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.bold),
                                                textAlign: TextAlign.center,
                                              )),
                                              SizedBox(
                                                height: 10,
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                            margin: EdgeInsets.fromLTRB(0, 343, 0, 0),
                            child: Divider(
                              color: Colors.orange,
                              thickness: 5,
                              indent: 100,
                              endIndent: 100,
                              height: 5,
                            )),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
