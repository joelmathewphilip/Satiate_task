import 'package:flutter/material.dart';
import 'package:satiate_task/Constants.dart';
import 'package:satiate_task/forgot_password/change_password.dart';
import 'package:satiate_task/forgot_password/enter_code.dart';
import 'package:satiate_task/sign_in.dart';

class Forgot_Password extends StatelessWidget {
  double resized_width;
  double resized_height;
  @override
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
                alignment: Alignment(0, 1 / resized_height * 0.40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: (mediaQueryData.size.width / 360) * 80,
                    ),
                    SizedBox(
                      width: (resized_width) * 20,
                    ),
                    Text(
                      'Forgot Password',
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
                borderRadius: BorderRadius.vertical(top: Radius.circular(30.0)),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0.0, 1.0), //(x,y)
                    blurRadius: 5.0,
                  ),
                ],
              ),
              padding: EdgeInsets.fromLTRB(resized_width * 15,
                  resized_height * 10, resized_width * 15, resized_height * 15),
              child: Container(
                //height: double.infinity,
                width: mediaQueryData.size.width - 15,
                color: Color.fromRGBO(243, 243, 243, 1),
                padding: EdgeInsets.fromLTRB(
                    resized_width * 10,
                    resized_height * 20,
                    resized_width * 10,
                    resized_height * 20),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Center(
                          child: Image.asset(
                        'assets/login_illustration.jpg',
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
                                'We will send a mail to the email address you registered to regain your password',
                                textAlign: TextAlign.center,
                              ),
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
                                            hintText: 'Email Address'),
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
                            Text(
                              'Email will be send to ex****@gmail.com',
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              height: resized_height * 30,
                            ),
                            Center(
                              child: FlatButton(
                                minWidth: (resized_width) * 230,
                                height: (resized_height) * 40,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                color: Constants_Class().primary_color_code,
                                onPressed: () {
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Enter_Code()),
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
