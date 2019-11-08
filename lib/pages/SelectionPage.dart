import 'package:flutter/material.dart';
import 'package:vikash/animation/fadeAnimation.dart';
import 'package:vikash/pages/JobRecruiterPage.dart';

class SelectionPage extends StatefulWidget {
  @override
  _SelectionPageState createState() => _SelectionPageState();
}

class _SelectionPageState extends State<SelectionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff352f44),
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
        ),actions: <Widget>[IconButton(icon: Icon(Icons.more_horiz,color: Colors.grey,),)],
      ),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 20, top: 90),
            child: Text(
              'I WANT TO WORK AS A...',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontFamily: 'Montserrat',
                  fontStyle: FontStyle.italic),
            ),
          ),
          FadeAnimation(
            1.5,
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(bottom: 30, top: 50, left: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>SelectionPage()));},
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
                        InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>JobRecruiterPage()));},
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
    );
  }
}
