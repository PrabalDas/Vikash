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
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 120,
            padding: EdgeInsets.only(top: 20, right: 20, left: 20, bottom: 10),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.grey[200]
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search, color: Colors.grey,),
                        border: InputBorder.none,
                        hintStyle: TextStyle(color: Colors.grey),
                        hintText: "Search",
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 20,),
                Icon(Icons.filter_list, color: Colors.grey[800], size: 30,)
              ],
            ),),
            Expanded(
              
            child: SingleChildScrollView(
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
                        Text("Stories", style: TextStyle(color: Colors.grey[900], fontWeight: FontWeight.bold, fontSize: 22, letterSpacing: 1),),
                        Text("See Archive"),
                      ],
                    ), 
                   SizedBox(height: 20,),
                   Container(
                      height: 150,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          // makeStory(
                          //   storyImage: 'assets/images/story/story-1.jpg', 
                          //   userImage: 'assets/images/aatik-tasneem.jpg', 
                          //   userName: 'Aatik Tasneem'
                          // ),
                          // makeStory(
                          //   storyImage: 'assets/images/story/story-3.jpg', 
                          //   userImage: 'assets/images/aiony-haust.jpg', 
                          //   userName: 'Aiony Haust'
                          // ),
                          // makeStory(
                          //   storyImage: 'assets/images/story/story-4.jpg', 
                          //   userImage: 'assets/images/averie-woodard.jpg', 
                          //   userName: 'Averie Woodard'
                          // ),
                          // makeStory(
                          //   storyImage: 'assets/images/story/story-5.jpg', 
                          //   userImage: 'assets/images/azamat-zhanisov.jpg', 
                          //   userName: 'Azamat Zhanisov'
                          // ),
                        ],
                      ),
                    ),])))
            //         SizedBox(height: 40,),
            //         makeFeed(
            //           userName: 'Aiony Haust',
            //           userImage: 'assets/images/aiony-haust.jpg',
            //           feedTime: '1 hr ago',
            //           feedText: 'All the Lorem Ipsum generators on the Internet tend to repeat predefined.',
            //           feedImage: 'assets/images/story/story-2.jpg'
            //         ),
            //         makeFeed(
            //           userName: 'Azamat Zhanisov', 
            //           userImage: 'assets/images/azamat-zhanisov.jpg', 
            //           feedTime: '3 mins ago', 
            //           feedText: "All the Lorem Ipsum generators on the Internet tend to repeat predefined.All the Lorem Ipsum generators on the Internet tend to repeat predefined.All the Lorem Ipsum generators on the Internet tend to repeat predefined.", 
            //           feedImage: ''
            //         ),
            //         makeFeed(
            //           userName: 'Azamat Zhanisov', 
            //           userImage: 'assets/images/azamat-zhanisov.jpg', 
            //           feedTime: '3 mins ago', 
            //           feedText: "All the Lorem Ipsum generators on the Internet tend to repeat predefined.", 
            //           feedImage: 'assets/images/averie-woodard.jpg'
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            )
        ],
      ),
    );
  }
}
