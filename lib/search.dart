import 'package:flutter/material.dart';
import 'package:binge_beta_1/account.dart';
import 'package:binge_beta_1/loginpg.dart';
import 'package:binge_beta_1/main.dart';
import 'package:binge_beta_1/mainpg.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class search1 extends StatefulWidget {
  @override
  _search1State createState() => _search1State();
}

class _search1State extends State<search1> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    mainpg(),
    MyHomePage(title: 'Binge'),
    loginpg(),
    account()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 21, 19, 24),
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: Container(
            color: Color.fromARGB(255, 21, 19, 24),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15),
              child: GNav(
                backgroundColor: Color.fromARGB(255, 21, 19, 24),
                color: Colors.white10,
                activeColor: Colors.white,
                tabBackgroundColor: Color.fromARGB(255, 63, 85, 198),
                gap: 8,
                padding: EdgeInsets.all(16),
                tabs: [
                  GButton(
                    icon: Icons.home,
                    text: 'home',
                  ),
                  GButton(
                    icon: Icons.search_outlined,
                    text: 'Search',
                  ),
                  GButton(
                    icon: Icons.library_books_outlined,
                    text: 'Library',
                  ),
                  GButton(
                    icon: Icons.account_circle_sharp,
                    text: 'Account',
                  ),
                ],
                selectedIndex: _selectedIndex,
                onTabChange: (index) {
                  setState(() {
                    _selectedIndex = index;
                  });
                },
              ),
            )));
  }
}
