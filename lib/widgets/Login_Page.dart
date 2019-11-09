import 'package:flutter/material.dart';
import 'package:vikash/animation/fadeAnimation.dart';
import 'package:vikash/pages/SelectionPage.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffeafbea),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(colorFilter: ColorFilter.mode(Colors.black.withOpacity(.2), BlendMode.dstIn),
                image: AssetImage(
                    'assets/images/pngtree-farmer-farm-farm-worker-hand-painted-png-image_4766s73.png',),
                fit: BoxFit.cover,)),
        padding: EdgeInsets.all(30),
        child: FadeAnimation(
                  1.2, Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FadeAnimation(
                  1.2,
                  Text(
                    "Login",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Montserrat'),
                  )),
              SizedBox(
                height: 30,
              ),
              FadeAnimation(
                  1.5,
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black,
                              blurRadius: 41,
                              offset: Offset(0, 10))
                        ],
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white),
                    child: Column(
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(color: Colors.grey[300]))),
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintStyle:
                                    TextStyle(color: Colors.grey.withOpacity(.8)),
                                hintText: "Email or Phone number",
                                labelStyle: TextStyle(fontFamily: 'Montserrat')),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(),
                          child: TextField(obscureText: true,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintStyle:
                                    TextStyle(color: Colors.grey.withOpacity(.8)),
                                hintText: "Password"),
                          ),
                        ),
                      ],
                    ),
                  )),
              SizedBox(
                height: 40,
              ),
              FadeAnimation(
                  1.8,
                  Center(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SelectionPage()));
                      },
                      child: Container(
                        width: 120,
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black,
                                  blurRadius: 31,
                                  offset: Offset(0, 10))
                            ],
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.blue[800]),
                        child: Center(
                            child: Text(
                          "Login",
                          style: TextStyle(
                              color: Colors.white.withOpacity(.7),
                              fontFamily: "Montserrat",
                              fontSize: 19),
                        )),
                      ),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
