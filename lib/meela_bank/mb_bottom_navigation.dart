import 'package:flutter/material.dart';
import 'package:mighty_ui_kit/finance_app/finance_activity_screen.dart';
import 'package:mighty_ui_kit/finance_app/finance_home_screen.dart';
import 'package:mighty_ui_kit/finance_app/finance_profile_screen.dart';
import 'package:mighty_ui_kit/finance_app/finance_summary_screen.dart';
import 'package:mighty_ui_kit/meela_bank/mb_card_sreen.dart';
import 'package:mighty_ui_kit/meela_bank/mb_homescreen.dart';
import 'package:mighty_ui_kit/meela_bank/mb_profile_screen.dart';
import 'package:mighty_ui_kit/meela_bank/mb_setting.dart';

class MbBottomNavigationScreen extends StatefulWidget {
  const MbBottomNavigationScreen({Key? key}) : super(key: key);

  @override
  _MbBottomNavigationScreenState createState() =>
      _MbBottomNavigationScreenState();
}

class _MbBottomNavigationScreenState extends State<MbBottomNavigationScreen> {
  int _pageIndex = 0;
  PageController? _pageController;

  List<Widget> tabPages = const [
    MbHomeScreen(),
    MbCardcreen(),
    MbAppSetting(),
    MbProfileScreen()
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
        onTap: (index) {
          _pageIndex = index;
          setState(() {});
        },
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Color(0xFF0BB8E4),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_membership, color: Color(0xFF0BB8E4)),
            label: 'Cards',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings_applications, color: Color(0xFF0BB8E4)),
              label: 'Settings'),
          BottomNavigationBarItem(
              icon: Icon(Icons.people_alt, color: Color(0xFF0BB8E4)),
              label: 'Profile'),
        ],
      ),
      body: IndexedStack(
        index: _pageIndex,
        children: tabPages,
      ),
    );
  }

  void onPageChanged(int page) {
    setState(() {
      _pageIndex = page;
    });
  }
}
