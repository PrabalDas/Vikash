import 'package:flutter/material.dart';

class JobPageofJobSeeker extends StatefulWidget {
  @override
  _LocationPageofJobSeekerState createState() =>
      _LocationPageofJobSeekerState();
}

class _LocationPageofJobSeekerState extends State<JobPageofJobSeeker> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
              child: Container(decoration: BoxDecoration( gradient: LinearGradient(
                  colors: [Color(0xfff8f8f8), Color(0xffeafbea)])),
            padding: EdgeInsets.only(top: 9),
            child: Column(
              children: <Widget>[
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(onPressed: (){Navigator.pop(context);},
                icon: Icon(Icons.arrow_back_ios),
              ),
              IconButton(
                icon: Icon(Icons.more_horiz),
              )
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                'Vikash Jobs',
                style: TextStyle(
                    fontSize: 25,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Categories',
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                    color: Colors.deepOrangeAccent),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 25,
        ),
        SingleChildScrollView(
                child: Column(
              children: <Widget>[
                Container(padding: EdgeInsets.only(top: 20,bottom: 1),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(height: 150,width: 150,
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(gradient: LinearGradient(
                  colors: [Color(0xffec9b3b), Color(0xfff7be16)]),
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(20)),
                      ), Container(height: 150,width: 150,
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(gradient: LinearGradient(
                  colors: [Color(0xffec9b3b), Color(0xfff7be16)]),
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(20)),
                      )
                    ],
                  ),
                ),
                 Container(padding: EdgeInsets.only(top: 20,bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(height: 150,width: 150,
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(gradient: LinearGradient(
                  colors: [Color(0xffec9b3b), Color(0xfff7be16)]),
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(20)),
                      ), Container(height: 150,width: 150,
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(gradient: LinearGradient(
                  colors: [Color(0xffec9b3b), Color(0xfff7be16)]),
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(20)),
                      )
                    ],
                  ),
                ),
                 Container(padding: EdgeInsets.only(top: 20,bottom: 1),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(height: 150,width: 150,
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(gradient: LinearGradient(
                  colors: [Color(0xffec9b3b), Color(0xfff7be16)]),
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(20)),
                      ), Container(height: 150,width: 150,
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(gradient: LinearGradient(
                  colors: [Color(0xffec9b3b), Color(0xfff7be16)]),
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(20)),
                      )
                    ],
                  ),
                ),
              ],
            ),
        )
              ],
            ),
          ),
      ),
    );
  }
}
