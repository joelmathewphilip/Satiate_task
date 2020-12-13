import 'package:flutter/material.dart';
import 'file:///C:/Users/hp/AndroidStudioProjects/satiate_task/lib/main_page/main_page.dart';
import 'package:satiate_task/Constants.dart';

class Verify_Number extends StatefulWidget {
  @override
  _Verify_NumberState createState() => _Verify_NumberState();
}

class _Verify_NumberState extends State<Verify_Number> {
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
                alignment: Alignment(0, (1 / resized_height) * 0.40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: (mediaQueryData.size.width / 360) * 60,
                    ),
                    Expanded(
                        child: Text(
                      'Enter Verification Code',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 23,
                          fontWeight: FontWeight.bold),
                    )),
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
                  resized_height * 20, resized_width * 15, resized_height * 15),
              child: Container(
                //height: double.infinity,
                width: mediaQueryData.size.width - 15,
                color: Color.fromRGBO(243, 243, 243, 1),
                padding: EdgeInsets.fromLTRB(
                    resized_width * 10,
                    resized_height * 10,
                    resized_width * 10,
                    resized_height * 20),
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
                      SizedBox(
                        height: resized_height * 20,
                      ),
                      Container(
                        color: Colors.white,
                        padding: EdgeInsets.all(10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(
                              height: resized_height * 10,
                            ),
                            Text(
                              'We have send a verification code to \n+88 000 111 333',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
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
                                      width: resized_width * 13,
                                    ),
                                    Expanded(
                                      child: TextField(
                                        obscureText: true,
                                        keyboardType: TextInputType.number,
                                        decoration: InputDecoration(
                                            border: InputBorder.none,
                                            hintText: 'Enter Code'),
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
                            Align(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  '1:20 Sec Left',
                                  textAlign: TextAlign.center,
                                )),
                            SizedBox(
                              height: resized_height * 20,
                            ),
                            Center(
                              child: FlatButton(
                                minWidth:
                                    (mediaQueryData.size.width / 360) * 230,
                                height: (mediaQueryData.size.height / 640) * 40,
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
                                child: Center(
                                    child: Text(
                                  'Verify',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                )),
                              ),
                            ),
                            SizedBox(
                              height: resized_height * 05,
                            ),
                            SizedBox(
                              height: resized_height * 15,
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
