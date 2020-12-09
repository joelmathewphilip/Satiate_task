import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';

class Request_Call_Back extends StatefulWidget {
  @override
  _Request_Call_BackState createState() => _Request_Call_BackState();
}

class _Request_Call_BackState extends State<Request_Call_Back> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[

              SizedBox(height: 20,),
              Container(
                height: 60,
                child: Row(
                  children: <Widget>[
                    IconButton(icon: Icon(Icons.arrow_back_ios,color: Colors.black,),),
                    SizedBox(width: 180,),
                    Text('Your Location \n Rohini',textAlign: TextAlign.end,),
                    Icon(Icons.add_location,color: Colors.black,),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0 , 0, 0),
                child: Text('Request Call Back',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
              ),
              SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.all(10),
                child: Card(
                  color: Color.fromRGBO(223,211,239, 1),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                  child: Container(
                    padding: EdgeInsets.fromLTRB(10, 10, 07, 10),
                    child: Row(
                      children: [
                        Container(
                          width: 200,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(height: 20,),
                              Text('MFine Safety Promise',style: TextStyle(color: Color.fromRGBO(119,103,168, 1),fontSize: 20,fontWeight: FontWeight.bold),),
                              SizedBox(height: 07,),
                              Text('Assuring complete safety at every step of your lab test',textAlign: TextAlign.justify,style: TextStyle(color: Color.fromRGBO(80, 70, 81, 1),fontWeight: FontWeight.bold,fontSize: 15,letterSpacing: 0.2),),
                              SizedBox(height: 14,),
                              CircleAvatar(
                                radius: 14,
                                backgroundColor: Color.fromRGBO(55, 44, 98, 1),
                                child: CircleAvatar(
                                  backgroundColor: Color.fromRGBO(223,211,239, 1),
                                  radius: 12,
                                    child: Icon(Icons.arrow_forward_ios_sharp,color: Color.fromRGBO(55, 44, 98, 1),size: 16,),),
                              ),
                              SizedBox(height: 15,),
                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment(1.0,2),
                            child: Image.asset('assets/safe_delivery.png',scale: 3.5,)),
                      ],
                    ),
                  ),
                ),
              ),
              Center(
                child: RaisedButton(color: Color.fromRGBO(254, 106, 82,1),shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),child: Container(
                    width: 200,
                    height: 40,
                    child: Center(child: Text('Request Call Back',style: TextStyle(color: Colors.white,letterSpacing: 1.2,fontSize: 16),))),onPressed: ()
                  {

                  },),
              ),
              SizedBox(height: 24,),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Text('How it Works',style: TextStyle(color: Colors.indigo,fontSize: 20,fontWeight: FontWeight.bold),),
              ),
              SizedBox(height: 20,),
              ListTile(
                //contentPadding: ,
                leading: CircleAvatar(
                              radius: 20,
                              backgroundColor: Color.fromRGBO(19, 136, 166, 1),
                              child: CircleAvatar(
                                radius: 18,
                                backgroundColor: Colors.white,
                                  child: Text("1",style: TextStyle(color: Color.fromRGBO(19, 136, 166, 1)),)),
                            ),
                title: Text('We will reach out to you on your registered mobile number to understand your lab test re'
                                'quirement.',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),

              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(35, 0, 0, 0),
                child: Dash(
                    direction: Axis.vertical,
                    length: 40,
                    dashLength: 07,
                    dashColor: Color.fromRGBO(19, 136, 166, 1)),
              ),
              ListTile(
                //contentPadding: ,
                leading: CircleAvatar(
                  radius: 20,
                  backgroundColor: Color.fromRGBO(19, 136, 166, 1),
                  child: CircleAvatar(
                      radius: 18,
                      backgroundColor: Colors.white,
                      child: Text("2",style: TextStyle(color: Color.fromRGBO(19, 136, 166, 1)),)),
                ),
                title: Text('Price and details of the lab test will be shared with your over the call',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),

              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(35, 0, 0, 0),
                child: Dash(
                    direction: Axis.vertical,
                    length: 40,
                    dashLength: 07,
                    dashColor: Color.fromRGBO(19, 136, 166, 1)),
              ),
              ListTile(
                //contentPadding: ,
                leading: CircleAvatar(
                  radius: 20,
                  backgroundColor: Color.fromRGBO(19, 136, 166, 1),
                  child: CircleAvatar(
                      radius: 18,
                      backgroundColor: Colors.white,
                      child: Text("3",style: TextStyle(color: Color.fromRGBO(19, 136, 166, 1)),)),
                ),
                title: Text('A sample pick up from your address will be scheduled as per your convenience.',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),

              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(35, 0, 0, 0),
                child: Dash(
                    direction: Axis.vertical,
                    length: 40,
                    dashLength: 07,
                    dashColor: Color.fromRGBO(19, 136, 166, 1)),
              ),
              ListTile(
                //contentPadding: ,
                leading: CircleAvatar(
                  radius: 20,
                  backgroundColor: Color.fromRGBO(19, 136, 166, 1),
                  child: CircleAvatar(
                      radius: 18,
                      backgroundColor: Colors.white,
                      child: Text("4",style: TextStyle(color: Color.fromRGBO(19, 136, 166, 1)),)),
                ),
                title: Text('Payment can be done during the sample pickup.',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),

              ),
              SizedBox(height: 50,),
            ],
          ),
        ),
      ),
    );
  }
}
