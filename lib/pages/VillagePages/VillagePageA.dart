

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../WorkerSelectionPage.dart';

class VillagePageA extends StatefulWidget {
  @override
  _VillagePageAState createState() => _VillagePageAState();
}

class _VillagePageAState extends State<VillagePageA> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            padding: EdgeInsets.only(top: 30),
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0xffEAE5DF), Color(0xffC2D189)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight)),
            child: Column(mainAxisSize: MainAxisSize.max, children: <Widget>[
              Container(
                alignment: Alignment.center,
                child: Text(
                  'Chilarai Village',
                  style: GoogleFonts.muli(
                      fontSize: 25,
                      textStyle: TextStyle(color: Color(0xff387456))),
                ),
              ),
              Divider(
                color: Color(0xff387456),
                endIndent: 50,
                indent: 50,
              ),
              Container(
                height: MediaQuery.of(context).size.height / 1.72,
                width: MediaQuery.of(context).size.width / 1.1,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xff387456).withOpacity(.1)),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.all(10),
                      height: 290,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  "http://paradise-kerala.com/blog/wp-content/uploads/2013/02/rowing-a-country-boat.jpg"),
                              fit: BoxFit.cover,
                              colorFilter: ColorFilter.mode(
                                  Color(0xff387456), BlendMode.dst)),
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white),
                    ),
                    Container(
                      padding: EdgeInsets.all(12),
                      margin: EdgeInsets.all(10),
                      height: 179,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xffEAE5DF),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Text(
                            'Population:',
                            style: GoogleFonts.muli(fontSize: 18),
                          ),
                          Text(
                            'Location:',
                            style: GoogleFonts.muli(fontSize: 18),
                          ),
                          Text(
                            'Village Head:',
                            style: GoogleFonts.muli(fontSize: 18),
                          ),
                          Text(
                            'Population:',
                            style: GoogleFonts.muli(fontSize: 18),
                          ),
                          Text(
                            'Population:',
                            style: GoogleFonts.muli(fontSize: 18),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 200,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => WorkerSelectionPage()));
                },
                child: Container(
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Icon(
                        Icons.radio_button_checked,
                        color: Color(0xff387456),
                      ),
                      Text(
                        'Select Workers',
                        style: GoogleFonts.muli(
                            fontSize: 22, textStyle: TextStyle()),
                      )
                    ],
                  ),
                ),
              )
            ])));
  }
}
