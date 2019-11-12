import 'package:flutter/material.dart';

import 'ApplyPage.dart';

class JobDescription extends StatefulWidget {
  @override
  _JobDescriptionState createState() => _JobDescriptionState();
}

class _JobDescriptionState extends State<JobDescription> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
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
          Icon(
            Icons.more_horiz,
            color: Colors.grey,
          )
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient:
                LinearGradient(colors: [Color(0xfff8f8f8), Color(0xffeafbea)])),
        padding: EdgeInsets.all(18),
        child: Column(
          children: <Widget>[
            Center(
                child: Text('Details',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ))),
            SizedBox(
              height: 12,
            ),
            Container(
              child: Text(
                'Years of experience:',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Montserrat',
                    fontSize: 20,
                    color: Colors.blueAccent),
              ),
            ),
            SizedBox(height: 9),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(20)),
              padding: EdgeInsets.all(8),
              child: Text(
                '0-2 Years',
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 20,
                    color: Colors.black),
              ),
            ),
            SizedBox(
              height: 32,
            ),
            Container(
              child: Text(
                "Location:",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Montserrat',
                    fontSize: 20,
                    color: Colors.blueAccent),
              ),
            ),
            SizedBox(height: 9),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(20)),
              padding: EdgeInsets.all(8),
              child: Text(
                'Near Bartahati Road,Barpeta-32',
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 15,
                    color: Colors.black),
              ),
            ),
            SizedBox(
              height: 32,
            ),
            Container(
              child: Text(
                'Description:',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Montserrat',
                    fontSize: 20,
                    color: Colors.blueAccent),
              ),
            ),
            SizedBox(
              height: 9,
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(20)),
              padding: EdgeInsets.all(12),
              child: Text(
                'Attend the Bi Weekly & review meetings. In the Bi-weekly training, he shall transmit and also check the catlogs the feedback on technology messages, input requirements and progress of achievements on the targets given for crop production, input management including farm credit and others.',
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 15,
                    color: Colors.black),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            RaisedButton(color: Colors.lightBlue,padding: EdgeInsets.all(8),onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>ApplyPage()));},
              textColor: Colors.white,
              elevation: 19,
              child: Text(
                'Proceed',
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 15,
                    color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
