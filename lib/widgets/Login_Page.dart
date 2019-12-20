import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vikash/animation/fadeAnimation.dart';
import 'package:vikash/pages/SelectionPage.dart';

import 'dart:async';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  FocusNode _focusNode;
  TextEditingController _textFieldController;

  @override
  Widget build(BuildContext context) {
    String phoneNo;
    String smsCode;
    String verificationId;
    FirebaseUser user;

    Future<bool> smsCodeDialog(BuildContext context) {
      return showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
              title: Text('Enter Sms Code'),
              content: TextField(
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  smsCode = value;
                },
              ),
              contentPadding: EdgeInsets.all(10),
              actions: <Widget>[
                FlatButton(
                    child: Text('Login'),
                    onPressed: () async {
                      final AuthCredential credential =
                          PhoneAuthProvider.getCredential(
                        verificationId: verificationId,
                        smsCode: smsCode,
                      );
                      user = await FirebaseAuth.instance
                          .signInWithCredential(credential)
                          .then((user) {
                        if (user != null) {
                          Navigator.of(context).pop();
                          print("Successful verification user is: $user");
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => (SelectionPage())));
                        } else {
                          print("Failed verification");
                        }
                      }).catchError((e) {
                        print("error: $e");
                      });
                    })
                    ]);
        },
      );
    }

    Future<void> verifyPhone() async {
      final PhoneCodeAutoRetrievalTimeout autoRetrieve = (String verId) {
        verificationId = verId;
      };

      final PhoneCodeSent smsCodeSent = (String verId, [int forceCodeResend]) {
        verificationId = verId;
        smsCodeDialog(context).then((value) {
          print('Signed In');
        });
      };
      final PhoneVerificationCompleted verifiedSucess = (user) {
        print('verified');
      };
      final PhoneVerificationFailed verifiFailed = (AuthException exception) {
        print('${exception.message}');
        return showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                elevation: 8,
                title: Center(
                    child: Text(
                  "Verification Error. Please check your Phone no",
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 15,
                      fontFamily: 'Montserrat'),
                )),
              );
            });
      };

      await FirebaseAuth.instance.verifyPhoneNumber(
        phoneNumber: phoneNo,
        codeAutoRetrievalTimeout: autoRetrieve,
        codeSent: smsCodeSent,
        timeout: const Duration(seconds: 5),
        verificationCompleted: verifiedSucess,
        verificationFailed: verifiFailed,
      );
    }

    return Scaffold(
      backgroundColor: Color(0xffeafbea),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          colorFilter:
              ColorFilter.mode(Colors.black.withOpacity(.2), BlendMode.dstIn),
          image: AssetImage(
            'assets/images/pngtree-farmer-farm-farm-worker-hand-painted-png-image_4766s73.png',
          ),
          fit: BoxFit.cover,
        )),
        padding: EdgeInsets.all(30),
        child: FadeAnimation(
          1.2,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FadeAnimation(
                  1.2,
                  Text(
                    "Enter Phone Number",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
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
                            onChanged: (value) {
                              phoneNo = value;
                            },
                            keyboardType: TextInputType.phone,
                            controller: _textFieldController,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintStyle: TextStyle(
                                    color: Colors.grey.withOpacity(.8)),
                                hintText:
                                    "Enter Phone number(include CountryCode)",
                                labelStyle:
                                    TextStyle(fontFamily: 'Montserrat')),
                          ),
                        ),
                        // Container(
                        //   decoration: BoxDecoration(),
                        //   child: TextField(obscureText: true,
                        //     decoration: InputDecoration(
                        //         border: InputBorder.none,
                        //         hintStyle:
                        //             TextStyle(color: Colors.grey.withOpacity(.8)),
                        //         hintText: "Password"),
                        //   ),
                        // ),
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
                      onTap: verifyPhone,
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
                          "Verify",
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
