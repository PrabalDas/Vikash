import 'package:flutter/material.dart';
import 'package:vikash/animation/fadeAnimation.dart';

Color FirstColor = Color(0xff801336);
Color SecondColor = Color(0xffc72c41);

class SplashScreenPage extends StatefulWidget {
  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xfff8f8f8), Color(0xffeafbea)])),
          child: Column(
            
             crossAxisAlignment: CrossAxisAlignment.center,
              
              children: <Widget>[
                FadeAnimation(
                                 1.2,Container(
                    height: 279,
                    child: Column(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Center(
                          child: Text('Vikash',
                              style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 39,
                                fontWeight: FontWeight.bold,
                              )),
                        ),Center( child: Text('Reaching Millions',
                              style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 20,
                                fontWeight: FontWeight.normal,fontStyle: FontStyle.italic
                              )),)
                      ],
                    ),
                  ),
                ),
                FadeAnimation(
                                1.5, Container(
                    child: Center(
                      child: Image.asset(
                        'assets/images/—Pngtree—nail nail tool farmer farm_3921664.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
              ]),
        )
      ],
    ));
  }
}
