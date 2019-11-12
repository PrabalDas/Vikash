import 'package:flutter/material.dart';
import 'package:vikash/animation/fadeAnimation.dart';
import 'package:vikash/pages/JobDescriptionpage.dart';

class LocationPageofJobSeeker extends StatefulWidget {
  @override
  _LocationPageofJobSeekerState createState() =>
      _LocationPageofJobSeekerState();
}

class _LocationPageofJobSeekerState extends State<LocationPageofJobSeeker> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: FadeAnimation(
          1.5,
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0xfff8f8f8), Color(0xffeafbea)])),
            padding: EdgeInsets.only(top: 9),
            child: Column(
              children: <Widget>[
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
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
                  child: FadeAnimation(
                    1.5,
                    Column(
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(),
                          padding: EdgeInsets.only(top: 20, bottom: 1),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              JobDescription()));
                                },
                                child: Container(
                                  height: 150,
                                  width: 150,
                                  child: Center(
                                      child: Text(
                                    "Tractor Driver",
                                    style: TextStyle(
                                        fontSize: 19,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Montserrat'),
                                  )),
                                  padding: EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          colorFilter: ColorFilter.mode(
                                              Colors.black45, BlendMode.dstIn),
                                          image: NetworkImage(
                                              'https://www.cafre.ac.uk/app/uploads/2016/11/Tractor-1.jpg'),
                                          fit: BoxFit.fill),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.black,
                                            blurRadius: 20,
                                            offset: Offset(0, 8))
                                      ],
                                      gradient: LinearGradient(colors: [
                                        Color(0xffec9b3b),
                                        Color(0xfff7be16)
                                      ]),
                                      border: Border.all(color: Colors.grey),
                                      borderRadius: BorderRadius.circular(20)),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              JobDescription()));
                                },
                                child: Container(
                                  child: Center(
                                      child: Text(
                                    "Plumber",
                                    style: TextStyle(
                                        fontSize: 19,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Montserrat'),
                                  )),
                                  height: 150,
                                  width: 150,
                                  padding: EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          colorFilter: ColorFilter.mode(
                                              Colors.black45, BlendMode.dstIn),
                                          image: NetworkImage(
                                              'https://aaacityplumbing.com/wp-content/uploads/2018/07/plumber-working.jpg'),
                                          fit: BoxFit.fill),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.black,
                                            blurRadius: 20,
                                            offset: Offset(0, 8))
                                      ],
                                      gradient: LinearGradient(colors: [
                                        Color(0xffec9b3b),
                                        Color(0xfff7be16)
                                      ]),
                                      border: Border.all(color: Colors.grey),
                                      borderRadius: BorderRadius.circular(20)),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 20, bottom: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              JobDescription()));
                                },
                                child: Container(
                                  child: Center(
                                      child: Text(
                                    "Electrician",
                                    style: TextStyle(
                                        fontSize: 19,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Montserrat'),
                                  )),
                                  height: 150,
                                  width: 150,
                                  padding: EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          colorFilter: ColorFilter.mode(
                                              Colors.black45, BlendMode.dstIn),
                                          image: NetworkImage(
                                              'https://y3j5m2z3.stackpathcdn.com/wp-content/uploads/2014/01/electricians_3061450_cropped.jpg'),
                                          fit: BoxFit.fill),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.black,
                                            blurRadius: 20,
                                            offset: Offset(0, 8))
                                      ],
                                      gradient: LinearGradient(colors: [
                                        Color(0xffec9b3b),
                                        Color(0xfff7be16)
                                      ]),
                                      border: Border.all(color: Colors.grey),
                                      borderRadius: BorderRadius.circular(20)),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              JobDescription()));
                                },
                                child: Container(
                                  child: Center(
                                      child: Text(
                                    "Mason Workers",
                                    style: TextStyle(
                                        fontSize: 19,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Montserrat'),
                                  )),
                                  height: 150,
                                  width: 150,
                                  padding: EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          colorFilter: ColorFilter.mode(
                                              Colors.black45, BlendMode.dstIn),
                                          image: NetworkImage(
                                              'https://thumbs.dreamstime.com/b/construction-mason-worker-bricklayer-24656579.jpg'),
                                          fit: BoxFit.fill),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.black,
                                            blurRadius: 20,
                                            offset: Offset(0, 8))
                                      ],
                                      gradient: LinearGradient(colors: [
                                        Color(0xffec9b3b),
                                        Color(0xfff7be16)
                                      ]),
                                      border: Border.all(color: Colors.grey),
                                      borderRadius: BorderRadius.circular(20)),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 20, bottom: 1),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              JobDescription()));
                                },
                                child: Container(
                                  child: Center(
                                      child: Text(
                                    "Sweepers",
                                    style: TextStyle(
                                        fontSize: 19,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Montserrat'),
                                  )),
                                  height: 150,
                                  width: 150,
                                  padding: EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          colorFilter: ColorFilter.mode(
                                              Colors.black45, BlendMode.dstIn),
                                          image: NetworkImage(
                                              'https://c7.alamy.com/comp/B673FA/street-sweeper-outside-the-forbidden-city-beijing-B673FA.jpg'),
                                          fit: BoxFit.fill),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.black,
                                            blurRadius: 20,
                                            offset: Offset(0, 8))
                                      ],
                                      gradient: LinearGradient(colors: [
                                        Color(0xffec9b3b),
                                        Color(0xfff7be16)
                                      ]),
                                      border: Border.all(color: Colors.grey),
                                      borderRadius: BorderRadius.circular(20)),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              JobDescription()));
                                },
                                child: Container(
                                  child: Center(
                                      child: Text(
                                    "Milkman",
                                    style: TextStyle(
                                        fontSize: 19,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Montserrat'),
                                  )),
                                  height: 150,
                                  width: 150,
                                  padding: EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          colorFilter: ColorFilter.mode(
                                              Colors.black45, BlendMode.dstIn),
                                          image: NetworkImage(
                                              'https://c7.alamy.com/comp/AY3JRN/a-milkman-delivering-milk-by-motorbike-in-india-AY3JRN.jpg'),
                                          fit: BoxFit.fill),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.black,
                                            blurRadius: 20,
                                            offset: Offset(0, 8))
                                      ],
                                      gradient: LinearGradient(colors: [
                                        Color(0xffec9b3b),
                                        Color(0xfff7be16)
                                      ]),
                                      border: Border.all(color: Colors.grey),
                                      borderRadius: BorderRadius.circular(20)),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
