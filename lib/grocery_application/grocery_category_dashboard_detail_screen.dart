import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:mighty_ui_kit/grocery_application/grocery_category_detail_screen.dart';


class GroceryCategoryDashboardDetailScreen extends StatefulWidget {
  const GroceryCategoryDashboardDetailScreen({Key? key}) : super(key: key);

  @override
  _GroceryCategoryDashboardDetailScreenState createState() =>
      _GroceryCategoryDashboardDetailScreenState();
}

class _GroceryCategoryDashboardDetailScreenState
    extends State<GroceryCategoryDashboardDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 1,
          centerTitle: false,
          automaticallyImplyLeading: false,
          titleSpacing: 0,
          title: Row(
            children: [
              GestureDetector(
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context, true);
                    
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(
                width: 8,
              ),
              Expanded(
                  child: Text(
                'Vegetable',
                style: TextStyle(fontWeight: FontWeight.w400),
              )),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.share,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 6, bottom: 6),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.filter_alt,
                          color: Colors.grey,
                        ),
                        Text(
                          'Filter',
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.sort,
                          color: Colors.grey,
                        ),
                        Text(
                          'Sort',
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Divider(
                height: 1,
              ),
              Wrap(
                alignment: WrapAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const GroceryCategoryDetailScreen()),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.only(left: 8, right: 8, top: 16),
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(0),
                        color: Colors.white,
                      ),
                      width: 180,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Center(
                            child: Image(
                              fit: BoxFit.cover,
                              height: 120,
                              width: 120,
                              image: AssetImage('assets/images/koby.png'),
                            ),
                          ),
                          SizedBox(height: 16),
                          Text(
                            'Couilflower',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(fontWeight: FontWeight.w400),
                          ),
                          Text(
                            '100gr/pack',
                            maxLines: 1,
                            style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.normal),
                          ),
                          SizedBox(height: 12),
                          Row(
                            children: [
                              Text(
                                '\$0.12',
                                maxLines: 1,
                                style: TextStyle(
                                    color: Colors.black54,
                                    decoration: TextDecoration.lineThrough,
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal),
                              ),
                              SizedBox(width: 8),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  color: Color(0xFF5EB04E).withOpacity(0.12),
                                ),
                                padding: EdgeInsets.only(left: 14, right: 14),
                                child: Text(
                                  'Save 15%',
                                  style: TextStyle(
                                    color: Color(0xFF5EB04E),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Text(
                            '\$0.22',
                            style: TextStyle(color: Colors.orange),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const GroceryCategoryDetailScreen()),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.only(left: 8, right: 8, top: 16),
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(0),
                        color: Colors.white,
                      ),
                      width: 180,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Center(
                            child: Image(
                              fit: BoxFit.cover,
                              height: 120,
                              width: 120,
                              image: AssetImage('assets/images/koby.png'),
                            ),
                          ),
                          SizedBox(height: 16),
                          Text(
                            'Couilflower',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(fontWeight: FontWeight.w400),
                          ),
                          Text(
                            '100gr/pack',
                            maxLines: 1,
                            style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.normal),
                          ),
                          SizedBox(height: 12),
                          Row(
                            children: [
                              Text(
                                '\$0.12',
                                maxLines: 1,
                                style: TextStyle(
                                    color: Colors.black54,
                                    decoration: TextDecoration.lineThrough,
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal),
                              ),
                              SizedBox(width: 8),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  color: Color(0xFF5EB04E).withOpacity(0.12),
                                ),
                                padding: EdgeInsets.only(left: 14, right: 14),
                                child: Text(
                                  'Save 15%',
                                  style: TextStyle(
                                    color: Color(0xFF5EB04E),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Text(
                            '\$0.22',
                            style: TextStyle(color: Colors.orange),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const GroceryCategoryDetailScreen()),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.only(left: 8, right: 8, top: 16),
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(0),
                        color: Colors.white,
                      ),
                      width: 180,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Center(
                            child: Image(
                              fit: BoxFit.cover,
                              height: 120,
                              width: 120,
                              image: AssetImage('assets/images/koby.png'),
                            ),
                          ),
                          SizedBox(height: 16),
                          Text(
                            'Couilflower',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(fontWeight: FontWeight.w400),
                          ),
                          Text(
                            '100gr/pack',
                            maxLines: 1,
                            style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.normal),
                          ),
                          SizedBox(height: 12),
                          Row(
                            children: [
                              Text(
                                '\$0.12',
                                maxLines: 1,
                                style: TextStyle(
                                    color: Colors.black54,
                                    decoration: TextDecoration.lineThrough,
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal),
                              ),
                              SizedBox(width: 8),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  color: Color(0xFF5EB04E).withOpacity(0.12),
                                ),
                                padding: EdgeInsets.only(left: 14, right: 14),
                                child: Text(
                                  'Save 15%',
                                  style: TextStyle(
                                    color: Color(0xFF5EB04E),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Text(
                            '\$0.22',
                            style: TextStyle(color: Colors.orange),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const GroceryCategoryDetailScreen()),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.only(left: 8, right: 8, top: 16),
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(0),
                        color: Colors.white,
                      ),
                      width: 180,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Center(
                            child: Image(
                              fit: BoxFit.cover,
                              height: 120,
                              width: 120,
                              image: AssetImage('assets/images/koby.png'),
                            ),
                          ),
                          SizedBox(height: 16),
                          Text(
                            'Couilflower',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(fontWeight: FontWeight.w400),
                          ),
                          Text(
                            '100gr/pack',
                            maxLines: 1,
                            style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.normal),
                          ),
                          SizedBox(height: 12),
                          Row(
                            children: [
                              Text(
                                '\$0.12',
                                maxLines: 1,
                                style: TextStyle(
                                    color: Colors.black54,
                                    decoration: TextDecoration.lineThrough,
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal),
                              ),
                              SizedBox(width: 8),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  color: Color(0xFF5EB04E).withOpacity(0.12),
                                ),
                                padding: EdgeInsets.only(left: 14, right: 14),
                                child: Text(
                                  'Save 15%',
                                  style: TextStyle(
                                    color: Color(0xFF5EB04E),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Text(
                            '\$0.22',
                            style: TextStyle(color: Colors.orange),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
