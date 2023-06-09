import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ondemand/screens/homepage/homescreen.dart';
import 'package:ondemand/screens/homepage/view_all.dart';

import '../booking/booking.dart';
import '../bottom_navigation.dart';

class view extends StatefulWidget {
  const view({Key? key}) : super(key: key);

  @override
  State<view> createState() => _viewState();
}

class _viewState extends State<view> {
  int selectedIndex = 0;

  final screen = [
    Viewall(),
    Booking(),
    Booking(),
    Booking(),
  ];

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
        currentIndex: selectedIndex,
        elevation: 10,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.grey,
        onTap: ((index) {
          setState(() {
            selectedIndex = index;
          });
          print(selectedIndex);
        }),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Image.asset(
              'asset/house.png',
              height: 24,
              color: selectedIndex == 0 ? Colors.purple : Colors.grey,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'asset/line.png',
              height: 24,
              color: selectedIndex == 1 ? Colors.purple : Colors.grey,
            ),
            label: 'Booking',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'asset/chat.png',
              height: 24,
              color: selectedIndex == 2 ? Colors.purple : Colors.grey,
            ),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'asset/Vector.png',
              height: 24,
              color: selectedIndex == 3 ? Colors.purple : Colors.grey,
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
