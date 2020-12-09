import 'package:flutter/material.dart';

class Profile_Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  CircleAvatar(
                    radius: 54,
                    backgroundColor: Colors.teal,
                    child: CircleAvatar(
                        backgroundColor: Colors.grey,
                        radius: 51,
                        //backgroundColor: Colors.white,
                        child: Image.asset(
                          'assets/photo_cropped.png',
                          scale: 1.6,
                        )),
                  ),
                  SizedBox(width: 20,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Anubhav, ',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 25),),
                          Text('Self',style: TextStyle(color: Colors.black,fontSize: 20),)
                        ],
                      ),
                      Text('0 Members added',style: TextStyle(color: Colors.black,fontSize: 15),),
                      Row(
                        children: <Widget>[
                          Icon(Icons.info,size: 13,),
                          SizedBox(width: 5,),
                          Row(
                            children: [
                              Text('HCash Balance:'),
                              Text(' ₹1500',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)
                            ],
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
              Align(
                alignment: Alignment.centerRight,
                child: FlatButton(color: Colors.blue[700],
                  onPressed: ()
                  {

                  },
                  child: Text('View And Edit',style: TextStyle(color: Colors.white),),),
              ),
              SizedBox(height: 20,),
              Divider(color: Colors.grey,thickness: 1,indent: 70,),
              ListTile(
                leading: Icon(Icons.wb_sunny,size: 30,),
                title:Row(
                  children: [
                    Text('Health Karma',style: TextStyle(color: Colors.black,fontSize: 18,letterSpacing: 1,fontWeight: FontWeight.bold)),
                    SizedBox(width: 15,),
                    CircleAvatar(
                      radius: 05,
                      backgroundColor: Colors.red,
                    )
                  ],
                ),
                subtitle: Text('not attempted yet!',style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),),
                trailing: Icon(Icons.arrow_forward_ios_sharp,color: Colors.grey),
              ),
              Divider(color: Colors.grey,thickness: 1,indent: 70,),
              ListTile(
                leading: Icon(Icons.money,size: 30,),
                title:Text('H-Cash',style: TextStyle(color: Colors.black,fontSize: 18,letterSpacing: 1,fontWeight: FontWeight.bold)),
                trailing: Icon(Icons.arrow_forward_ios_sharp,color: Colors.grey),
              ),
              Divider(color: Colors.grey,thickness: 1,indent: 70,),
              ListTile(
                leading: Icon(Icons.calendar_today,size: 30,),
                title:Text('My Reports',style: TextStyle(color: Colors.black,fontSize: 18,letterSpacing: 1,fontWeight: FontWeight.bold)),
                trailing: Icon(Icons.arrow_forward_ios_sharp,color: Colors.grey),
              ),
              Divider(color: Colors.grey,thickness: 1,indent: 70,),
              ListTile(
                leading: Icon(Icons.subscriptions,size: 30,),
                title:Text('My Bookings',style: TextStyle(color: Colors.black,fontSize: 18,letterSpacing: 1,fontWeight: FontWeight.bold)),
                trailing: Icon(Icons.arrow_forward_ios_sharp,color: Colors.grey),
              ),
              Divider(color: Colors.grey,thickness: 1,indent: 70,),
              ListTile(
                leading: Icon(Icons.local_offer,size: 30,),
                title:Text('My Subscriptions',style: TextStyle(color: Colors.black,fontSize: 18,letterSpacing: 1,fontWeight: FontWeight.bold)),
                trailing: Icon(Icons.arrow_forward_ios_sharp,color: Colors.grey),
              ),
              Divider(color: Colors.grey,thickness: 1,indent: 70,),
              ListTile(
                leading: Icon(Icons.people,size: 30,),
                title:Text('Offers',style: TextStyle(color: Colors.black,fontSize: 18,letterSpacing: 1,fontWeight: FontWeight.bold)),
                trailing: Icon(Icons.arrow_forward_ios_sharp,color: Colors.grey),
              ),
              Divider(color: Colors.grey,thickness: 1,indent: 70,),
              ListTile(
                leading: Icon(Icons.location_on,size: 30,),
                title:Text('Addresses',style: TextStyle(color: Colors.black,fontSize: 18,letterSpacing: 1,fontWeight: FontWeight.bold)),
                trailing: Icon(Icons.arrow_forward_ios_sharp,color: Colors.grey),
              ),
              Divider(color: Colors.grey,thickness: 1,indent: 70,),
              ListTile(
                leading: Icon(Icons.message,size: 30,),
                title:Text('Help',style: TextStyle(color: Colors.black,fontSize: 18,letterSpacing: 1,fontWeight: FontWeight.bold)),
                trailing: Icon(Icons.arrow_forward_ios_sharp,color: Colors.grey),
              ),
              Divider(color: Colors.grey,thickness: 1,indent: 70,),
              ListTile(
                leading: Icon(Icons.location_city,size: 30,),
                title:Text('View Lab',style: TextStyle(color: Colors.black,fontSize: 18,letterSpacing: 1,fontWeight: FontWeight.bold)),
                trailing: Icon(Icons.arrow_forward_ios_sharp,color: Colors.grey),
              ),
              Divider(color: Colors.grey,thickness: 1,indent: 70,),
              ListTile(
                leading: Icon(Icons.room_preferences,size: 30,),
                title:Text('Refer & Learn',style: TextStyle(color: Colors.black,fontSize: 18,letterSpacing: 1,fontWeight: FontWeight.bold)),
                trailing: Icon(Icons.arrow_forward_ios_sharp,color: Colors.grey),
              ),
              Divider(color: Colors.grey,thickness: 1,indent: 70,),
              ListTile(
                leading: Icon(Icons.clean_hands_sharp,size: 30,),
                title:Row(
                  children: [
                    Text('Blood Donation',style: TextStyle(color: Colors.black,fontSize: 18,letterSpacing: 1,fontWeight: FontWeight.bold)),
                    SizedBox(width: 05,),
                    Image.asset('assets/new_img.png',scale: 6,)
                  ],
                ),
                trailing: Icon(Icons.arrow_forward_ios_sharp,color: Colors.grey),
              ),
              Divider(color: Colors.grey,thickness: 1,indent: 70,),
              ListTile(
                leading: Icon(Icons.healing,size: 30,),
                title:Row(
                  children: [
                    Text('Health Records',style: TextStyle(color: Colors.black,fontSize: 18,letterSpacing: 1,fontWeight: FontWeight.bold)),
                    SizedBox(width: 05,),
                    Image.asset('assets/new_img.png',scale: 6,)
                  ],
                ),
                trailing: Icon(Icons.arrow_forward_ios_sharp,color: Colors.grey),
              ),
              Divider(color: Colors.grey,thickness: 1,indent: 70,),
              ListTile(
                leading: Icon(Icons.logout,size: 30,),
                title:Text('Signout',style: TextStyle(color: Colors.black,fontSize: 18,letterSpacing: 1,fontWeight: FontWeight.bold)),
                trailing: Icon(Icons.arrow_forward_ios_sharp,color: Colors.grey),
              ),
              Divider(color: Colors.grey,thickness: 1,indent: 70,),

            ],
          ),
        ),
      ),
    );
  }
}
