import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:kir/screens/home/home_screen.dart';

import '../util/color.dart';

class NavBarScreen extends StatefulWidget {
  @override
  _NavBarScreenState createState() => _NavBarScreenState();
}

class _NavBarScreenState extends State<NavBarScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    MenuScreen(),
    Container(),
    Container(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        backgroundColor: ScreenColor.white,
        selectedItemColor: ScreenColor.color1,
        unselectedItemColor: ScreenColor.color3,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Iconsax.home),
            label: 'Главная',
          ),
          BottomNavigationBarItem(
            icon: Icon(Iconsax.clock),
            label: 'Заявки',
          ),
          BottomNavigationBarItem(
            icon: Icon(Iconsax.user),
            label: 'Профиль',
          ),
        ],
      ),
    );
  }
}
