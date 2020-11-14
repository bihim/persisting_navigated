import 'package:flutter/material.dart';
import 'package:persisting_navigated/pages/blog_page.dart';
import 'package:persisting_navigated/pages/favorites_page.dart';

import 'account_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController _pageController = PageController();
  List<Widget> _screen = [
    BlogsPage(), FavoritesPage(), AccountPage()
  ];
  int _selectedIndex = 0;

  void _onPageChanged(int index)
  {

  }

  void _itemTapped(int index)
  {
    _pageController.jumpToPage(index);
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: _screen,
        onPageChanged: _onPageChanged,
        physics: NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _itemTapped,
        selectedItemColor: Colors.blue,
        currentIndex: _selectedIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Blogs",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: "Favorites"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Account"
          ),
        ],
      ),
    );
  }
}
