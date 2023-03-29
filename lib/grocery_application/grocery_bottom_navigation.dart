import 'package:flutter/material.dart';
import 'package:mighty_ui_kit/grocery_application/grocery_account_profile.dart';
import 'package:mighty_ui_kit/grocery_application/grocery_cart_screen.dart';
import 'package:mighty_ui_kit/grocery_application/grocery_dashboard_screen.dart';
import 'package:mighty_ui_kit/grocery_application/grocery_my_orderscreen.dart';

class GroceryMyBottomBar extends StatefulWidget {
  const GroceryMyBottomBar({Key? key}) : super(key: key);

  @override
  _GroceryMyBottomBarState createState() => _GroceryMyBottomBarState();
}

class _GroceryMyBottomBarState extends State<GroceryMyBottomBar> {
  int _pageIndex = 0;
  PageController? _pageController;

  List<Widget> tabPages = const [
    GroceryDashBoardScreen(),
    GroceryCartScreen(),
    GroceryMyOrderScreen(),
    GroceryAccountScreen()
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
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _pageIndex,
        selectedItemColor: Colors.black,
        showUnselectedLabels: true,
        showSelectedLabels: true,
        type: BottomNavigationBarType.fixed,
        onTap: onTabTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Color(0xFF5EB04E),
            ),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart, color: Color(0xFF5EB04E)),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag, color: Color(0xFF5EB04E)),
              label: 'My Order'),
          BottomNavigationBarItem(
              icon: Icon(Icons.people_alt, color: Color(0xFF5EB04E)),
              label: 'Account'),
        ],
      ),
      body: PageView(
        children: tabPages,
        onPageChanged: onPageChanged,
        controller: _pageController,
      ),
    );
  }

  void onPageChanged(int page) {
    setState(() {
      _pageIndex = page;
    });
  }

  void onTabTapped(int index) {
    _pageController?.animateToPage(index,
        duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
  }
}
