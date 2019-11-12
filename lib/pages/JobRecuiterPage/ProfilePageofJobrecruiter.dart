import 'package:flutter/material.dart';
import 'package:vikash/animation/fadeAnimation.dart';

class ProfilePageofJobrecruiter extends StatefulWidget {
  @override
  _ProfilePageofJobrecruiterState createState() =>
      _ProfilePageofJobrecruiterState();
}

class _ProfilePageofJobrecruiterState extends State<ProfilePageofJobrecruiter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: new Stack(
      children: <Widget>[
        ClipPath(
          child: Container(color: Colors.teal.withOpacity(0.2)),
          clipper: getClipper(),
        ),
        Positioned(
          top: 15,
          left: 1,
          right: 1,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.arrow_back_ios),
                color: Colors.grey,
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              IconButton(
                icon: Icon(Icons.more_horiz),
                color: Colors.grey,
              )
            ],
          ),
        ),
        Positioned(
            width: 350.0,
            top: MediaQuery.of(context).size.height / 5,
            child: Column(
              children: <Widget>[
                FadeAnimation(
                                  1, Container(
                      width: 150.0,
                      height: 150.0,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://previews.123rf.com/images/kadettmann/kadettmann1501/kadettmann150100129/36165349-passport-picture-businesswoman-with-brown-hair.jpg'),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.all(Radius.circular(75.0)),
                          boxShadow: [
                            BoxShadow(blurRadius: 7.0, color: Colors.black)
                          ])),
                ),
                SizedBox(height: 20.0),
                Text(
                  'ABHILASHA',
                  style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Montserrat'),
                ),
                SizedBox(height: 7.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.work,
                      color: Colors.lightGreen,
                      size: 15,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Available For Work',
                      style: TextStyle(
                          fontSize: 17.0,
                          fontStyle: FontStyle.normal,
                          fontFamily: 'Montserrat',
                          color: Colors.lightGreen),
                    )
                  ],
                ),
                SizedBox(height: 25.0),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      FadeAnimation(
                                              1.5, Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Container(
                              height: 30,
                              width: 110,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(25)),
                              child: Center(
                                  child: Text(
                                'Public Speaking',
                                style: TextStyle(
                                    fontFamily: 'Montserrat', fontSize: 12),
                              )),
                            ),
                            Container(
                              height: 30,
                              width: 110,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(25)), child: Center(
                                  child: Text(
                                'Mentoring',
                                style: TextStyle(
                                    fontFamily: 'Montserrat', fontSize: 15),
                              ))
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      FadeAnimation(
                                            1.8,Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Container(
                              height: 30,
                              width: 110,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(25)), child: Center(
                                  child: Text(
                                'Networking',
                                style: TextStyle(
                                    fontFamily: 'Montserrat', fontSize: 18),
                              ))
                            ),
                            Container(
                              height: 30,
                              width: 110,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(25)), child: Center(
                                  child: Text(
                                'Delivering',
                                style: TextStyle(
                                    fontFamily: 'Montserrat', fontSize: 18),
                              ))
                            ),
                            Container(
                              height: 30,
                              width: 110,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(25)), child: Center(
                                  child: Text(
                                'Dristibutor',
                                style: TextStyle(
                                    fontFamily: 'Montserrat', fontSize: 18),
                              ))
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                    height: 30.0,
                    width: 95.0,
                    child: Material(
                      borderRadius: BorderRadius.circular(20.0),
                      shadowColor: Colors.greenAccent,
                      color: Colors.green,
                      elevation: 7.0,
                      child: GestureDetector(
                        onTap: () {},
                        child: Center(
                          child: Text(
                            'Update',
                            style: TextStyle(
                                color: Colors.white, fontFamily: 'Montserrat'),
                          ),
                        ),
                      ),
                    )),
                SizedBox(height: 25.0),
                Container(
                    height: 30.0,
                    width: 95.0,
                    child: Material(
                      borderRadius: BorderRadius.circular(20.0),
                      shadowColor: Colors.redAccent,
                      color: Colors.red,
                      elevation: 7.0,
                      child: GestureDetector(
                        onTap: () {Navigator.pop(context);},
                        child: Center(
                          child: Text(
                            'Log out',
                            style: TextStyle(
                                color: Colors.white, fontFamily: 'Montserrat'),
                          ),
                        ),
                      ),
                    ))
              ],
            ))
      ],
    ));
  }
}

class getClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();

    path.lineTo(0.0, size.height / 1.9);
    path.lineTo(size.width + 125, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}
