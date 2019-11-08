import 'package:flutter/material.dart';
import '../bottom_bar_navigation_pattern/animated_bottom_bar.dart';


class BottomBarNavigationPatternExample extends StatefulWidget {
  final List<BarItem> barItems = [
    BarItem(
      text: "Home",
      iconData: Icons.home,
      color: Colors.indigoAccent,
    ),
    BarItem(
      text: "Locate",
      iconData: Icons.location_on,
      color: Colors.pinkAccent,
    ),
    BarItem(
      text: "Messages",
      iconData: Icons.message,
      color: Colors.yellow.shade900,
    ),
    BarItem(
      text: "Profile",
      iconData: Icons.person_outline,
      color: Colors.teal,
    ),
  ];

  @override
  _BottomBarNavigationPatternExampleState createState() =>
      _BottomBarNavigationPatternExampleState();
}

class _BottomBarNavigationPatternExampleState
    extends State<BottomBarNavigationPatternExample> {
  int selectedBarIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedContainer(
        color: widget.barItems[selectedBarIndex].color,
        duration: const Duration(milliseconds: 300),
      ),
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
