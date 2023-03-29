import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class FtnBookSuccesfull extends StatefulWidget {
  const FtnBookSuccesfull({Key? key}) : super(key: key);

  @override
  _FtnBookSuccesfullState createState() => _FtnBookSuccesfullState();
}

class _FtnBookSuccesfullState extends State<FtnBookSuccesfull> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                child: CachedNetworkImage(
                    fit: BoxFit.fill,
                    placeholder: (context, url) =>
                        const CircularProgressIndicator(),
                    imageUrl:
                        'https://files.oyebesmartest.com/uploads/preview/-501567668725ri0kwvwyuz.jpg'),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.arrow_back, color: Colors.white),
                        Icon(Icons.share, color: Colors.white),
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 0,
                left: -120,
                child: Transform.rotate(
                  angle: 15,
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.5,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 450,
                left: 40,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Booking',
                      style: TextStyle(
                          fontSize: 35, fontWeight: FontWeight.normal),
                    ),
                    Text(
                      'Succesful !',
                      style:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      'Private Yoga Class',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      'Msmof Fitness',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black87,
                          fontWeight: FontWeight.normal),
                    ),
                    Text(
                      'Thursday 8-5:30 am - 7:00am',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black87,
                          fontWeight: FontWeight.normal),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 300,
                      child: Column(
                        children: [
                          ListTile(
                            leading: CircleAvatar(
                              child: ClipOval(
                                child: Image(
                                  image:
                                      AssetImage('assets/images/user_girl.png'),
                                ),
                              ),
                            ),
                            title: Text(
                              'lallisa Pitts',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                            subtitle: Text(
                              'View info and schedule',
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14),
                            ),
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
