import 'package:flutter/material.dart';
import 'package:vikash/animation/fadeAnimation.dart';
import 'package:vikash/pages/JobRecruiterPage.dart';
import 'package:vikash/pages/JobSeekerPage/HomePageofJobSeeker.dart';

import 'JobSeekerPage.dart';

class SelectionPage extends StatefulWidget {
  @override
  _SelectionPageState createState() => _SelectionPageState();
}

class _SelectionPageState extends State<SelectionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color(0xffeafbea),
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
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.more_horiz,
              color: Colors.grey,
            ),
          )
        ],
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration( gradient: LinearGradient(
                  colors: [Color(0xfff8f8f8), Color(0xffeafbea)]),
              image: DecorationImage(
                  image: AssetImage(
            'assets/images/pngtree-farmer-farm-farm-worker-hand-painted-png-image_476673.png',
          ),fit: BoxFit.cover,)),
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(left:20, top: 10,right: 20),
                child: Text(
                  'I WANT TO WORK AS A...',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontFamily: 'Montserrat',
                      fontStyle: FontStyle.normal),
                ),
              ),
              FadeAnimation(
                1.5,
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(bottom: 10, top: 200, ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => JobSeekerPage()));
                              },
                              child: Container(
                                height: 70,
                                width: 300,
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black,
                                        blurRadius: 20,
                                        offset: Offset(0, 10))
                                  ],
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Center(
                                    child: Text(
                                  'Job Seeker',
                                  style: TextStyle(
                                      fontFamily: 'Montserrat', fontSize: 25),
                                )),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            JobRecruiterPage()));
                              },
                              child: Container(
                                  height: 70,
                                  width: 300,
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black,
                                          blurRadius: 20,
                                          offset: Offset(0, 10))
                                    ],
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: Center(
                                      child: Text(
                                    'Job Recruiter',
                                    style: TextStyle(
                                        fontFamily: 'Montserrat', fontSize: 25),
                                  ))),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
