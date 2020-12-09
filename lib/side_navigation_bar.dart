import 'package:flutter/material.dart';
import 'package:satiate_task/calendar.dart';

class Side_Navigation_bar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          SizedBox(height: 10,),
          Container(
            padding: EdgeInsets.all(13),
            color: Color.fromRGBO(255, 192, 203, 1),
            child: Row(
              children: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.white,
                    radius:20,
                    child: Image.asset('assets/corona_virus_icon.png',scale: 17,)),
              SizedBox(width: 25,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Coronavirus Assessment',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                  SizedBox(height: 03,),
                  Text('Take a 3-minute self assessment',style: TextStyle(color: Colors.black,fontSize: 13),)
                ],
              )
              ],
            ),
          ),
          SizedBox(height: 10,),
          Container(
            padding: EdgeInsets.all(13),
            color: Color.fromRGBO(173, 223, 255, 1),
            child: Row(
              children: <Widget>[
                CircleAvatar(
                    backgroundColor: Colors.white,
                    radius:20,
                    child: Image.asset('assets/speaker.png',scale: 17,)),
                SizedBox(width: 25,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Share The App',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                    SizedBox(height: 03,),
                    Text('Recommend to family and friends',style: TextStyle(color: Colors.black,fontSize: 13),)
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 20,),
          Container(
            color: Color.fromRGBO(248, 248, 248, 1),
            padding: EdgeInsets.fromLTRB(25, 10, 10, 10),
            child: Text('MFINE CARE SERVICES',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),),
          ),
          ListView(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            children: ListTile.divideTiles(
                context: context,
                tiles: [
                  ListTile(
                    title: Text('Consult Now'),
                    onTap: ()
                    {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Calendar()),
                      );
                    },
                    leading: Icon(Icons.person_outline),
                  ),
                  ListTile(
                    title: Text('Book Health Packages'),
                    leading: Icon(Icons.local_hospital),
                  ),
                  ListTile(
                    title: Text('Order Lab Test'),
                    leading: Icon(Icons.report),
                  ),
                  ListTile(
                    title: Text('Order Medicines'),
                    leading: Icon(Icons.medical_services),
                  ),
                  ListTile(
                    title: Text('Buy Subscriptions'),
                    leading: Icon(Icons.subscriptions),
                  ),
                ]
            ).toList(),
          ),
          Container(
            color: Color.fromRGBO(248, 248, 248, 1),
            padding: EdgeInsets.fromLTRB(25, 10, 10, 10),
            child: Text('RECORDS',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),),
          ),
          ListView(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            children: ListTile.divideTiles(
                context: context,
                tiles: [
                  ListTile(
                    title: Text('Health Files'),
                    leading: Icon(Icons.person_outline),
                  ),
                  ListTile(
                    title: Text('Invoices'),
                    leading: Icon(Icons.local_hospital),
                  ),
                ]
            ).toList(),
          ),
          Container(
            color: Color.fromRGBO(248, 248, 248, 1),
            padding: EdgeInsets.fromLTRB(25, 10, 10, 10),
            child: Text('SETTINGS',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),),
          ),
          ListView(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            children: ListTile.divideTiles(
                context: context,
                tiles: [
                  ListTile(
                    title: Text('Settings'),
                    leading: Icon(Icons.person_outline),
                  ),

                ]
            ).toList(),
          ),
          Container(
            color: Color.fromRGBO(248, 248, 248, 1),
            padding: EdgeInsets.fromLTRB(25, 10, 10, 10),
            child: Text('ABOUT',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),),
          ),
          ListView(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            children: ListTile.divideTiles(
                context: context,
                tiles: [
                  ListTile(
                    title: Text('About The App'),
                    leading: Icon(Icons.person_outline),
                  ),
                  ListTile(
                    title: Text('Terms and Conditions'),
                    leading: Icon(Icons.local_hospital),
                  ),
                  ListTile(
                    title: Text('Privacy Policy'),
                    leading: Icon(Icons.report),
                  ),
                  ListTile(
                    title: Text('Help'),
                    leading: Icon(Icons.medical_services),
                  ),
                ]
            ).toList(),
          ),
        ],
      ),
    );
  }
}
