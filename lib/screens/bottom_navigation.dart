import 'package:flutter/material.dart';
import 'package:ondemand/screens/chat/chat.dart';
import 'package:ondemand/screens/homepage/homescreen.dart';
import 'package:ondemand/screens/homepage/view.dart';
import 'package:ondemand/screens/profile/profile.dart';

import 'booking/booking.dart';

class ButtomNavigation extends StatefulWidget {
  const ButtomNavigation({super.key});

  @override
  State<ButtomNavigation> createState() => _ButtomNavigationState();
}

class _ButtomNavigationState extends State<ButtomNavigation> {
  int selectedIndex = 0;

  final screen = [homescreen(), Booking(), chatapp(), profile()];

  void _onitemtapped(int index) {
    setState(() {
      selectedIndex = index;
    });
    // print('${selectedIndex}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromRGBO(223, 247, 255, 1),
        currentIndex: selectedIndex,
        elevation: 0,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        unselectedItemColor: Colors.grey,
        onTap: ((index) {
          setState(() {
            selectedIndex = index;
          });
          print(selectedIndex);
        }),
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              'asset/house.png',
              height: 24,
              color: selectedIndex == 0 ? Color(0xff5F15CA) : Colors.grey,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'asset/line.png',
              height: 24,
              color: selectedIndex == 1 ? Color(0xff5F15CA) : Colors.grey,
            ),
            label: 'Booking',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'asset/chat.png',
              height: 24,
              color: selectedIndex == 2 ? Color(0xff5F15CA) : Colors.grey,
            ),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'asset/Vector.png',
              height: 24,
              color: selectedIndex == 3 ? Color(0xff5F15CA) : Colors.grey,
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
