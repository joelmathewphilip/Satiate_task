import 'package:flutter/material.dart';
import 'package:satiate_task/Constants.dart';
import 'package:satiate_task/calendar/calendar.dart';

double resized_width;
double resized_height;

class Doctor_Profile extends StatelessWidget {
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
                      width: (mediaQueryData.size.width / 360) * 20,
                    ),
                    IconButton(
                      onPressed: ()
                        {
                          Navigator.of(context).pop();
                        },
                        icon: Icon(Icons.keyboard_backspace_sharp,color: Colors.white),
                        ),
                    SizedBox(
                      width: (resized_width) * 20,
                    ),
                    Text(
                      'Doctor Profile',
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
              padding: EdgeInsets.fromLTRB(25, 30, 25, 0),
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(11.0),
                            border: Border.all(
                              color: Constants_Class().primary_color_code,
                              width: 2,
                            ),
                          ),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: Image.asset(
                                  'assets/doctor_small_image.jpg',
                                  scale: 5)),
                        ),
                        SizedBox(
                          width: resized_width * 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Gustav Purpleson',
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 23),
                            ),
                            SizedBox(
                              height: 04,
                            ),
                            Text(
                              'Physiotherapist',
                              style: TextStyle(
                                  color: Colors.black45,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                            SizedBox(
                              height: 02,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Icon(
                                  Icons.location_on,
                                  color: Colors.black45,
                                ),
                                Text(
                                  'Ohio, 44095',
                                  style: TextStyle(
                                      color: Colors.black45,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: resized_height * 20,
                    ),
                    Text(
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. '
                      'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown '
                      'printer took a galley of type and scrambled it to make a type specimen book. It has survived '
                      'not only five centuries, but also the leap into electronic typesetting, remaining essentially '
                      'unchanged',
                      style: TextStyle(color: Colors.black54, fontSize: 14),
                    ),
                    SizedBox(
                      height: resized_height * 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        FlatButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          color: Constants_Class().primary_color_code,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Calendar()),
                            );
                          },
                          minWidth: 200,
                          child: Padding(
                            padding: const EdgeInsets.all(13.0),
                            child: Text(
                              'Book An Appointment',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            ),
                          ),
                        ),
                        Icon(
                          Icons.phone,
                          color: Constants_Class().primary_color_code,
                          size: 27,
                        )
                      ],
                    ),
                    SizedBox(
                      height: resized_height * 20,
                    ),
                    Divider(
                      color: Colors.black12,
                      thickness: 2,
                    ),
                    SizedBox(
                      height: resized_height * 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Text(
                              'Likes',
                              style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.black45,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '3233',
                              style: TextStyle(
                                  fontSize: 19,
                                  color: Colors.black54,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Text(
                              'Likes',
                              style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.black45,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '3233',
                              style: TextStyle(
                                  fontSize: 19,
                                  color: Colors.black54,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Text(
                              'Likes',
                              style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.black45,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '3233',
                              style: TextStyle(
                                  fontSize: 19,
                                  color: Colors.black54,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: resized_height * 10,
                    ),
                    Divider(
                      color: Colors.black12,
                      thickness: 2,
                    ),
                    SizedBox(
                      height: resized_height * 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Articles',
                          style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.bold,
                              fontSize: 17),
                        ),
                        Text(
                          'View All',
                          style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.bold,
                              fontSize: 17),
                        ),
                      ],
                    ),
                    ListView(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      children: ListTile.divideTiles(
                        context: context,
                        tiles: [
                          ListTile(
                            leading: Image.asset(
                              'assets/doctor_splash.jpg',
                              scale: 5,
                            ),
                            title: Text('Orci Varis Natoque Penatibus'),
                            subtitle: Text(
                                'Lorem Ipsum has been the industry\'s standard dummy text ever since the '
                                '1500s, when an unknown printer took a galley of type and scrambled it '
                                'to make a type specimen book.'),
                            minVerticalPadding: 13,
                          ),
                          ListTile(
                            leading: Image.asset('assets/doctor_splash.jpg'),
                            title: Text('Orci Varis Natoque Penatibus'),
                            subtitle: Text(
                                'Lorem Ipsum has been the industry\'s standard dummy text ever since the '
                                '1500s, when an unknown printer took a galley of type and scrambled it '
                                'to make a type specimen book.'),
                            minVerticalPadding: 13,
                          ),
                        ],
                      ).toList(),
                    ),
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
