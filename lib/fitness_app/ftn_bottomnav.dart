import 'package:flutter/material.dart';
import 'package:mighty_ui_kit/fitness_app/ftn_add_card.dart';
import 'package:mighty_ui_kit/fitness_app/ftn_favorites.dart';
import 'package:mighty_ui_kit/fitness_app/ftn_home.dart';
import 'package:mighty_ui_kit/fitness_app/ftn_info.dart';
import 'package:mighty_ui_kit/fitness_app/ftn_profile.dart';

class FtnBottomNavigationScreen extends StatefulWidget {
  const FtnBottomNavigationScreen({Key? key}) : super(key: key);

  @override
  _FtnBottomNavigationScreenState createState() =>
      _FtnBottomNavigationScreenState();
}

class _FtnBottomNavigationScreenState extends State<FtnBottomNavigationScreen> {
  int _pageIndex = 0;
  PageController? _pageController;

  List<Widget> tabPages = const [
    FtnHomeScreen(),
    FtnAddNewCard(),
    FtnInfo(),
    FtnFavorites(),
    FtnProfile()
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
              color: Colors.grey,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.card_giftcard,
              color: Colors.grey,
            ),
            label: 'Cards',
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.info,
                color: Colors.grey,
              ),
              label: 'Info'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
                color: Colors.grey,
              ),
              label: 'Favorites'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.people_alt,
                color: Colors.grey,
              ),
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
