import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FtnFavorites extends StatefulWidget {
  const FtnFavorites({Key? key}) : super(key: key);

  @override
  _FtnFavoritesState createState() => _FtnFavoritesState();
}

class _FtnFavoritesState extends State<FtnFavorites> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[50],
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 15, top: 15),
                child: Text(
                  'MY FAVOURITE',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                child: Column(
                  children: [
                    ListView.separated(
                      itemCount: 4,
                      separatorBuilder: (BuildContext context, int index) =>
                          const Divider(),
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Material(
                            elevation: 2,
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.7,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(50),
                                  bottomRight: Radius.circular(50),
                                ),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 0.0,
                                  ),
                                ],
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.only(
                                            bottomRight: Radius.circular(30),
                                            topRight: Radius.circular(30)),
                                        child: Image(
                                          height: 130,
                                          width: 110,
                                          fit: BoxFit.fill,
                                          image: AssetImage(
                                              'assets/images/moon.jpg'),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 15),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'MOONLIGHT PARTY',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black,
                                              fontSize: 16),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          '44 Swanson Dr.Hamden',
                                          style: TextStyle(
                                              color: Colors.black87,
                                              fontSize: 14),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          '5:30 am - 9:00 pm',
                                          style: TextStyle(
                                              color: Colors.black87,
                                              fontSize: 14),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
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
