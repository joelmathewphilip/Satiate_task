import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:satiate_task/Constants.dart';
import 'package:satiate_task/forgot_password/change_password.dart';

class Enter_Code extends StatefulWidget {
  @override
  _Enter_CodeState createState() => _Enter_CodeState();
}

class _Enter_CodeState extends State<Enter_Code> {
  double resized_width;
  double resized_height;
  @override
  Widget alert_box(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            child: Container(
              height: 170,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    height: 60,
                    padding: EdgeInsets.all(10),
                    child: Center(
                        child: Text(
                      'Password Reset Email Sent',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 17),
                    )),
                    color: Constants_Class().primary_color_code,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Center(
                        child: Text(
                      'An Email Has Been Send. Follow The Instructions To Reset Your Password',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 15),
                    )),
                  )
                ],
              ),
            ),
          );
        });
  }

  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      alert_box(context);
    });
  }

  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    resized_width = (mediaQueryData.size.width / 360);
    resized_height = (mediaQueryData.size.height / 640);
    return Scaffold(
      backgroundColor: Constants_Class().primary_color_code,
      body: Column(
        children: [
          Container(
            height: resized_height * 100,
            width: double.infinity,

            child: Align(
                alignment: Alignment(0, (1 / resized_height) * 0.40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: (resized_width) * 5,
                    ),
                    IconButton(
                      icon: Icon(Icons.keyboard_backspace_sharp),
                      color: Colors.white,
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                    SizedBox(
                      width: (resized_width) * 10,
                    ),
                    Text(
                      'Enter Verification Code',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 23,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                )),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.vertical(top: Radius.circular(30.0)),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0.0, 1.0), //(x,y)
                    blurRadius: 5.0,
                  ),
                ],
              ),
              padding: EdgeInsets.fromLTRB(resized_width * 15,resized_height*  20, resized_width* 15, resized_height* 15),
              child: Container(
                //height: double.infinity,
                width: mediaQueryData.size.width - 15,
                color: Color.fromRGBO(243, 243, 243, 1),
                padding: EdgeInsets.fromLTRB(resized_width * 10,resized_height*  20,resized_width *  10, resized_height* 20),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Center(
                          child: Image.asset(
                        'assets/final_assets/1_5_verification.png',
                        scale: 2,
                      )),
                      Container(
                        color: Colors.white,
                        padding: EdgeInsets.all(10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                'Please Enter The Code You Received In Your Email to Reset Your Password',
                                textAlign: TextAlign.center,
                              ),
                            ),
                            SizedBox(
                              height: resized_height * 10,
                            ),
                            Card(
                              color: Colors.white60,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Row(
                                  children: <Widget>[
                                    SizedBox(
                                      width: resized_width * 13,
                                    ),
                                    Expanded(
                                      child: TextField(
                                        decoration: InputDecoration(
                                            border: InputBorder.none,
                                            hintText: 'Enter 6 digit Code'),
                                        onChanged: (text) {
                                          print("helli");
                                        },
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: resized_height * 10,
                            ),
                            GestureDetector(
                                onTap: () {
                                  alert_box(context);
                                },
                                child: Text(
                                  'Resend Code',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                      color: Constants_Class()
                                          .primary_color_code,
                                      fontWeight: FontWeight.bold),
                                )),
                            SizedBox(
                              height: resized_height * 20,
                            ),
                            Center(
                              child: FlatButton(
                                minWidth:  (resized_width) * 230,
                                height: (resized_height) * 40,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                color: Constants_Class().primary_color_code,
                                onPressed: () {
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Change_Password()),
                                  );
                                },
                                child: Center(
                                    child: Text(
                                  'Send',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                )),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
