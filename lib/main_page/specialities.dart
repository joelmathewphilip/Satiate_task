import 'package:flutter/material.dart';
import 'package:satiate_task/Constants.dart';
import 'package:satiate_task/main_page/symptoms.dart';
import 'package:satiate_task/main_page/top_specialities.dart';

class Specialities extends StatefulWidget {
  @override
  _SpecialitiesState createState() => _SpecialitiesState();
}

class _SpecialitiesState extends State<Specialities> {
  List<Color> card_colors = [
    Colors.lightBlueAccent,
    Colors.redAccent,
    Colors.grey,
    Colors.yellow
  ];
  int selected = 1;
  double resized_width;
  double resized_height;
  List<String> heading = [
    "Skin",
    "Gynae",
    "Ent",
    "Dental",
    "Physiotherapy",
    "Paediatrician",
    "Laboratory and Diagnostic",
    "Diet and Nutrtion"
  ];

  Color select_bg_color(int Widget_no, int selected_state) {
    if (Widget_no == selected_state) {
      return Constants_Class().primary_color_code;
    } else
      return Colors.white;
  }

  Color select_text_color(int Widget_no, int selected_state) {
    if (Widget_no == selected_state) {
      if (Widget_no == selected_state) {
        return Colors.white;
      } else
        return Colors.black;
    }
  }

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
                      width: 20,
                    ),
                    IconButton(
                      onPressed: ()
                      {
                        Navigator.of(context).pop();
                      },
                        icon: Icon(Icons.keyboard_backspace_sharp,color: Colors.white),
                        ),
                    SizedBox(
                      width: (mediaQueryData.size.width / 360) * 20,
                    ),
                    Expanded(
                        child: Text(
                      'Consult Now',
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
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 30, 20, 0),
                      child: Text(
                        'Sort By',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          width: 20,
                        ),
                        RaisedButton(
                          color: select_bg_color(1, selected),
                          onPressed: () {
                            setState(() {
                              selected = 1;
                            });
                          },
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                            side: BorderSide(
                              color: Constants_Class().primary_color_code,
                            ),
                          ),
                          child: Text(
                            'Specialities',
                            style: TextStyle(
                                color: select_text_color(1, selected),
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        RaisedButton(
                          color: select_bg_color(2, selected),
                          onPressed: () {
                            setState(() {
                              selected = 2;
                            });
                          },
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                            side: BorderSide(
                              color: Constants_Class().primary_color_code,
                            ),
                          ),
                          child: Text(
                            'Symptoms',
                            style: TextStyle(
                                color: select_text_color(2, selected),
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    selected == 1
                        ? Top_Specialities(
                            card_colors: card_colors,
                            heading: heading,
                          )
                        : Symptoms()
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
