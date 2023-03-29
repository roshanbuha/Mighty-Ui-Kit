import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:mighty_ui_kit/sqflite_demo_hk/databasehelper_hk.dart';
import 'package:mighty_ui_kit/sqflite_demo_hk/home_sqflite_hk.dart';
import 'package:mighty_ui_kit/sqflite_demo_hk/log_in_sqflite_hk.dart';
import 'package:mighty_ui_kit/sqflite_demo_hk/usermodelhk.dart';

enum ImageSourceType { gallery, camera }

class SqFliteUpdateDemoHk extends StatefulWidget {
  SqFliteUpdateDemoHk({this.user});

  UserModelHk? user;

  @override
  _SqFliteUpdateDemoHkState createState() => _SqFliteUpdateDemoHkState();
}

class _SqFliteUpdateDemoHkState extends State<SqFliteUpdateDemoHk> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  // TextEditingController passwordController = TextEditingController();
  TextEditingController numberController = TextEditingController();
  TextEditingController dateinputController = TextEditingController();
  TextEditingController adharController = TextEditingController();
  TextEditingController fatherController = TextEditingController();
  TextEditingController pinController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController colonyController = TextEditingController();
  String dropdownValue = 'Male';

  // form validation
  var type;
  late Future<File> imageFile;
  ImagePicker imagePicker = ImagePicker();
  String? pickedImage;
  late File imageFileReturn;

  // form validation
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();
  String? nameValidation, emailValidation, phoneValidation, adharValidation;

  @override
  void initState() {
    nameController.text = widget.user!.name!;
    emailController.text = widget.user!.email!;
    fatherController.text = widget.user!.fatherName!;
    //passwordController.text = widget.user!.password!;
    numberController.text = widget.user!.mobileNumber.toString();
    adharController.text = widget.user!.adharNumber.toString();
    pinController.text = widget.user!.pinCode.toString();
    colonyController.text = widget.user!.colonyName!;
    cityController.text = widget.user!.cityName!;
    dateinputController.text = widget.user!.date!;
    dropdownValue = widget.user!.gender!;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.3,
                    color: Colors.blue,
                  ),
                  Positioned(
                    bottom: -50,
                    child: Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: 100,
                        width: MediaQuery.of(context).size.width * 1,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(40),
                                topRight: Radius.circular(40))),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    children: <Widget>[
                      // Stroked text as border.
                      Text(
                        'Update Details',
                        style: TextStyle(
                          fontSize: 22,
                          letterSpacing: 5,
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 6
                            ..color = Colors.blue,
                        ),
                      ),
                      // Solid text as fill.
                      const Text(
                        'Update Details',
                        style: TextStyle(
                          letterSpacing: 5,
                          fontSize: 22,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  )
                ],
              ),

              // Stack(
              //   clipBehavior: Clip.none,
              //   children: [
              //     Container(
              //       height: MediaQuery.of(context).size.height * 0.4,
              //       decoration: BoxDecoration(
              //           borderRadius: const BorderRadius.only(
              //             bottomLeft: Radius.circular(30),
              //             bottomRight: Radius.circular(30),
              //           ),
              //           border: Border.all(color: Colors.blueAccent),
              //           color: Colors.blue),
              //     ),
              //     Positioned(
              //       top: 60,
              //       right: 90,
              //       left: 90,
              //       child: Align(
              //         alignment: Alignment.center,
              //         child: GestureDetector(
              //           onTap: () async {
              //             var source = type == ImageSourceType.camera
              //                 ? ImageSource.camera
              //                 : ImageSource.gallery;
              //             XFile? image = await imagePicker.pickImage(
              //                 source: source,
              //                 imageQuality: 50,
              //                 preferredCameraDevice: CameraDevice.front);
              //             setState(() {
              //               pickedImage = image?.path;
              //             });
              //           },
              //           child: ClipOval(
              //             child: Container(
              //               color: Colors.lightBlue,
              //               height: 200.0,
              //               width: 200.0,
              //               child: pickedImage != null
              //                   ? Image.file(
              //                       File(pickedImage!),
              //                       width: 200.0,
              //                       height: 200.0,
              //                       fit: BoxFit.fill,
              //                     )
              //                   : Container(
              //                       decoration:
              //                           BoxDecoration(color: Colors.blue[400]),
              //                       width: 200,
              //                       height: 200,
              //                       child: Icon(
              //                         Icons.camera_alt,
              //                         size: 30,
              //                         color: Colors.grey[800],
              //                       ),
              //                     ),
              //             ),
              //           ),
              //         ),
              //       ),
              //     ),
              //   ],
              // ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(15),
                child: Form(
                  key: formkey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextFormField(
                        controller: nameController,
                        keyboardType: TextInputType.name,
                        textInputAction: TextInputAction.next,
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
                            borderRadius: BorderRadius.circular(12.0),
                            borderSide: BorderSide(
                              color: Colors.blue,
                              width: 2,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(12.0)),
                            borderSide:
                                BorderSide(color: Colors.blue, width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            borderSide:
                                BorderSide(color: Colors.blue, width: 2),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        controller: fatherController,
                        keyboardType: TextInputType.name,
                        textInputAction: TextInputAction.next,
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
                            borderRadius: BorderRadius.circular(12.0),
                            borderSide: BorderSide(
                              color: Colors.blue,
                              width: 2,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(12.0)),
                            borderSide:
                                BorderSide(color: Colors.blue, width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            borderSide:
                                BorderSide(color: Colors.blue, width: 2),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        controller: emailController,
                        autocorrect: true,
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.emailAddress,
                        validator: (String? value) {
                          if (value!.isEmpty) {
                            return 'Please a Enter';
                          }
                          if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
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
                            borderRadius: BorderRadius.circular(12.0),
                            borderSide: const BorderSide(
                              color: Colors.blue,
                              width: 2,
                            ),
                          ),
                          enabledBorder: const OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(12.0)),
                            borderSide:
                                BorderSide(color: Colors.blue, width: 2),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            borderSide:
                                BorderSide(color: Colors.blue, width: 2),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      // TextFormField(
                      //   controller: passwordController,
                      //   keyboardType: TextInputType.visiblePassword,
                      //   textInputAction: TextInputAction.next,
                      //   autocorrect: true,
                      //   validator: (String? value) {
                      //     if (value!.isEmpty) {
                      //       return 'Please a Enter Password';
                      //     }
                      //     return null;
                      //   },
                      //   decoration: InputDecoration(
                      //     labelText: 'Password',
                      //     filled: true,
                      //     fillColor: Colors.white70,
                      //     border: OutlineInputBorder(
                      //       borderRadius: BorderRadius.circular(12.0),
                      //       borderSide: const BorderSide(
                      //         color: Colors.blue,
                      //         width: 2,
                      //       ),
                      //     ),
                      //     enabledBorder: const OutlineInputBorder(
                      //       borderRadius:
                      //           BorderRadius.all(Radius.circular(12.0)),
                      //       borderSide:
                      //           BorderSide(color: Colors.blue, width: 2),
                      //     ),
                      //     focusedBorder: const OutlineInputBorder(
                      //       borderRadius:
                      //           BorderRadius.all(Radius.circular(10.0)),
                      //       borderSide:
                      //           BorderSide(color: Colors.blue, width: 2),
                      //     ),
                      //   ),
                      // ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        controller: numberController,
                        keyboardType: TextInputType.number,
                        textInputAction: TextInputAction.next,
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
                            borderRadius: BorderRadius.circular(12.0),
                            borderSide: const BorderSide(
                              color: Colors.blue,
                              width: 2,
                            ),
                          ),
                          enabledBorder: const OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(12.0)),
                            borderSide:
                                BorderSide(color: Colors.blue, width: 2),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            borderSide:
                                BorderSide(color: Colors.blue, width: 2),
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
                        textInputAction: TextInputAction.next,
                        autocorrect: true,
                        validator: (String? value) {
                          if (value!.isEmpty) {
                            return 'Please a Enter';
                          }
                          if (!RegExp("^[2-9]{1}[0-9]{3}\\s[0-9]{4}\\s[0-9]{4}")
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
                            borderRadius: BorderRadius.circular(12.0),
                            borderSide: const BorderSide(
                              color: Colors.blue,
                              width: 2,
                            ),
                          ),
                          enabledBorder: const OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(12.0)),
                            borderSide:
                                BorderSide(color: Colors.blue, width: 2),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            borderSide:
                                BorderSide(color: Colors.blue, width: 2),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        controller: colonyController,
                        textInputAction: TextInputAction.next,
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
                            borderRadius: BorderRadius.circular(12.0),
                            borderSide: const BorderSide(
                              color: Colors.blue,
                              width: 2,
                            ),
                          ),
                          enabledBorder: const OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(12.0)),
                            borderSide:
                                BorderSide(color: Colors.blue, width: 2),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            borderSide:
                                BorderSide(color: Colors.blue, width: 2),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        controller: cityController,
                        keyboardType: TextInputType.name,
                        textInputAction: TextInputAction.next,
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
                            borderRadius: BorderRadius.circular(12.0),
                            borderSide: BorderSide(
                              color: Colors.blue,
                              width: 2,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(12.0)),
                            borderSide:
                                BorderSide(color: Colors.blue, width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            borderSide:
                                BorderSide(color: Colors.blue, width: 2),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        controller: pinController,
                        keyboardType: TextInputType.number,
                        textInputAction: TextInputAction.next,
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
                            borderRadius: BorderRadius.circular(12.0),
                            borderSide: BorderSide(
                              color: Colors.blue,
                              width: 2,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(12.0)),
                            borderSide:
                                BorderSide(color: Colors.blue, width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            borderSide:
                                BorderSide(color: Colors.blue, width: 2),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextField(
                        controller: dateinputController,
                        decoration: InputDecoration(
                            suffixIcon: const Icon(Icons.calendar_today),
                            hintStyle: const TextStyle(color: Colors.blue),
                            label: const Text("Date-Of-Birth"),
                            filled: true,
                            fillColor: Colors.white70,
                            enabledBorder: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12.0)),
                              borderSide:
                                  BorderSide(color: Colors.blue, width: 2),
                            ),
                            focusedBorder: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              borderSide:
                                  BorderSide(color: Colors.blue, width: 2),
                            ),
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
                      const SizedBox(
                        height: 10,
                      ),
                      FormField<String>(
                        builder: (FormFieldState<String> state) {
                          return InputDecorator(
                            decoration: InputDecoration(
                                enabledBorder: const OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(12.0)),
                                  borderSide:
                                      BorderSide(color: Colors.blue, width: 2),
                                ),
                                focusedBorder: const OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                  borderSide:
                                      BorderSide(color: Colors.blue, width: 2),
                                ),
                                errorStyle: const TextStyle(
                                    color: Colors.redAccent, fontSize: 16.0),
                                labelText: 'Please select Gender',
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5.0))),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton<String>(
                                value: dropdownValue,
                                icon: const Icon(Icons.arrow_downward),
                                style:
                                    const TextStyle(color: Colors.deepPurple),
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
                                ].map<DropdownMenuItem<String>>((String value) {
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

                      const SizedBox(
                        height: 15,
                      ),
                      ElevatedButton(

                        onPressed: () async {
                          if (widget.user != null) {
                            updateUserInfo();
                          } else {
                            ScaffoldMessenger.of(context)
                                .showSnackBar(const SnackBar(
                              content: Text("Update Failed"),
                            ));
                          }
                        },
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            fixedSize: Size(
                                MediaQuery.of(context).size.width * 0.9, 50)),
                        child: const Text(
                          'Update',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void updateUserInfo() async {
    UserModelHk userModelHk = UserModelHk();
    userModelHk.name = nameController.text;
    userModelHk.fatherName = fatherController.text;
    userModelHk.email = emailController.text;
    // userModelHk.password = passwordController.text;
    userModelHk.mobileNumber = int.parse(numberController.text.toString());
    userModelHk.adharNumber = int.parse(adharController.text.toString());
    userModelHk.pinCode = int.parse(pinController.text.toString());
    userModelHk.colonyName = colonyController.text;
    userModelHk.cityName = cityController.text;
    userModelHk.date = dateinputController.text;
    userModelHk.gender = dropdownValue;
    userModelHk.id = widget.user!.id!;

    int result = await DatabaseHelperHk().updateUserDetails(userModelHk);
    // Navigator.of(context).pop();
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => HomePageSqfliteHk(
          user: userModelHk,
        ),
      ),
    );
  }
}
