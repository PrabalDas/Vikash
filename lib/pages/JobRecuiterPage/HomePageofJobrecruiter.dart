import 'package:flutter/material.dart';
import 'package:vikash/widgets/HomeScreenwidgets.dart';

class HomePageofJobrecruiter extends StatefulWidget {
  @override
  _HomePageofJobrecruiterState createState() => _HomePageofJobrecruiterState();
}

class _HomePageofJobrecruiterState extends State<HomePageofJobrecruiter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black.withAlpha(1).withOpacity(.1),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(),
                height: 59,
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        Center(
                            child: Text(
                          'Vikash Recruiters',
                          style:
                              TextStyle(fontFamily: 'Montserrat', fontSize: 25,color: Color(0xff76B7B5),),
                        )),
                        // Center(
                        //     child: Text(
                        //   'Recruiters',
                        //   style:
                        //       TextStyle(fontFamily: 'Montserrat', fontSize: 18,color: Colors.grey),
                        // )),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                height: 120,
                padding:
                    EdgeInsets.only(top: 5, right: 20, left: 20, bottom: 10),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.grey[200]),
                        child: TextField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.search,
                              color: Colors.grey,
                            ),
                            border: InputBorder.none,
                            hintStyle: TextStyle(color: Colors.grey),
                            hintText: "Search",
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Icon(
                      Icons.filter_list,
                      color: Colors.grey[800],
                      size: 30,
                    )
                  ],
                ),
              ),
              Expanded(
                  child: SingleChildScrollView(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      child: Padding(
                        padding: EdgeInsets.all(18),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              textBaseline: TextBaseline.alphabetic,
                              children: <Widget>[
                                Text(
                                  "Stories",
                                  style: TextStyle(
                                      color: Colors.grey[900],
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22,
                                      letterSpacing: 1),
                                ),
                                Text("See Archive"),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              child: Center(
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      height: 250,
                                      width: 390,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              colorFilter: ColorFilter.mode(
                                                  Colors.yellow[100],
                                                  BlendMode.dstIn),
                                              image: NetworkImage(
                                                  'https://images.unsplash.com/photo-1499529112087-3cb3b73cec95?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=967&q=80'),
                                              fit: BoxFit.fill),
                                          color: Colors.grey[200],
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              child: Center(
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      height: 250,
                                      width: 390,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              colorFilter: ColorFilter.mode(
                                                  Colors.yellow[100],
                                                  BlendMode.dstIn),
                                              image: NetworkImage(
                                                  'https://images.unsplash.com/photo-1557234195-bd9f290f0e4d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80'),
                                              fit: BoxFit.fill),
                                          color: Colors.grey[200],
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              child: Center(
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      height: 250,
                                      width: 390,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              colorFilter: ColorFilter.mode(
                                                  Colors.yellow[100],
                                                  BlendMode.dstIn),
                                              image: NetworkImage(
                                                  'https://images.unsplash.com/photo-1535048637252-3a8c40fa2172?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1190&q=80'),
                                              fit: BoxFit.fill),
                                          color: Colors.grey[200],
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      )))
            ]));
  }
}
