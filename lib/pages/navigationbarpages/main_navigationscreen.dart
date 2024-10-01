import 'package:event_app/pages/navigationbarpages/alerts_page.dart';
import 'package:event_app/pages/navigationbarpages/explore_page.dart';
import 'package:event_app/pages/navigationbarpages/home/home_page.dart';
import 'package:event_app/pages/navigationbarpages/inbox_page.dart';
import 'package:event_app/pages/navigationbarpages/menu_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:iconsax/iconsax.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({Key? key}) : super(key: key);

  @override
  _NavigationScreenState createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int _selectedIndex = 0;

  // List of pages to navigate to
  final List<Widget> _pages = [
    HomePage(),
    InboxPage(),
    ExplorePage(),
    AlertsPage(),
    MenuPage()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        selectedItemColor: HexColor("160837"),
        unselectedItemColor: HexColor("82779C"),
        backgroundColor: Colors.transparent,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Iconsax.home4,
              size: 30,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Iconsax.direct_inbox,
              size: 30,
            ),
            label: 'Inbox',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.explore,
              size: 30,
            ),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Iconsax.notification4, size: 30),
            label: 'Alerts',
          ),
          BottomNavigationBarItem(
            icon: Icon(Iconsax.menu4, size: 30),
            label: 'Menu',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
