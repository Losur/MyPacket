import 'package:flutter/material.dart';
import '../../view/news_page/news_page.dart';
import '../../view/search_page/search_page.dart';
import '../main_page/main_page.dart';
import '../../projectColors.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex=0;
  final List _screens=[MainPage(),
    NewsPage(),
    const SearchPage()
  ];

  void _updateIndex(int value) {
    setState(() {
      _currentIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(ProjectColors.backgroundColor),
        toolbarHeight: 0,
        elevation: 0,
      ),
      body: SafeArea(
        child: _screens[_currentIndex],
      ), backgroundColor: const Color(ProjectColors.backgroundColor),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: _updateIndex,
        selectedItemColor: Colors.blue[700],
        selectedFontSize: 13,
        unselectedFontSize: 13,
        iconSize: 30,
        items: const [
          BottomNavigationBarItem(
            label: "Main Page",
            icon: Icon(Icons.shopping_cart_outlined),

          ),
          BottomNavigationBarItem(
              label: "News",
              icon: Icon(Icons.list)),
          BottomNavigationBarItem(
            label: "Search",
            icon: Icon(Icons.search),
          ),
          // BottomNavigationBarItem(
          //   label: "Categories",
          //   icon: Icon(Icons.grid_view),
          // ),
          // BottomNavigationBarItem(
          //   label: "My Account",
          //   icon: Icon(Icons.account_circle_outlined),
          // ),
        ],
      ),
    );
  }


}