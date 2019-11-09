import 'package:flutter/material.dart';
import 'package:vikash/pages/JobSeekerPage/exportJS.dart';


import '../bottom_bar_navigation_pattern/animated_bottom_bar.dart';



class BottomBarNavigationPatternExample extends StatefulWidget {
  final List<BarItem> barItems = [
    BarItem(
      text: "Home",
      iconData: Icons.home,
      color: Colors.indigoAccent,  
      pageOptions: HomePageofJobSeeker()
    ),
    BarItem(
      text: "Locate",
      iconData: Icons.location_on,
      color: Colors.pinkAccent,
      pageOptions: LocationPageofJobSeeker()
    ),
    BarItem(
      text: "Messages",
      iconData: Icons.message,
      color: Colors.yellow.shade900,
      pageOptions: MessagesPageofJobSeeker()
    ),
    BarItem(
      text: "Profile",
      iconData: Icons.person_outline,
      color: Colors.teal,
      pageOptions: ProfilePageofJobSeeker()
    ),
  ];

  @override
  _BottomBarNavigationPatternExampleState createState() =>
      _BottomBarNavigationPatternExampleState();
}

class _BottomBarNavigationPatternExampleState
    extends State<BottomBarNavigationPatternExample> {
  int selectedBarIndex = 0;
  final _pageOptions =[HomePageofJobSeeker(),LocationPageofJobSeeker(),MessagesPageofJobSeeker(),ProfilePageofJobSeeker()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageOptions[selectedBarIndex],
      
      bottomNavigationBar: AnimatedBottomBar(
          barItems: widget.barItems,
          animationDuration: const Duration(milliseconds: 150),
          barStyle: BarStyle(
            fontSize: 15.0,
            iconSize: 22.0
          ),
          onBarTap: (index) {
            setState(() {
              selectedBarIndex = index;
            });
          }),
    );
  }
}
