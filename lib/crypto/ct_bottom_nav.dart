import 'package:flutter/material.dart';
import 'package:mighty_ui_kit/crypto/ct_dashboard.dart';
import 'package:mighty_ui_kit/crypto/ct_home.dart';
import 'package:mighty_ui_kit/crypto/ct_menu.dart';
import 'package:mighty_ui_kit/crypto/ct_news.dart';
import 'package:mighty_ui_kit/crypto/ct_watchlist.dart';

class CtBottomNavigationScreen extends StatefulWidget {
  const CtBottomNavigationScreen({Key? key}) : super(key: key);

  @override
  _CtBottomNavigationScreenState createState() =>
      _CtBottomNavigationScreenState();
}

class _CtBottomNavigationScreenState extends State<CtBottomNavigationScreen> {
  int _pageIndex = 0;
  PageController? _pageController;

  List<Widget> tabPages = const [
    CtHome(),
    CtDashBoard(),
    CtWatchList(),
    CtNews(),
    CtMenu()
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
      backgroundColor: Colors.indigo[600],
      bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
              // sets the background color of the `BottomNavigationBar`
              canvasColor: Colors.indigo[600],
              // sets the active color of the `BottomNavigationBar` if `Brightness` is light

        ),
          child: BottomNavigationBar(
            elevation: 0,
            currentIndex: _pageIndex,
            selectedItemColor: Colors.white,
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
                  color: Colors.white,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.file_copy_outlined,
                  color: Colors.white,
                ),
                label: 'Dashboard',
              ),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.favorite,
                    color: Colors.white,
                  ),
                  label: 'Watchlist'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.chat_outlined,
                    color: Colors.white,
                  ),
                  label: 'News'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.menu,
                    color: Colors.white,
                  ),
                  label: 'Menu'),
            ],
          )),
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
