import 'package:flutter/material.dart';
import 'package:plant_port/pages/car_guide_page.dart';
import 'package:plant_port/pages/explore_page.dart';
import 'package:plant_port/pages/mypants_page.dart';
import 'package:plant_port/pages/reminder_page.dart';
import 'package:plant_port/pages/scaner_page.dart';

class BottomBar extends StatefulWidget {
  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;

  final List<String> _icons = [
    'assets/bottombar/reminder.png',
    'assets/bottombar/explore.png',
    'assets/bottombar/Scaner.png',
    'assets/bottombar/careguide.png',
    'assets/bottombar/myplants.png',
  ];

  final List<String> _selectedIcons = [
    'assets/bottombar/reminderselected.png',
    'assets/bottombar/explorselected.png',
    'assets/bottombar/Scaner.png',
    'assets/bottombar/careguideselected.png',
    'assets/bottombar/myplantselected.png',
  ];

  final List<String> names = [
    'Reminder',
    'Explore',
    '', // Empty string for the middle item
    'Care Guide',
    'My Plants',
  ];

  final List<Widget> _pages = [
    ReminderPage(),
    ExplorePage(),
    ScanerPage(),
    CarGuidePage(),
    MypantsPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex], // Display selected page
      bottomSheet: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(5, (index) {
            // If the middle icon (index == 2), leave it blank and make space.
            if (index == 2) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              ScanerPage()));
                },
                child: Container(
                  height: 50,
                  width: 50,
                  child: Image(image: AssetImage("assets/bottombar/Scaner.png")),
                ),
              ); // Adjust the size of the empty space
            }

            return GestureDetector(
              onTap: () => _onItemTapped(index),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    _selectedIndex == index
                        ? _selectedIcons[index]
                        : _icons[index],
                    width: 30, // Adjust the size of the icons
                    height: 30,
                  ),
                  SizedBox(height: 5),
                  Text(
                    names[index],
                    style: TextStyle(
                      fontSize: 12,
                      color:
                      _selectedIndex == index ? Colors.green : Colors.grey,
                    ),
                  ),
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}
