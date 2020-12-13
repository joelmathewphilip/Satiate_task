import 'package:flutter/material.dart';
import 'file:///C:/Users/hp/AndroidStudioProjects/satiate_task/lib/main_page/main_page.dart';
import 'package:satiate_task/Constants.dart';

class Select_Location extends StatefulWidget {
  @override
  _Select_LocationState createState() => _Select_LocationState();
}

class _Select_LocationState extends State<Select_Location> {
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
                      width: (resized_width) * 95,
                    ),
                    Text(
                      'Choose Location',
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
              padding: EdgeInsets.fromLTRB(
                  resized_width * 15,
                  resized_height * 10,
                  resized_width * 15,
                  resized_height * 15),
              child: Container(
                width: double.infinity,
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
                        'assets/final_assets/1_6_location.png',
                        scale: 2,
                      )),
                      SizedBox(height: resized_height * 20,),
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
                                      width: resized_width * 13,
                                    ),
                                    Expanded(
                                      child: TextField(
                                        decoration: InputDecoration(
                                            border: InputBorder.none,
                                            hintText: 'Select Your City'),
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
                              height: resized_height * 20,
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
                                      width: 13,
                                    ),
                                    Expanded(
                                      child: TextField(
                                        decoration: InputDecoration(
                                            border: InputBorder.none,
                                            hintText: 'Select Your Area'),
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
                              height: resized_height * 40,
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
                                        builder: (context) => Main_Page()),
                                  );
                                },
                                child: Container(
                                    width: (resized_width) *
                                        230,
                                    height:
                                        (resized_height) *
                                            40,
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
                            SizedBox(height: resized_height * 20,),
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
