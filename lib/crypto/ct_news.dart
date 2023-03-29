import 'package:cached_network_image/cached_network_image.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class CtNews extends StatefulWidget {
  const CtNews({Key? key}) : super(key: key);

  @override
  _CtNewsState createState() => _CtNewsState();
}

class _CtNewsState extends State<CtNews> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.indigo[600],
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'News',
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
                      children: [
                        Icon(
                          Icons.bookmark_sharp,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Icon(
                          Icons.search,
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
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  height: 165,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0, 0),
                            blurRadius: 5,
                            spreadRadius: 1,
                            color: Colors.black.withOpacity(0.3)),
                      ],
                      color: Colors.indigo[600]),
                  child: Column(
                    children: [
                      ListTile(
                        leading: CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/user_girl.png'),
                        ),
                        title: Text(
                          'in Bitcoin eExchange',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.blue,
                            decoration: TextDecoration.none,
                          ),
                        ),
                        subtitle: Text(
                          'by jackil sparrow',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                      Text(
                        'Bitcoin is back abobe. but bulls not',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      DotsIndicator(dotsCount: 5)
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8, right: 8),
                child: Container(
                  height: 160,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: CachedNetworkImage(
                                    fit: BoxFit.fill,
                                    height: 150,
                                    width: 100,
                                    placeholder: (context, url) =>
                                        CircularProgressIndicator(),
                                    imageUrl:
                                        'https://w7.pngwing.com/pngs/236/3/png-transparent-universe-galaxy-art-human-body-space-space-purple-atmosphere-computer-wallpaper.png',
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Algoritham is back abobe. but bulls',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  decoration: TextDecoration.none,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                'Quantconnetc is back abobe. but bulls',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  decoration: TextDecoration.none,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                'Bitcoin is back abobe.',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  decoration: TextDecoration.none,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Dec 14 2017 2:30 pm',
                                style: TextStyle(
                                  fontSize: 11,
                                  color: Colors.white,
                                  decoration: TextDecoration.none,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'By seri',
                                style: TextStyle(
                                  fontSize: 11,
                                  color: Colors.blue,
                                  decoration: TextDecoration.none,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Quantconnetc is back abobe. but bulls logs daned ',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                  decoration: TextDecoration.none,
                                ),
                              ),
                              Text(
                                'poly is back abobe. but bulls logs daned ',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                  decoration: TextDecoration.none,
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
              Divider(
                color: Colors.black,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8, right: 8),
                child: Container(
                  height: 160,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: CachedNetworkImage(
                                    fit: BoxFit.fill,
                                    height: 150,
                                    width: 100,
                                    placeholder: (context, url) =>
                                        CircularProgressIndicator(),
                                    imageUrl:
                                        'https://d2gg9evh47fn9z.cloudfront.net/800px_COLOURBOX30672574.jpg',
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Algoritham is back abobe. but bulls',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  decoration: TextDecoration.none,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                'Quantconnetc is back abobe. but bulls',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  decoration: TextDecoration.none,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                'Bitcoin is back abobe.',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  decoration: TextDecoration.none,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Dec 14 2017 2:30 pm',
                                style: TextStyle(
                                  fontSize: 11,
                                  color: Colors.white,
                                  decoration: TextDecoration.none,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'By seri',
                                style: TextStyle(
                                  fontSize: 11,
                                  color: Colors.blue,
                                  decoration: TextDecoration.none,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Quantconnetc is back abobe. but bulls logs daned ',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                  decoration: TextDecoration.none,
                                ),
                              ),
                              Text(
                                'poly is back abobe. but bulls logs daned ',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                  decoration: TextDecoration.none,
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
              Divider(
                color: Colors.black,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8, right: 8),
                child: Container(
                  height: 160,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: CachedNetworkImage(
                                    fit: BoxFit.fill,
                                    height: 150,
                                    width: 100,
                                    placeholder: (context, url) =>
                                        CircularProgressIndicator(),
                                    imageUrl:
                                        'https://w7.pngwing.com/pngs/236/3/png-transparent-universe-galaxy-art-human-body-space-space-purple-atmosphere-computer-wallpaper.png',
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Algoritham is back abobe. but bulls',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  decoration: TextDecoration.none,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                'Quantconnetc is back abobe. but bulls',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  decoration: TextDecoration.none,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                'Bitcoin is back abobe.',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  decoration: TextDecoration.none,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Dec 14 2017 2:30 pm',
                                style: TextStyle(
                                  fontSize: 11,
                                  color: Colors.white,
                                  decoration: TextDecoration.none,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'By seri',
                                style: TextStyle(
                                  fontSize: 11,
                                  color: Colors.blue,
                                  decoration: TextDecoration.none,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Quantconnetc is back abobe. but bulls logs daned ',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                  decoration: TextDecoration.none,
                                ),
                              ),
                              Text(
                                'poly is back abobe. but bulls logs daned ',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                  decoration: TextDecoration.none,
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
            ],
          ),
        ),
      ),
    );
  }
}
