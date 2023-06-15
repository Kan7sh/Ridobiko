import 'package:flutter/material.dart';
import 'package:ridobiko_kanish/screens/profile_screen.dart';
import 'package:ridobiko_kanish/screens/search_screen.dart';
import 'package:ridobiko_kanish/screens/shop_screen.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import 'orders_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int _currentIndex = 0;

  final List<Widget> _screens = [
    const ShopScreen(),
    const SearchScreen(),
    const OrderScreen(),
    const ProfileScreen()
  ];

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: AppBar(
          backgroundColor: Colors.white,
          title: Padding(
            padding: const EdgeInsets.only(top: 18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Image.asset(
                    "assets/images/logo.jpg",
                    height: 28,
                    width: 28,
                  ),
                ),
                const Text(
                  "RIDOBIKO",
                  style: TextStyle(
                    color: Color(0xff808080),
                    fontFamily: "MyBold",
                    fontSize: 20

                  ),
                ),
              ],
            ),
          ),
          elevation: 0,
        ),
      ),
      body: _screens[_currentIndex],

      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 15.0),
        child: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: _onTabTapped,
          showSelectedLabels: true,
          showUnselectedLabels: false,
          selectedItemColor: const Color(0xff306fb0),
          unselectedItemColor: const Color(0xff2e2e2f),
          type: BottomNavigationBarType.fixed,
          elevation: 0,
          items: const[
            BottomNavigationBarItem(
              icon: Icon(Icons.home,size: 30,),
              label: "Shop",
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.search,size: 30),
                label: "Search"
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_bag_outlined,size: 30),
                label: "Orders"
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_2_outlined,size: 30),
                label: "Profile"
            ),
          ],
        ),
      ),
    );
  }
}
