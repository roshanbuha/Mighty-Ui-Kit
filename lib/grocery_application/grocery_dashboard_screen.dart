import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:mighty_ui_kit/grocery_application/grocery_category_dashboard_detail_screen.dart';
import 'package:mighty_ui_kit/grocery_application/grocery_category_detail_screen.dart';
import 'package:mighty_ui_kit/grocery_application/grocery_notification_screen.dart';


// ignore: must_be_immutable
class GroceryDashBoardScreen extends StatefulWidget {
  const GroceryDashBoardScreen({Key? key}) : super(key: key);

  @override
  _GroceryDashBoardScreenState createState() => _GroceryDashBoardScreenState();
}

class _GroceryDashBoardScreenState extends State<GroceryDashBoardScreen> {
  var searchController = TextEditingController();

  int _pageIndex = 0;
  final double _currentPosition = 0.0;
  PageController? _pageController;
  List<Widget> tabPages = const [
    Image(image: AssetImage('assets/images/slider.jpg')),
    Image(image: AssetImage('assets/images/slider.jpg')),
    Image(image: AssetImage('assets/images/slider.jpg')),
  ];

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _pageIndex);
  }

  @override
  void dispose() {
    _pageController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 1,
          centerTitle: false,
          automaticallyImplyLeading: false,
          titleSpacing: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Row(
                  children: const [
                    Image(
                      height: 40,
                      width: 40,
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/appicon.png'),
                    ),
                    SizedBox(width: 8),
                    Text(
                      'Grocery app',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
              IconButton(
                onPressed: () {
                  Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const GroceryNotificationScreen())
                      );
                },
                color: Colors.black,
                icon: const Icon(Icons.notifications_none_sharp),
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 16),
                Container(
                  height: 60,
                  padding: const EdgeInsets.only(left: 16, right: 8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.grey[100]),
                  child: Form(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextFormField(
                          controller: searchController,
                          autofocus: false,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Search for products',
                            suffixIcon: GestureDetector(
                              onTap: () {
                                setState(() {});
                              },
                              child: const Icon(
                                Icons.search,
                                color: Color(0xFF5EB04E),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 220,
                  child: PageView(
                    children: tabPages,
                    onPageChanged: (int index) =>
                        setState(() => _pageIndex = index),
                    controller: _pageController,
                  ),
                ),
                Container(
                  alignment: Alignment.bottomCenter,
                  child: DotsIndicator(
                    position: _currentPosition,
                    dotsCount: 3,
                    decorator:
                        const DotsDecorator(activeColor: Color(0xFF5EB04E)),
                  ),
                ),
                Wrap(
                  spacing: 5.0,
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      margin: const EdgeInsets.all(8),
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(
                          color: (Colors.grey[200])!,
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const <Widget>[
                          Image(
                            fit: BoxFit.cover,
                            height: 60,
                            image: AssetImage('assets/images/vegetable.png'),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Vegetables',
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      margin: const EdgeInsets.all(8),
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(
                          color: (Colors.grey[200])!,
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const <Widget>[
                          Image(
                            fit: BoxFit.cover,
                            height: 60,
                            image: AssetImage('assets/images/vegetable.png'),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Vegetables',
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      margin: const EdgeInsets.all(8),
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(
                          color: (Colors.grey[200])!,
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const <Widget>[
                          Image(
                            fit: BoxFit.cover,
                            height: 60,
                            image: AssetImage('assets/images/vegetable.png'),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Vegetables',
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      margin: const EdgeInsets.all(8),
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(
                          color: (Colors.grey[200])!,
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const <Widget>[
                          Image(
                            fit: BoxFit.cover,
                            height: 60,
                            image: AssetImage('assets/images/vegetable.png'),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Vegetables',
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      margin: const EdgeInsets.all(8),
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(
                          color: (Colors.grey[200])!,
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const <Widget>[
                          Image(
                            fit: BoxFit.cover,
                            height: 60,
                            image: AssetImage('assets/images/vegetable.png'),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Vegetables',
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      margin: const EdgeInsets.all(8),
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(
                          color: (Colors.grey[200])!,
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const <Widget>[
                          Image(
                            fit: BoxFit.cover,
                            height: 60,
                            image: AssetImage('assets/images/vegetable.png'),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Vegetables',
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      margin: const EdgeInsets.all(8),
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(
                          color: (Colors.grey[200])!,
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const <Widget>[
                          Image(
                            fit: BoxFit.cover,
                            height: 60,
                            image: AssetImage('assets/images/vegetable.png'),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Vegetables',
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Recommend for you',
                      style: TextStyle(
                          letterSpacing: 1.0, fontWeight: FontWeight.w700),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const GroceryCategoryDashboardDetailScreen()),
                        );
                      },
                      child: Text(
                        'See more',
                        style: TextStyle(
                            color: Color(0xFF5EB04E),
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 16),
                SizedBox(
                  height: 250,
                  child: ListView(
                    padding: const EdgeInsets.only(left: 10, right: 16),
                    shrinkWrap: true,
                    physics: const ClampingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const GroceryCategoryDetailScreen()),
                          );
                        },
                        child: Container(
                          width: 180,
                          padding: const EdgeInsets.all(8),
                          margin: const EdgeInsets.only(top: 12, bottom: 12),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: Offset(0, 3),
                              )
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Stack(
                                alignment: Alignment.center,
                                children: [
                                  Center(
                                    child: Image(
                                      fit: BoxFit.cover,
                                      height: 120,
                                      width: 120,
                                      image:
                                          AssetImage('assets/images/koby.png'),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 8),
                              Row(
                                children: const [
                                  Text(
                                    '\$30.0',
                                    style: TextStyle(
                                      color: Color(0xFF5EB04E),
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(width: 4),
                                  Text(
                                    '\$10.0',
                                    style: TextStyle(
                                      fontSize: 16,
                                      decoration: TextDecoration.lineThrough,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 4),
                              Text(
                                'Cauliflower',
                                style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 16,
                                ),
                                maxLines: 1,
                              ),
                              Text(
                                '100gr',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black54,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        width: 180,
                        padding: const EdgeInsets.all(8),
                        margin: const EdgeInsets.only(top: 12, bottom: 12),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: Offset(0, 3),
                            )
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Stack(
                              alignment: Alignment.center,
                              children: [
                                Center(
                                  child: Image(
                                    fit: BoxFit.cover,
                                    height: 120,
                                    width: 120,
                                    image: AssetImage('assets/images/koby.png'),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 8),
                            Row(
                              children: const [
                                Text(
                                  '\$30.0',
                                  style: TextStyle(
                                    color: Color(0xFF5EB04E),
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(width: 4),
                                Text(
                                  '\$10.0',
                                  style: TextStyle(
                                    fontSize: 16,
                                    decoration: TextDecoration.lineThrough,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 4),
                            Text(
                              'Cauliflower',
                              style: TextStyle(
                                color: Colors.black54,
                                fontSize: 16,
                              ),
                              maxLines: 1,
                            ),
                            Text(
                              '100gr',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black54,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        width: 180,
                        padding: const EdgeInsets.all(8),
                        margin: const EdgeInsets.only(top: 12, bottom: 12),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: Offset(0, 3),
                            )
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Stack(
                              alignment: Alignment.center,
                              children: [
                                Center(
                                  child: Image(
                                    fit: BoxFit.cover,
                                    height: 120,
                                    width: 120,
                                    image: AssetImage('assets/images/koby.png'),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 8),
                            Row(
                              children: const [
                                Text(
                                  '\$30.0',
                                  style: TextStyle(
                                    color: Color(0xFF5EB04E),
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(width: 4),
                                Text(
                                  '\$10.0',
                                  style: TextStyle(
                                    fontSize: 16,
                                    decoration: TextDecoration.lineThrough,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 4),
                            Text(
                              'Cauliflower',
                              style: TextStyle(
                                color: Colors.black54,
                                fontSize: 16,
                              ),
                              maxLines: 1,
                            ),
                            Text(
                              '100gr',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black54,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Pick\'s Today',
                      style: TextStyle(
                          letterSpacing: 1.0, fontWeight: FontWeight.w700),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const GroceryCategoryDashboardDetailScreen()),
                        );
                      },
                      child: Text(
                        'See more',
                        style: TextStyle(
                            color: Color(0xFF5EB04E),
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                SizedBox(
                  height: 250,
                  child: ListView(
                    padding: const EdgeInsets.only(left: 10, right: 16),
                    shrinkWrap: true,
                    physics: const ClampingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const GroceryCategoryDetailScreen()),
                          );
                        },
                        child: Container(
                          width: 180,
                          padding: const EdgeInsets.all(8),
                          margin: const EdgeInsets.only(top: 12, bottom: 12),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: Offset(0, 3),
                              )
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Stack(
                                alignment: Alignment.center,
                                children: [
                                  Center(
                                    child: Image(
                                      fit: BoxFit.cover,
                                      height: 120,
                                      width: 120,
                                      image:
                                          AssetImage('assets/images/koby.png'),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 8),
                              Row(
                                children: const [
                                  Text(
                                    '\$30.0',
                                    style: TextStyle(
                                      color: Color(0xFF5EB04E),
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(width: 4),
                                  Text(
                                    '\$10.0',
                                    style: TextStyle(
                                      fontSize: 16,
                                      decoration: TextDecoration.lineThrough,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 4),
                              Text(
                                'Cauliflower',
                                style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 16,
                                ),
                                maxLines: 1,
                              ),
                              Text(
                                '100gr',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black54,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        width: 180,
                        padding: const EdgeInsets.all(8),
                        margin: const EdgeInsets.only(top: 12, bottom: 12),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: Offset(0, 3),
                            )
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Stack(
                              alignment: Alignment.center,
                              children: [
                                Center(
                                  child: Image(
                                    fit: BoxFit.cover,
                                    height: 120,
                                    width: 120,
                                    image: AssetImage('assets/images/koby.png'),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 8),
                            Row(
                              children: const [
                                Text(
                                  '\$30.0',
                                  style: TextStyle(
                                    color: Color(0xFF5EB04E),
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(width: 4),
                                Text(
                                  '\$10.0',
                                  style: TextStyle(
                                    fontSize: 16,
                                    decoration: TextDecoration.lineThrough,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 4),
                            Text(
                              'Cauliflower',
                              style: TextStyle(
                                color: Colors.black54,
                                fontSize: 16,
                              ),
                              maxLines: 1,
                            ),
                            Text(
                              '100gr',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black54,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        width: 180,
                        padding: const EdgeInsets.all(8),
                        margin: const EdgeInsets.only(top: 12, bottom: 12),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: Offset(0, 3),
                            )
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Stack(
                              alignment: Alignment.center,
                              children: [
                                Center(
                                  child: Image(
                                    fit: BoxFit.cover,
                                    height: 120,
                                    width: 120,
                                    image: AssetImage('assets/images/koby.png'),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 8),
                            Row(
                              children: const [
                                Text(
                                  '\$30.0',
                                  style: TextStyle(
                                    color: Color(0xFF5EB04E),
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(width: 4),
                                Text(
                                  '\$10.0',
                                  style: TextStyle(
                                    fontSize: 16,
                                    decoration: TextDecoration.lineThrough,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 4),
                            Text(
                              'Cauliflower',
                              style: TextStyle(
                                color: Colors.black54,
                                fontSize: 16,
                              ),
                              maxLines: 1,
                            ),
                            Text(
                              '100gr',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black54,
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
      ),
    );
  }
}
