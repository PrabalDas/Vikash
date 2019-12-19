// import 'dart:js';

// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'dart:async';
// import 'dart:convert';

// import 'package:vikash/pages/SelectionPage.dart';

// String phoneNo;
// String smsCode;
// String verificationId;
// FirebaseUser user;

// Future<bool> smsCodeDialog(BuildContext context) {


//   Future<void> verifyPhone() async {
//     final PhoneCodeAutoRetrievalTimeout autoRetrieve = (String verId) {
//       verificationId = verId;
//     };

//     final PhoneCodeSent smsCodeSent = (String verId, [int forceCodeResend]) {
//       verificationId = verId;
//       smsCodeDialog(context).then((value) {
//         print('Signed In');
//       });
//     };
//     final PhoneVerificationCompleted verifiedSucess = (user) {
//       print('verified');
//     };
//     final PhoneVerificationFailed verifiFailed = (AuthException exception) {
//       print('${exception.message}');
//     };

//     await FirebaseAuth.instance.verifyPhoneNumber(
//       phoneNumber: phoneNo,
//       codeAutoRetrievalTimeout: autoRetrieve,
//       codeSent: smsCodeSent,
//       timeout: const Duration(seconds: 5),
//       verificationCompleted: verifiedSucess,
//       verificationFailed: verifiFailed,
//     );
//   }









//   return showDialog(
//     context: context,
//     barrierDismissible: false,
//     builder: (BuildContext context) {
//       return AlertDialog(
//           title: Text('Enter Sms Code'),
//           content: TextField(
//             onChanged: (value) {
//               smsCode = value;
//             },
//           ),
//           contentPadding: EdgeInsets.all(10),
//           actions: <Widget>[
//             FlatButton(
//                 child: Text('Done'),
//                 onPressed: () async {
//                   final AuthCredential credential =
//                       PhoneAuthProvider.getCredential(
//                     verificationId: verificationId,
//                     smsCode: smsCode,
//                   );
//                   user = await FirebaseAuth.instance
//                       .signInWithCredential(credential)
//                       .then((user) {
//                     if (user != null) {
//                       Navigator.of(context).pop();
//                       print("Successful verification user is: $user");
//                       Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (context) => (SelectionPage())));
//                     } else {
//                       print("Failed verification");
//                     }
//                   }).catchError((e) {
//                     print("error: $e");
//                   });
//                 })
//           ]);
//     },


//     );

// }
