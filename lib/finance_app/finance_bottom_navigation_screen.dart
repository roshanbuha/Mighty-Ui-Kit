import 'package:flutter/material.dart';
import 'package:mighty_ui_kit/finance_app/finance_activity_screen.dart';
import 'package:mighty_ui_kit/finance_app/finance_home_screen.dart';
import 'package:mighty_ui_kit/finance_app/finance_profile_screen.dart';
import 'package:mighty_ui_kit/finance_app/finance_summary_screen.dart';

class FinanceBottomNavigationScreen extends StatefulWidget {
  const FinanceBottomNavigationScreen({Key? key}) : super(key: key);

  @override
  _FinanceBottomNavigationScreenState createState() =>
      _FinanceBottomNavigationScreenState();
}

class _FinanceBottomNavigationScreenState
    extends State<FinanceBottomNavigationScreen> {
  int _pageIndex = 0;
  PageController? _pageController;

  List<Widget> tabPages = const [
    FinanceHomeScreen(),
    FinanceActivityScreen(),
    FinanceSummaryScreen(),
    FinanceProfileScreen()
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
              color: Color(0xFF0BB8E4),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart, color: Color(0xFF0BB8E4)),
            label: 'Activity',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag, color: Color(0xFF0BB8E4)),
              label: 'Summary'),
          BottomNavigationBarItem(
              icon: Icon(Icons.people_alt, color: Color(0xFF0BB8E4)),
              label: 'Profile'),
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
