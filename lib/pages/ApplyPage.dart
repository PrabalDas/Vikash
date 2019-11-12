import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ApplyPage extends StatefulWidget {
  @override
  _ApplyPageState createState() => _ApplyPageState();
}

class _ApplyPageState extends State<ApplyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white60,elevation: 0,
        leading: IconButton(onPressed: (){onPressed: Navigator.pop(context);},
          icon: Icon(
            Icons.arrow_back_ios,
          ),
          color: Colors.grey,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 40, left: 11),
            child: Text(
              'What is your expected salary?',
              style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
                contentPadding: EdgeInsets.all(17),
                border: OutlineInputBorder(),
                hintText: 'Enter close figure',
                hintStyle: TextStyle(
                  fontWeight: FontWeight.w300,
                  color: Colors.grey,
                )),
          ),
          SizedBox(
            height: 30,
          ),
          RaisedButton(
            color: Colors.redAccent,
            elevation: 21,
            onPressed: () {},
            padding: EdgeInsets.all(16),
            child: Text(
              'Apply for this Job',
              style: TextStyle(
                  color: Colors.white, fontFamily: 'Montserrat', fontSize: 17),
            ),
          )
        ],
      ),
    );
  }
}
