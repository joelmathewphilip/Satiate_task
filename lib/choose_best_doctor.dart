import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:satiate_task/Constants.dart';
import 'package:satiate_task/sign_in.dart';

//import 'find_trusted_doctor.dart';
class ChooseBestDoctor extends StatefulWidget {
  @override
  _ChooseBestDoctorState createState() => _ChooseBestDoctorState();
}

class _ChooseBestDoctorState extends State<ChooseBestDoctor> {
  double new_height(double screen_height, double height) {
    return (screen_height / 640) * height;
  }

  Widget design1(int selected, MediaQueryData mediaQueryData) {
    if (selected == 0) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Card(
            color: Colors.white,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Container(
              width: 40,
              height: (mediaQueryData.size.height / 640) * 10,
              //color: Colors.white,
            ),
          ),
          SizedBox(
            width: 05,
          ),
          CircleAvatar(
            backgroundColor: Colors.white,
            radius: 6,
          ),
          SizedBox(
            width: 05,
          ),
          CircleAvatar(
            backgroundColor: Colors.white,
            radius: 6,
          ),
        ],
      );
    } else if (selected == 1) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: Colors.white,
            radius: 6,
          ),
          SizedBox(
            width: 05,
          ),
          Card(
            color: Colors.white,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Container(
              width: 40,
              height: 10,
              //color: Colors.white,
            ),
          ),
          SizedBox(
            width: 05,
          ),
          CircleAvatar(
            backgroundColor: Colors.white,
            radius: 6,
          ),
        ],
      );
    } else if (selected == 2) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: Colors.white,
            radius: 6,
          ),
          SizedBox(
            width: 05,
          ),
          CircleAvatar(
            backgroundColor: Colors.white,
            radius: 6,
          ),
          SizedBox(
            width: 05,
          ),
          Card(
            color: Colors.white,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Container(
              width: 40,
              height: 10,
              //color: Colors.white,
            ),
          ),
        ],
      );
    }
  }

  double resized_height;
  double resized_width;
  int selected = 0;
  List<String> heading = [
    "Choose Best Doctor",
    "Find Trusted Doctor",
    "Smart Booking System"
  ];
  List<String> content = [
    "Lorem ipsum Lore ipsum it is sometimes know as as dummy text used in laying out print graphic or web design",
    "Lorem ipsum Lore ipsum it is sometimes know as as dummy text used in laying out print graphic or web design",
    "Lorem ipsum Lore ipsum it is sometimes know as as dummy text used in laying out print graphic or web design"
  ];
  List<String> button = ["Next", "Next", "Get Started"];
  List<Image> images = [
    Image.asset(
      "assets/final_assets/1_2_best_doc.png",
      scale: 1.1,
    ),
    Image.asset(
      "assets/final_assets/1_1_trusted_doc.png",
      scale: 1.1,
    ),
    Image.asset("assets/final_assets/1_4_smart booking.png", scale: 1.1)
  ];
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    print(mediaQueryData.size.height);
    resized_width = (mediaQueryData.size.width / 360);
    resized_height = (mediaQueryData.size.height / 640);
    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(10, 25, 10, 5),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              images[selected],
              SizedBox(
                height: (resized_height) * 20,
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)),
                color: Constants_Class().primary_color_code,
                child: Container(
                  width: double.infinity,
                  height: (resized_height) * 270,
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: resized_height * 20,
                      ),
                      Text(
                        heading[selected],
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 25),
                      ),
                      SizedBox(
                        height: resized_height * 12,
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30, 05, 30, 03),
                        child: Text(
                          content[selected],
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 17),
                        ),
                      ),
                      SizedBox(
                        height: resized_height * 12,
                      ),
                      design1(selected, mediaQueryData),
                      SizedBox(
                        height: resized_height * 12,
                      ),
                      FlatButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        color: Colors.white,
                        onPressed: () {
                          if (selected == 2) {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Sign_In()),
                            );
                          } else {
                            setState(() {
                              selected = selected + 1;
                            });
                          }
                        },
                        child: Container(
                          width: resized_width * 200,
                          height: resized_height * 40,
                          child: Center(
                            child: Text(
                              button[selected],
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Constants_Class().primary_color_code,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: resized_height * 10,
                      ),
                      Divider(
                        color: Colors.white,
                        indent: 100,
                        endIndent: 100,
                        thickness: 4,
                      ),
                      //SizedBox(height: 20,),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
