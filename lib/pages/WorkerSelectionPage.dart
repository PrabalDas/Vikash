import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WorkerSelectionPage extends StatefulWidget {
  @override
  _WorkerSelectionPageState createState() => _WorkerSelectionPageState();
}

class _WorkerSelectionPageState extends State<WorkerSelectionPage> {
  int _counter1 = 0;
  int _counter2 = 0;
  int _counter3 = 0;
  int _counter4 = 0;
  int _counter5 = 0;
  int _counter6 = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffEAE5DF),
          elevation: 0,
        ),
        body: Container(
          margin: EdgeInsets.all(0),
          padding: EdgeInsets.only(top: 20),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xffEAE5DF), Color(0xffC2D189)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight)),
          child: Container(
            padding: EdgeInsets.all(0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Center(
                  child: Text(
                    'What type of Workers you want?',
                    style: GoogleFonts.bioRhyme(fontSize: 22),
                  ),
                ),
                SizedBox(
                  height: 19,
                ),
                Container(
                  padding: EdgeInsets.only(top: 10,left: 20,right: 20,),
                  height: MediaQuery.of(context).size.height / 1.6,
                  width: MediaQuery.of(context).size.width / 1.1,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xff387456).withOpacity(.1)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Plumber',
                            style: TextStyle(
                                fontFamily: 'Montserrat', fontSize: 25),
                          ),
                          Container(
                            width: 150,
                            height: 50,
                            decoration: BoxDecoration(
                                color: Color(0xffC2D189).withOpacity(.5),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(17))),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      _counter1--;
                                    });
                                  },
                                  child: Container(
                                    height: 35,
                                    width: 35,
                                    decoration: BoxDecoration(
                                        color: Colors.green.withOpacity(.4),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(7))),
                                    child: Icon(
                                      Icons.remove,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                  ),
                                ),
                                Text(
                                  '$_counter1',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 22),
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      _counter1++;
                                    });
                                  },
                                  child: Container(
                                    height: 35,
                                    width: 35,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(7))),
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.green.withOpacity(.4),
                                      size: 20,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                       Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Tractor Drivers',
                            style: TextStyle(
                                fontFamily: 'Montserrat', fontSize: 25),
                          ),
                          Container(
                            width: 150,
                            height: 50,
                            decoration: BoxDecoration(
                                color: Color(0xffC2D189).withOpacity(.5),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(17))),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      _counter2--;
                                    });
                                  },
                                  child: Container(
                                    height: 35,
                                    width: 35,
                                    decoration: BoxDecoration(
                                        color: Colors.green.withOpacity(.4),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(7))),
                                    child: Icon(
                                      Icons.remove,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                  ),
                                ),
                                Text(
                                  '$_counter2',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 22),
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      _counter2++;
                                    });
                                  },
                                  child: Container(
                                    height: 35,
                                    width: 35,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(7))),
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.green.withOpacity(.4),
                                      size: 20,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                       Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Electrician',
                            style: TextStyle(
                                fontFamily: 'Montserrat', fontSize: 25),
                          ),
                          Container(
                            width: 150,
                            height: 50,
                            decoration: BoxDecoration(
                                color: Color(0xffC2D189).withOpacity(.5),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(17))),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      _counter3--;
                                    });
                                  },
                                  child: Container(
                                    height: 35,
                                    width: 35,
                                    decoration: BoxDecoration(
                                        color: Colors.green.withOpacity(.4),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(7))),
                                    child: Icon(
                                      Icons.remove,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                  ),
                                ),
                                Text(
                                  '$_counter3',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 22),
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      _counter3++;
                                    });
                                  },
                                  child: Container(
                                    height: 35,
                                    width: 35,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(7))),
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.green.withOpacity(.4),
                                      size: 20,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                       Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Mason Workers',
                            style: TextStyle(
                                fontFamily: 'Montserrat', fontSize: 25),
                          ),
                          Container(
                            width: 150,
                            height: 50,
                            decoration: BoxDecoration(
                                color: Color(0xffC2D189).withOpacity(.5),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(17))),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      _counter4--;
                                    });
                                  },
                                  child: Container(
                                    height: 35,
                                    width: 35,
                                    decoration: BoxDecoration(
                                        color: Colors.green.withOpacity(.4),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(7))),
                                    child: Icon(
                                      Icons.remove,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                  ),
                                ),
                                Text(
                                  '$_counter4',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 22),
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      _counter4++;
                                    });
                                  },
                                  child: Container(
                                    height: 35,
                                    width: 35,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(7))),
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.green.withOpacity(.4),
                                      size: 20,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                       Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Sweepers',
                            style: TextStyle(
                                fontFamily: 'Montserrat', fontSize: 25),
                          ),
                          Container(
                            width: 150,
                            height: 50,
                            decoration: BoxDecoration(
                                color: Color(0xffC2D189).withOpacity(.5),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(17))),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      _counter5--;
                                    });
                                  },
                                  child: Container(
                                    height: 35,
                                    width: 35,
                                    decoration: BoxDecoration(
                                        color: Colors.green.withOpacity(.4),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(7))),
                                    child: Icon(
                                      Icons.remove,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                  ),
                                ),
                                Text(
                                  '$_counter5',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 22),
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      _counter5++;
                                    });
                                  },
                                  child: Container(
                                    height: 35,
                                    width: 35,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(7))),
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.green.withOpacity(.4),
                                      size: 20,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                       Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Milkman',
                            style: TextStyle(
                                fontFamily: 'Montserrat', fontSize: 25),
                          ),
                          Container(
                            width: 150,
                            height: 50,
                            decoration: BoxDecoration(
                                color: Color(0xffC2D189).withOpacity(.5),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(17))),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      _counter6--;
                                    });
                                  },
                                  child: Container(
                                    height: 35,
                                    width: 35,
                                    decoration: BoxDecoration(
                                        color: Colors.green.withOpacity(.4),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(7))),
                                    child: Icon(
                                      Icons.remove,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                  ),
                                ),
                                Text(
                                  '$_counter6',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 22),
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      _counter6++;
                                    });
                                  },
                                  child: Container(
                                    height: 35,
                                    width: 35,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(7))),
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.green.withOpacity(.4),
                                      size: 20,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),

                    ],
                  ),
                ),
                SizedBox(height: 50,),
                Container(
                  height: 65,
                  width: 200,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            spreadRadius: 1,
                            color: Color(0xff387456),
                            blurRadius: 90,
                            offset: Offset(10, 40))
                      ],
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white70),
                  child: Row(
                    
                    children: <Widget>[
                      Icon(
                        Icons.navigate_next,
                        color: Color(0xff387456),
                      ),
                      SizedBox(width: 20,),
                      Text(
                        'Proceed',
                        style: GoogleFonts.muli(
                            fontSize: 25, textStyle: TextStyle()),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
