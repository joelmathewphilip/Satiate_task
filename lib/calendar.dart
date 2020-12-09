import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
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
          selectedColor: Color.fromRGBO(0, 200, 214, 1),
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
    return Scaffold(
      appBar: AppBar(
        actions: [
          Icon(Icons.search,color: Colors.black,)
        ],
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text('Booking',style: TextStyle(color: Colors.black),),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Color.fromRGBO(243, 243, 243, 1),
          padding: EdgeInsets.fromLTRB(23, 20,23, 20),
          child: Container(
            padding: EdgeInsets.all(15),
            color: Colors.white,
            child: Center(
              child: Column(
                children: <Widget>[
                  Card(
                    //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: <Widget>[
                        Container(
                          color: Color.fromRGBO(0, 200, 214, 1),
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
                          color: Color.fromRGBO(0, 200, 214, 1),
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
                                      color: selected_time == index ? Color.fromRGBO(0, 201, 216, 1) : Color.fromRGBO(236, 249, 251, 1),
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
                          color: Color.fromRGBO(0, 200, 214, 1),
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
                                  crossAxisCount: 4,childAspectRatio: 1.2),
                              children: List.generate(remind_me.length, (index2) {
                                return GestureDetector(
                                  onTap: ()
                                  {
                                    setState(() {
                                      selected_remind_me = index2;
                                    });
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Card(
                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(05)),
                                      color: selected_remind_me == index2 ? Color.fromRGBO(0, 201, 216, 1) : Color.fromRGBO(236, 249, 251, 1),
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
                      color: Color.fromRGBO(0, 200, 215, 1),
                      onPressed: ()
                      {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(builder: (context) => WantToVerify_Number()),
                        // );
                      },
                      child: Container(
                          width: (mediaQueryData.size.width / 360) * 250,
                          height: (mediaQueryData.size.height / 640) * 40,
                          child: Center(child: Text('Book New',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),))),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
