import 'package:flutter/material.dart';
import 'package:satiate_task/Constants.dart';
import 'package:satiate_task/forgot_password/forgot_password.dart';
import 'package:satiate_task/register.dart';
import 'select_location.dart';

class Sign_In extends StatefulWidget {
  @override
  _Sign_InState createState() => _Sign_InState();
}

class _Sign_InState extends State<Sign_In> {
  bool checked_value = true;
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
                alignment: Alignment(0, (1 / resized_height) * 0.45),
                child: Text(
                  'Sign In',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
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
                  resized_height * 20, resized_width * 15, resized_height * 15),
              child: Container(
                width: mediaQueryData.size.width - 15,
                color: Color.fromRGBO(243, 243, 243, 1),
                padding: EdgeInsets.fromLTRB(
                    resized_width * 15,
                    resized_height * 20,
                    resized_width * 15,
                    resized_height * 20),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                          child: Image.asset(
                        'assets/final_assets/1_3_signin.png',
                        scale: 2,
                      )),
                      SizedBox(
                        height: resized_height * 5,
                      ),
                      Text(
                        'Welcome Back!',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Constants_Class().primary_color_code,
                            fontSize: 26),
                      ),
                      Text(
                        'Sign in to continue',
                        style: TextStyle(color: Colors.black, fontSize: 17),
                      ),
                      SizedBox(
                        height: (mediaQueryData.size.height / 640) * 10,
                      ),
                      Container(
                        color: Colors.white,
                        padding: EdgeInsets.all(10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Card(
                              color: Colors.white60,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Row(
                                  children: <Widget>[
                                    SizedBox(
                                      width: 05,
                                    ),
                                    Icon(
                                      Icons.email,
                                      color:
                                          Constants_Class().primary_color_code,
                                    ),
                                    SizedBox(
                                      width: 13,
                                    ),
                                    Expanded(
                                      child: TextField(
                                        decoration: InputDecoration(
                                            border: InputBorder.none,
                                            hintText: 'Username'),
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
                              height: (mediaQueryData.size.height / 640) * 20,
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
                                      width: 05,
                                    ),
                                    Icon(
                                      Icons.lock,
                                      color:
                                          Constants_Class().primary_color_code,
                                    ),
                                    SizedBox(
                                      width: 13,
                                    ),
                                    Expanded(
                                      child: TextField(
                                        obscureText: true,
                                        decoration: InputDecoration(
                                            border: InputBorder.none,
                                            hintText: 'Password'),
                                        onChanged: (text) {
                                          print("helli");
                                        },
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Row(
                              children: <Widget>[
                                Checkbox(
                                  activeColor: Colors.blue,
                                  onChanged: (val) {
                                    setState(() {
                                      checked_value = !checked_value;
                                    });
                                  },
                                  value: checked_value,
                                ),
                                Text(
                                  'Remember me',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: (mediaQueryData.size.width / 360) * 20,
                                ),
                                GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                Forgot_Password()),
                                      );
                                    },
                                    child: Text(
                                      'Forget Password?',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ))
                              ],
                            ),
                            SizedBox(
                              height: (mediaQueryData.size.height / 640) * 8,
                            ),
                            Center(
                              child: FlatButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                color: Constants_Class().primary_color_code,
                                onPressed: () {
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Select_Location()),
                                  );
                                },
                                child: Container(
                                    width:
                                        (mediaQueryData.size.width / 360) * 230,
                                    height:
                                        (mediaQueryData.size.height / 640) * 40,
                                    child: Center(
                                        child: Text(
                                      'Sign In',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
                                    ))),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(23,
                                  resized_height * 10, 10, resized_width * 05),
                              child: Row(
                                children: [
                                  Text(
                                    'Already have an account?',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  GestureDetector(
                                      onTap: () {
                                        Navigator.pushReplacement(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => Register()),
                                        );
                                      },
                                      child: Text(
                                        'Sign Up',
                                        style: TextStyle(
                                            color: Constants_Class()
                                                .primary_color_code,
                                            fontWeight: FontWeight.bold),
                                      ))
                                ],
                              ),
                            )
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
