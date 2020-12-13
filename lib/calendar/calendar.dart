import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:satiate_task/Constants.dart';
import 'package:table_calendar/table_calendar.dart';


class Calendar extends StatefulWidget {
  @override
  _CalendarState createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  List<String> timings=["12:00 AM","02:00 PM","11:00 AM","10:00 AM","09:00 AM","08:00 AM"];

  List<String> remind_me=["10 Min","15 Min","20 Min","30 Min","35 Min","50 Min"];

  int selected_time=0;

  int selected_remind_me=0;
  CalendarController _calendarController;
  double resized_width;
  double resized_height;

  void initState() {
    super.initState();
    _calendarController = CalendarController();
  }
  Widget _buildTableCalendar() {
    return SingleChildScrollView(
      child: TableCalendar(
        calendarController: _calendarController,
        startingDayOfWeek: StartingDayOfWeek.sunday,
        calendarStyle: CalendarStyle(
          selectedColor: Constants_Class().primary_color_code,
          todayColor: Colors.deepOrange[400],
          markersColor: Colors.brown[700],
          outsideDaysVisible: false,
        ),
        availableGestures:AvailableGestures.none ,
        headerStyle: HeaderStyle(
          formatButtonTextStyle:
          TextStyle().copyWith(color: Colors.white, fontSize: 15.0),
          formatButtonVisible: false,
          formatButtonDecoration: BoxDecoration(
            color: Colors.deepOrange[400],
            borderRadius: BorderRadius.circular(18.0),
          ),
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData=MediaQuery.of(context);
    resized_width = (mediaQueryData.size.width / 360);
    resized_height = (mediaQueryData.size.height / 640);
    return Scaffold(
      backgroundColor:  Constants_Class().primary_color_code,
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
                    SizedBox(width: (mediaQueryData.size.width  / 360 )* 20,),
                    IconButton(icon:Icon(Icons.keyboard_backspace_sharp,color: Colors.white,),
                        onPressed: ()
                      {
                        Navigator.of(context).pop();
                      },),
                    SizedBox(width: (resized_width )* 20,),
                    Text('Make Booking',style: TextStyle(color: Colors.white,fontSize: 23,fontWeight: FontWeight.bold),),
                  ],
                )),
          ),
          Expanded(
            child: Container(
              //color: Color.fromRGBO(243, 243, 243, 1),
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
              padding: EdgeInsets.fromLTRB(23, 20,23, 20),
              child: Container(
                padding: EdgeInsets.all(15),
                color: Colors.white,
                child: Center(
                  child: SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        Card(
                          //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            children: <Widget>[
                              Container(
                                color: Constants_Class().primary_color_code,
                                width:double.infinity,
                                padding: EdgeInsets.all(13),
                                height: 50,
                                child: Text('Calendar',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                              ),
                              Container(
                                width: double.infinity,
                                padding: EdgeInsets.all(5),
                                child: _buildTableCalendar(),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20,),
                        Card(
                          //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            children: <Widget>[
                              Container(
                                color: Constants_Class().primary_color_code,
                                width:double.infinity,
                                padding: EdgeInsets.all(13),
                                height: 50,
                                child: Text('Available Time',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                              ),
                              Container(
                                width: double.infinity,
                                padding: EdgeInsets.all(5),
                                child: GridView(
                                    physics: NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 4,childAspectRatio: 1.2),
                                    children: List.generate(timings.length, (index) {
                                      return GestureDetector(
                                        onTap: ()
                                        {
                                          setState(() {
                                            selected_time=index;
                                          });
                                        },
                                        child: Padding(
                                          padding: const EdgeInsets.all(4.0),
                                          child: Card(
                                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                                            color: selected_time == index ? Constants_Class().primary_color_code : Color.fromRGBO(236, 249, 251, 1),
                                            child: Padding(
                                              padding: const EdgeInsets.all(4.0),
                                              child: Text(timings[index],textAlign: TextAlign.center,
                                                style: TextStyle(color: selected_time == index ? Colors.white : Colors.black),),
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                    )
                                ),
                              ),

                            ],

                          ),
                        ),
                        SizedBox(height: 30,),
                        Card(
                          //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            children: <Widget>[
                              Container(
                                color: Constants_Class().primary_color_code,
                                width:double.infinity,
                                padding: EdgeInsets.all(13),
                                height: 50,
                                child: Text('Remind Me Before',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                              ),
                              Container(
                                width: double.infinity,
                                padding: EdgeInsets.all(5),
                                child: GridView(
                                    physics: NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 4,childAspectRatio: 1.2,),
                                    children: List.generate(remind_me.length, (index2) {
                                      return GestureDetector(
                                        onTap: ()
                                        {
                                          setState(() {
                                            selected_remind_me = index2;
                                          });
                                        },
                                        child: Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Card(
                                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(05)),
                                            color: selected_remind_me == index2 ? Constants_Class().primary_color_code : Color.fromRGBO(236, 249, 251, 1),
                                            child: Padding(
                                              padding: const EdgeInsets.all(4.0),
                                              child: Text(remind_me[index2],textAlign: TextAlign.center,
                                                style: TextStyle(color: selected_remind_me == index2 ? Colors.white : Colors.black),),
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                    )
                                ),
                              ),

                            ],

                          ),
                        ),
                        SizedBox(height: 30,),
                        Center(
                          child: FlatButton(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                            color: Constants_Class().primary_color_code,
                            onPressed: ()
                            {

                            },
                            child: Container(
                                width: (mediaQueryData.size.width / 360) * 250,
                                height: (mediaQueryData.size.height / 640) * 40,
                                child: Center(child: Text('Book New',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),))
                            ),
                          ),
                        ),
                        SizedBox(height: 20,),
                      ],
                    ),
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
