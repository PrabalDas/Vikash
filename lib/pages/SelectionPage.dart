import 'package:flutter/material.dart';
import 'package:vikash/animation/fadeAnimation.dart';
import 'package:vikash/pages/JobRecruiterPage.dart';
import 'package:vikash/pages/JobSeekerPage/HomePageofJobSeeker.dart';
import 'package:vikash/pages/info_Page/Job_recruiter_info.dart';
import 'package:vikash/pages/info_Page/Job_seeker_info.dart';
import 'package:vikash/widgets/Login_Page.dart';
import 'package:vikash/widgets/popUpMenuConstants.dart';
import '../widgets/popUpMenuConstants.dart';

import 'JobSeekerPage.dart';

class SelectionPage extends StatefulWidget {
  @override
  _SelectionPageState createState() => _SelectionPageState();
}

class _SelectionPageState extends State<SelectionPage> {
  _showModalbottomsheet2(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            height: 300,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30))),
            child: Padding(
              padding:
                  EdgeInsets.only(top: 20, bottom: 20, left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width / 3,
                        height: MediaQuery.of(context).size.height / 5.5,
                        child: InkWell(
                            onTap: () {
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/beautiful-western-desert-landscape-with-sky-rock-cliff-mountain-illustration_7081-1327.jpg'),
                                      fit: BoxFit.cover),
                                  color: Colors.amber,
                                  borderRadius: BorderRadius.circular(10)),
                            )),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text('Barren Land')
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width / 3,
                        height: MediaQuery.of(context).size.height / 5.5,
                        child: InkWell(onTap: (){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          JobRecruiterPage()));},
                            child: Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage('assets/images/farming.jpg'),
                                  fit: BoxFit.cover),
                              color: Colors.yellowAccent,
                              borderRadius: BorderRadius.circular(10)),
                        )),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text('Farming')
                    ],
                  ),
                ],
              ),
            ),
          );
        });
  }

  _showModalbottomsheet1(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            height: 300,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30))),
            child: Padding(
              padding:
                  EdgeInsets.only(top: 20, bottom: 20, left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width / 3,
                        height: MediaQuery.of(context).size.height / 5.5,
                        child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => JobSeekerPage()));
                            },
                            child: Container(
                              color: Colors.amber,
                            )),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text('Barren Land')
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width / 3,
                        height: MediaQuery.of(context).size.height / 5.5,
                        child: InkWell(
                            child: Container(
                          color: Colors.amberAccent,
                        )),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text('Farming')
                    ],
                  ),
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffeafbea),
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
          PopupMenuButton<String>(
            color: Colors.grey[100],
            onSelected: choiceAction,
            itemBuilder: (BuildContext context) {
              return Constants.choices.map((String choices) {
                return PopupMenuItem<String>(
                  value: choices,
                  child: Text(
                    choices,
                  ),
                );
              }).toList();
            },
          )
        ],
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xfff8f8f8), Color(0xffeafbea)]),
              image: DecorationImage(colorFilter: ColorFilter.mode(Colors.black54, BlendMode.dstIn),
                image: AssetImage(
                  'assets/images/pngtree-farmer-farm-farm-worker-hand-painted-png-image_476673.png',
                ),
                fit: BoxFit.cover,
              )),
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 20, top: 10, right: 20),
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(
                          bottom: 10,
                          top: 200,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => JobSeekerPage()));
                              },
                              // () {
                              //   Navigator.push(
                              //       context,
                              //       MaterialPageRoute(
                              //           builder: (context) => JobSeekerPage()));
                              // },
                              child: Container(
                                padding: EdgeInsets.only(left: 70, right: 2),
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
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Center(
                                      child: Text(
                                        'JOB SEEKER',
                                        style: TextStyle(
                                            fontFamily: 'Montserrat',
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.grey[700]),
                                      ),
                                    ),
                                    Spacer(),
                                    IconButton(
                                      icon: Icon(
                                        Icons.info_outline,
                                        color: Colors.grey[400],
                                      ),
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    JobSeekerInfo()));
                                      },
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            InkWell(
                              onTap: () {
                                _showModalbottomsheet2(context);
                              },
                              //  () {
                              //   Navigator.push(
                              //       context,
                              //       MaterialPageRoute(
                              //           builder: (context) =>
                              //               JobRecruiterPage()));
                              // },
                              child: Container(
                                  padding: EdgeInsets.only(left: 60, right: 2),
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
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Row(
                                    children: <Widget>[
                                      Center(
                                          child: Text(
                                        'JOB RECRUITER',
                                        style: TextStyle(
                                            fontFamily: 'Montserrat',
                                            fontSize: 22,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.grey[700]),
                                      )),
                                      Spacer(),
                                      IconButton(
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      JobRecruiterinfo()));
                                        },
                                        icon: Icon(
                                          Icons.info_outline,
                                          color: Colors.grey[400],
                                        ),
                                      )
                                    ],
                                  )),
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

  choiceAction(String choice) {
    if (choice == Constants.About) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => JobRecruiterinfo()));
    } else if (choice == Constants.Settings) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => JobSeekerInfo()));
    } else if (choice == Constants.SignOut) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => LoginPage()));
    }
  }
}
