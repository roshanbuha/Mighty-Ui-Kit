import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CtDashBoard extends StatefulWidget {
  const CtDashBoard({Key? key}) : super(key: key);

  @override
  _CtDashBoardState createState() => _CtDashBoardState();
}

class _CtDashBoardState extends State<CtDashBoard> {
  String? dropdownValue;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.indigo[600],
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CachedNetworkImage(
                          fit: BoxFit.fill,
                          height: 40,
                          width: 40,
                          color: Colors.white,
                          placeholder: (context, url) =>
                              CircularProgressIndicator(),
                          imageUrl:
                              'https://png2.cleanpng.com/dy/e7901369ea7c1216ae1028b2415dbe61/L0KzQYm3U8I1N5V9iZH0aYP2gLBuTfNzgaF5h9VAcoLofrTCTfJqfJR0gdC2Y3BwgMb7hgIucZR0huU2Ynzyc7zqiPFqdl5xRdRydHPyebA0VfFjPpY5eaQ9YUS3SYq1WMAyOWQ9T6M6NUK0SYS8VcIzO2E5SpD5bne=/kisspng-cryptocurrency-bitcoin-computer-icons-blockchain-l-bitcoin-5ab6e4a24a4499.8011387115219355223042.png',
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          'Dashboard',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: const [
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.more_vert,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 56,
                          width: MediaQuery.of(context).size.width * 0.4,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.indigo[400]),
                          child: Column(
                            children: [
                              ListTile(
                                leading: Container(
                                  height: 45,
                                  width: 45,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: Colors.indigo[900],
                                  ),
                                  child: const Icon(
                                    Icons.wb_sunny_outlined,
                                    color: Colors.orange,
                                  ),
                                ),
                                title: const Text(
                                  'Manager',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                    decoration: TextDecoration.none,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 56,
                          width: MediaQuery.of(context).size.width * 0.4,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.indigo[400]),
                          child: Column(
                            children: [
                              ListTile(
                                leading: Container(
                                  height: 45,
                                  width: 45,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: Colors.indigo[900],
                                  ),
                                  child: const Icon(
                                    Icons.compare_arrows,
                                    color: Colors.yellow,
                                  ),
                                ),
                                title: const Text(
                                  'Balance',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                    decoration: TextDecoration.none,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 56,
                          width: MediaQuery.of(context).size.width * 0.4,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.indigo[400]),
                          child: Column(
                            children: [
                              ListTile(
                                leading: Container(
                                  height: 45,
                                  width: 45,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: Colors.indigo[900],
                                  ),
                                  child: const Icon(
                                    Icons.file_copy,
                                    color: Colors.blue,
                                  ),
                                ),
                                title: const Text(
                                  'Report',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                    decoration: TextDecoration.none,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 56,
                          width: MediaQuery.of(context).size.width * 0.4,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.indigo[400]),
                          child: Column(
                            children: [
                              ListTile(
                                leading: Container(
                                  height: 45,
                                  width: 45,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: Colors.indigo[900],
                                  ),
                                  child: const Icon(
                                    Icons.history_edu,
                                    color: Colors.purple,
                                  ),
                                ),
                                title: const Text(
                                  'History',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                    decoration: TextDecoration.none,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 56,
                          width: MediaQuery.of(context).size.width * 0.4,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.indigo[400]),
                          child: Column(
                            children: [
                              ListTile(
                                leading: Container(
                                  height: 45,
                                  width: 45,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: Colors.indigo[900],
                                  ),
                                  child: const Icon(
                                    Icons.align_vertical_bottom_outlined,
                                    color: Colors.green,
                                  ),
                                ),
                                title: const Text(
                                  'Trading',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                    decoration: TextDecoration.none,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 56,
                          width: MediaQuery.of(context).size.width * 0.4,
                        )
                      ],
                    ),
                  const  SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 10, right: 10, left: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                padding:const EdgeInsets.all(10),
                                height: 45,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Colors.indigo[800],
                                ),
                                child: DropdownButtonHideUnderline(
                                  child: DropdownButton<String>(
                                    style:const TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                      decoration: TextDecoration.none,
                                    ),
                                    value: dropdownValue,
                                    hint:const Text(
                                      'Select a color',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                        decoration: TextDecoration.none,
                                      ),
                                    ),
                                    icon: const Icon(
                                      Icons.arrow_drop_down,
                                      color: Colors.white,
                                    ),
                                    onChanged: (String? newValue) {
                                      setState(() {
                                        dropdownValue = newValue!;
                                      });
                                    },
                                    items: <String>['Red', 'Green', 'Blue']
                                        .map<DropdownMenuItem<String>>(
                                            (String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(value),
                                      );
                                    }).toList(),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children:const [
                              Icon(
                                Icons.fiber_manual_record_rounded,
                                size: 12,
                                color: Colors.blue,
                              ),
                              Text(
                                ' Received',
                                style: TextStyle(
                                  color: Colors.white,
                                  decoration: TextDecoration.none,
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(
                                Icons.fiber_manual_record_rounded,
                                size: 12,
                                color: Colors.red,
                              ),
                              Text(
                                ' Sent',
                                style: TextStyle(
                                  color: Colors.white,
                                  decoration: TextDecoration.none,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  const  SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
                      height: 250,
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Column(
                                children:const [
                                  Text(
                                    '1K',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey,
                                      decoration: TextDecoration.none,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    '10K',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey,
                                      decoration: TextDecoration.none,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    '20K',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey,
                                      decoration: TextDecoration.none,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    '30K',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey,
                                      decoration: TextDecoration.none,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    '40K',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey,
                                      decoration: TextDecoration.none,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                ],
                              ),
                              Column(
                                children: const[
                                  Image(
                                      height: 170,
                                      width: 350,
                                      fit: BoxFit.fill,
                                      image: AssetImage(
                                          'assets/images/analytic.png')),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children:const [
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                '1',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                  decoration: TextDecoration.none,
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                '10',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                  decoration: TextDecoration.none,
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                '20',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                  decoration: TextDecoration.none,
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                '30',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                  decoration: TextDecoration.none,
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                '40',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                  decoration: TextDecoration.none,
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
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
