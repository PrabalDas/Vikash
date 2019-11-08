import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:vikash/animation/bottom_bar_navigation_pattern/bottom_bar_navigation_pattern_example.dart';

class JobRecruiterPage extends StatefulWidget {
  @override
  _JobRecruiterPageState createState() => _JobRecruiterPageState();
}

class _JobRecruiterPageState extends State<JobRecruiterPage> {
  int _selectedIndex = 0;
  final _pageController = PageController(initialPage: 2);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.grey,
          ),
        ),
      ),
      bottomNavigationBar: BottomBarNavigationPatternExample(),
    );
  }
}
