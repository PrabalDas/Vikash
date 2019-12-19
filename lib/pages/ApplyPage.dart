import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:page_transition/page_transition.dart';
import 'package:vikash/pages/JobDescriptionpage.dart';

class ApplyPage extends StatefulWidget {
  @override
  _ApplyPageState createState() => _ApplyPageState();
}

class _ApplyPageState extends State<ApplyPage> {
  var currentSelectedValue;
  var currentSelectedValue2;
  var currentSelectedValue3;
  List<String> _gendertype = <String>['Male', 'Female'];
  List<String> _documentVerify = <String>[
    'Aadhaar Card',
    'Driving License',
    'Passport',
    'Voter ID',
  ];
  List<String> _eduQualification = <String>[
    'Matriculation',
    'Higher Secondary',
    'Graduate'
  ];

  createAlertDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog( content: Icon(Icons.check_circle,color: Colors.green,size: 35,),contentPadding: EdgeInsets.all(5),
            title: Center(
              child: Text(
                'Success',
                style: TextStyle(fontFamily: 'Montserrat', fontSize: 20,color: Colors.green),
              ),
            ),
            actions: <Widget>[
              MaterialButton(onPressed: (){Navigator.of(context).pushReplacement(PageTransition(type: PageTransitionType.fade,child: JobDescription()));},
                elevation: 5,
                child: Text(
                  'Okay',
                  style: TextStyle(fontSize: 15),
                  textAlign: TextAlign.center,
                ),
              )
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white60,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
          ),
          color: Colors.grey,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Text('Fill the Details',
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 25,
                    fontWeight: FontWeight.bold)),
          ),
          SizedBox(
            height: 50,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: TextField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(20),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5)),
                          labelText: 'Name:',
                          hintText: 'Enter Full Name',
                          hintStyle: TextStyle(
                            fontWeight: FontWeight.w300,
                            color: Colors.grey,
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: FormField<String>(
                      builder: (FormFieldState<String> state) {
                        return InputDecorator(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0))),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton<String>(
                              hint: Text("Select Gender"),
                              value: currentSelectedValue,
                              isDense: true,
                              onChanged: (newValue) {
                                setState(() {
                                  currentSelectedValue = newValue;
                                });
                                print(currentSelectedValue);
                              },
                              items: _gendertype.map((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: FormField<String>(
                      builder: (FormFieldState<String> state) {
                        return InputDecorator(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0))),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton<String>(
                              hint: Text("Highest Education"),
                              value: currentSelectedValue2,
                              isDense: true,
                              onChanged: (newValue) {
                                setState(() {
                                  currentSelectedValue2 = newValue;
                                });
                                print(currentSelectedValue2);
                              },
                              items: _eduQualification.map((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: TextField(
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(20),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5)),
                          labelText: 'Phone Number',
                          hintText: 'Contact Number',
                          hintStyle: TextStyle(
                            fontWeight: FontWeight.w300,
                            color: Colors.grey,
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: TextField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(20),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5)),
                          labelText: 'Address',
                          hintText: 'Home Address',
                          hintStyle: TextStyle(
                            fontWeight: FontWeight.w300,
                            color: Colors.grey,
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: FormField<String>(
                      builder: (FormFieldState<String> state) {
                        return InputDecorator(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0))),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton<String>(
                              hint: Text("Select Document type"),
                              value: currentSelectedValue3,
                              isDense: true,
                              onChanged: (newValue) {
                                setState(() {
                                  currentSelectedValue3 = newValue;
                                });
                                print(currentSelectedValue3);
                              },
                              items: _documentVerify.map((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    padding: EdgeInsets.all(12),
                    onPressed: () {},
                    elevation: 5,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Icon(Icons.file_upload),
                        Text('Upload')
                      ],
                    ),
                  ),
                  // Container(
                  //   padding: EdgeInsets.only(top: 40, left: 11),
                  //   child: Text(
                  //     'What is your expected salary?',
                  //     style: TextStyle(
                  //         fontFamily: 'Montserrat',
                  //         fontSize: 20,
                  //         fontWeight: FontWeight.bold),
                  //   ),
                  // ),
                  SizedBox(
                    height: 30,
                  ),
                  // TextField(
                  //   keyboardType: TextInputType.number,
                  //   decoration: InputDecoration(
                  //       contentPadding: EdgeInsets.all(17),
                  //       border: OutlineInputBorder(),
                  //       hintText: 'Enter close figure',
                  //       hintStyle: TextStyle(
                  //         fontWeight: FontWeight.w300,
                  //         color: Colors.grey,
                  //       )),
                  // ),
                  SizedBox(
                    height: 30,
                  ),

                  RaisedButton(
                    color: Colors.redAccent,
                    elevation: 21,
                    onPressed: () {createAlertDialog(context);},
                    padding: EdgeInsets.all(16),
                    child: Text(
                      'Apply for this Job',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Montserrat',
                          fontSize: 17),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
