import 'package:flutter/material.dart';
import 'package:vikash/widgets/chat_details.dart';
import 'package:vikash/widgets/custom_heading.dart';
class MessagesPageofJobrecruiter extends StatefulWidget {
  @override
  _MessagesPageofJobrecruiterState createState() => _MessagesPageofJobrecruiterState();
}

class _MessagesPageofJobrecruiterState extends State<MessagesPageofJobrecruiter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body: SingleChildScrollView(physics: BouncingScrollPhysics(),
              child: Column(
          children: <Widget>[ Padding(
            padding: const EdgeInsets.all(22.0),
            child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Vikash Chats',style: TextStyle(fontFamily: "Montserrat",fontSize: 22,fontWeight: FontWeight.bold),),
                Text('Create Group',style: TextStyle(fontFamily: "Montserrat",fontSize: 18,),
                )],
              ),
          ),
            SingleChildScrollView(physics: BouncingScrollPhysics(),
              child: Column(
                children: <Widget>[
                  CustomHeading(
                    title: 'Groups',
                  ),
                  Container(
                    height: 150,
                    child: ListView.builder(
                      itemCount: 4,
                      shrinkWrap: false,
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      padding: EdgeInsets.all(15),
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          children: <Widget>[
                            Container(
                              width: 90,
                              height: 90,
                              margin: EdgeInsets.only(right: 15),
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomRight,
                                  stops: [0.1, 1],
                                  colors: [
                                    Color(0xFF8C68EC),
                                    Color(0xFF3E8DF3),
                                  ],
                                ),
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: Icon(
                                Icons.chat,
                                color: Colors.white,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 10),
                              child: Text('Group Name'),
                            )
                          ],
                        );
                      },
                    ),
                  ),
                  CustomHeading(
                    title: 'Direct Messages',
                  ),
                  ListView.builder(
                    itemCount: 3,
                    shrinkWrap: true,
                    physics: ClampingScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    itemBuilder: (BuildContext context, int index) {
                      return Material(
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ChatDetails(),
                              ),
                            );
                          },
                          child: Container(
                            margin: EdgeInsets.fromLTRB(15, 5, 15, 5),
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withAlpha(50),
                                  offset: Offset(0, 0),
                                  blurRadius: 5,
                                ),
                              ],
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.white,
                            ),
                            child: Row(
                              children: <Widget>[
                                Stack(
                                  children: <Widget>[
                                    Container(
                                      child: CircleAvatar(
                                        backgroundImage: NetworkImage(
                                            'https://i.pravatar.cc/11$index'),
                                        minRadius: 35,
                                        backgroundColor: Colors.grey[200],
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 10),
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        'Jocelyn',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: 5),
                                      ),
                                      Text(
                                        'Hi How are you ?',
                                        style: TextStyle(
                                          color: Color(0xff8C68EC),
                                          fontSize: 14,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: 5),
                                      ),
                                      Text(
                                        '11:00 AM',
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 12,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Column(
                                  children: <Widget>[
                                    Padding(
                                      padding: EdgeInsets.only(right: 15),
                                      child: Icon(
                                        Icons.chevron_right,
                                        size: 18,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}