import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import '../animation2/bottom_bar_navigation_pattern/bottom_bar_navigation_pattern_example.dart';

class JobSeekerPage extends StatefulWidget {
  @override
  _JobRecruiterPageState createState() => _JobRecruiterPageState();
}

class _JobRecruiterPageState extends State<JobSeekerPage> {
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
