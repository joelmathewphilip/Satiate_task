import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:satiate_task/Constants.dart';
import 'package:satiate_task/main_page/specialities.dart';
import 'package:satiate_task/main_page/symptoms.dart';
import 'package:satiate_task/main_page/top_specialities.dart';
import 'package:satiate_task/order_medicine.dart';
import 'package:satiate_task/side_navigation_bar.dart';
class Main_Page extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  double resized_width;
  double resized_height;
  List<Color> card_colors=[Colors.lightBlueAccent,Colors.redAccent,Colors.grey,Colors.yellow];
  List<String> heading=["Skin","Gynae","Ent","Dental","Physiotherapy","Paediatrician","Laboratory and Diagnostic","Diet and Nutrition","Consult Now"];
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData=MediaQuery.of(context);
    resized_width = (mediaQueryData.size.width / 360);
    resized_height = (mediaQueryData.size.height / 640);
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Constants_Class().primary_color_code,
      drawer: Side_Navigation_bar(),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 10,right: 10),
            height: resized_height * 100,
            width: double.infinity,
            child: Align(
              alignment: Alignment(0,  (1 / resized_height) * 0.40),
              child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: ()
                          {
                            _scaffoldKey.currentState.openDrawer();
                          },
                          child: CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.white,
                              child: Icon(
                                Icons.list,
                                color: Colors.black,
                              )),
                        ),
                        SizedBox(
                          width:   10,
                        ),
                        Icon(
                          Icons.location_on,
                          color: Colors.white,
                        ),
                        Text(
                          'Your Location \n Rohini',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),

                  Container(
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Icon(
                            Icons.share,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          width:   10,
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Icon(
                            Icons.alarm,
                            color: Colors.black,
                          ),
                        )
                      ],
                    ),
                  ),


                ],
              ),
            ),
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
                  child:SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Stack(
                              children: [
                                GestureDetector(

                                  child: Container(
                                    child: Column(
                                      children: [
                                        CircleAvatar(
                                          radius: 27,
                                          backgroundColor: Colors.red,
                                          child: Icon(
                                            Icons.person,
                                            color: Colors.white,
                                            size: 24,
                                          ),
                                        ),
                                        SizedBox(
                                          height: (mediaQueryData.size.height / 640 ) * 9,
                                        ),
                                        Text(
                                          'Consult Now',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12),
                                        )
                                      ],
                                    ),

                                  ),
                                  behavior: HitTestBehavior.translucent,
                                  onTap: ()
                                  {
                                    print("hello");
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => Specialities()),
                                    );
                                  },
                                ),
                                Positioned(
                                  top:   41,
                                  right:  7,
                                  child: Card(
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(05)),
                                    color: Colors.blue[800],
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(6, 3, 6,3),
                                      child: Text('₹250 Off',style: TextStyle(color: Colors.white,fontSize: 10),),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Stack(
                              children: [
                                Column(
                                  children: [
                                    CircleAvatar(
                                      radius: 27,
                                      backgroundColor: Colors.pink,
                                      child: Icon(
                                        Icons.developer_board_outlined,
                                        color: Colors.white,
                                        size: 24,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 09,
                                    ),
                                    Text(
                                      'Book Lab Test',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12),
                                    )
                                  ],
                                ),
                                Positioned(
                                  top:  41,
                                  right: (mediaQueryData.size.width / 360 ) * 01,
                                  child: Card(
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(05)),
                                    color: Colors.blue[800],
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(6, 3, 6,3),
                                      child: Text('Upto 50% Off',style: TextStyle(color: Colors.white,fontSize: 10),),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            GestureDetector(
                              onTap: ()
                              {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Order_Medicine()),
                                );
                              },
                              child: Column(
                                children: [
                                  CircleAvatar(
                                    radius: 27,
                                    backgroundColor: Colors.deepPurple,
                                    child: Icon(
                                      Icons.local_hospital,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    height: (mediaQueryData.size.height / 640 ) * 6,
                                  ),
                                  Text(
                                    'Order Medicines',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height:(mediaQueryData.size.height / 640 ) *  06,
                        ),
                        Divider(
                          color: Colors.grey,
                          thickness: 3,
                        ),
                        SizedBox(
                          height: (mediaQueryData.size.height / 640 ) * 04,
                        ),
                        Stack(
                          children: [
                            Container(
                              color: Color.fromRGBO(236, 243, 251, 1),
                              padding: EdgeInsets.fromLTRB((mediaQueryData.size.width / 360 ) * 02, (mediaQueryData.size.height / 640 ) * 10, (mediaQueryData.size.width / 360 ) * 05, (mediaQueryData.size.height / 640 ) * 10),
                              child: Row(
                                children: <Widget>[
                                  SizedBox(
                                    width: (mediaQueryData.size.width / 360 ) * 20,
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Card(
                                        color: Colors.pink,
                                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                                        child: Padding(
                                          padding: EdgeInsets.fromLTRB(05, 2, 05, 2),
                                          child: Text(
                                            'INTRODUCING',
                                            style: TextStyle(color: Colors.white),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: (mediaQueryData.size.height / 640 ) * 03,
                                      ),
                                      Text(
                                        'Scans and X-Rays',
                                        style: TextStyle(
                                            color: Colors.pink,
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        height: (mediaQueryData.size.height / 640 ) * 03,
                                      ),
                                      Text(
                                        'Book radiology services from',
                                        style: TextStyle(
                                            color: Colors.black, fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(height: (mediaQueryData.size.height / 640 ) * 03,),
                                      Row(
                                        children: [
                                          Text('the best labs in your city',style: TextStyle(
                                              color: Colors.black, fontWeight: FontWeight.bold),),
                                          SizedBox(width: (mediaQueryData.size.width / 360 ) * 10,),
                                          CircleAvatar(
                                            backgroundColor: Colors.orange,
                                            radius: 8,
                                            child: Icon(Icons.arrow_forward,color: Colors.white,size: 12,),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: (mediaQueryData.size.width / 360 ) * 04,),

                                ],
                              ),
                            ),
                            Positioned(
                                top:(mediaQueryData.size.height / 640 ) * 10,
                                right: 1,
                                child: Image.asset('assets/doc_scan.jpg',scale: 2.9,)),
                          ],
                        ),
                        SizedBox(height: (mediaQueryData.size.height / 640 ) * 08,),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 8, 10, 8),
                          child: Stack(
                            children: [
                              Card(
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                                color: Colors.redAccent,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: <Widget>[
                                      Column(
                                        children: <Widget>[
                                          Card(
                                            child: Padding(
                                              padding: EdgeInsets.fromLTRB(7, 2, 7, 2),
                                              child: Text('WELCOME OFFER',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                                            ),
                                            color: Colors.yellow[700],
                                          ),
                                          SizedBox(height: (mediaQueryData.size.height / 640 ) * 8,),
                                          Text('₹250 off On Your First Consultation',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                                          SizedBox(height: (mediaQueryData.size.height / 640 ) * 10,),
                                          Row(
                                            children: [
                                              Text('Consult Now',style: TextStyle(color: Colors.white),),
                                              SizedBox(width: (mediaQueryData.size.width / 360 ) * 10,),
                                              CircleAvatar(
                                                radius: 10,
                                                backgroundColor: Colors.red,
                                                child: Icon(Icons.arrow_forward,color: Colors.white,size: 14,),
                                              )
                                            ],
                                          )
                                        ],
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                  top: (mediaQueryData.size.height / 640 ) * 5,
                                  right: (mediaQueryData.size.height / 360 ) * 10,
                                  child: Image.asset('assets/doctor_mobile.jpg',scale: 5.7,))
                            ],
                          ),
                        ),
                        SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Stack(
                                children: [
                                  Card(
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                                    color: Colors.blue[900],
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        width: (mediaQueryData.size.width / 360 ) * 145,
                                        height:  (resized_height) * 150,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text('COVID-19\nRT-PCR Test',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),),
                                            SizedBox(height: (mediaQueryData.size.height / 640 ) * 07,),
                                            Text('To diagnose an active \ninfection',style: TextStyle(color: Colors.white,fontSize: 13),),
                                            SizedBox(height: (mediaQueryData.size.height / 640 ) * 30,),
                                            Align(
                                              alignment: Alignment.topRight,
                                              child: CircleAvatar(
                                                backgroundColor: Colors.red,
                                                radius: 10,
                                                child: Icon(Icons.arrow_forward,color: Colors.white,size: 14,),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: (mediaQueryData.size.height / 640 ) * 4.0,
                                    right: (mediaQueryData.size.width / 360 ) * 5,
                                    child: Card(
                                      color: Colors.yellow[700],
                                      child: Padding(
                                        padding: EdgeInsets.fromLTRB(3, 2, 2, 2),
                                        child: Text('Reports in \n24-48 hours',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 9.8),),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                      top: (resized_height ) * 90,
                                      right: (resized_width) * 60,
                                      child: Image.asset('assets/swab.jpg',scale: 6.4,))
                                ],
                              ),
                              Stack(
                                children: [
                                  Card(
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                                    color: Colors.blue[900],
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        width: (mediaQueryData.size.width / 360 ) * 145,
                                        height: resized_height * 150,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text('Health360 \nPackage',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),),
                                            SizedBox(height:(mediaQueryData.size.height / 640 ) *  07,),
                                            Text('ECG, Ultrasound \nand 14+ more tests',style: TextStyle(color: Colors.white,fontSize: 13),),
                                            SizedBox(height: (mediaQueryData.size.height / 640 ) * 30,),
                                            Align(
                                              alignment: Alignment.topRight,
                                              child: CircleAvatar(
                                                backgroundColor: Colors.red,
                                                radius: 10,
                                                child: Icon(Icons.arrow_forward,color: Colors.white,size: 14,),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    right: (mediaQueryData.size.width / 360 ) * 4,
                                    top: (mediaQueryData.size.height / 640 ) * 4,
                                    child: Card(
                                      color: Colors.yellow[700],
                                      child: Padding(
                                        padding: EdgeInsets.fromLTRB(3, 2, 2, 2),
                                        child: Text('Introducing',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 11),),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                      top: (mediaQueryData.size.height / 640 ) * 95,
                                      right: (mediaQueryData.size.width / 360 ) * 50,
                                      child: Image.asset('assets/dad_daughter.jpg',scale: 5.7,))
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Stack(
                            children: [
                              Card(
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                                color: Color.fromRGBO(193, 228, 248, 1),
                                child: Container(
                                  height:  resized_height * 150,
                                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text('Up to 50% Off On Health Checks',style: TextStyle(color: Colors.blue[900],fontWeight: FontWeight.bold,fontSize: 17),),
                                      SizedBox(height: resized_height*  06,),
                                      Text('Thyroid Profile, Diabetes Screening & More',style: TextStyle(color: Colors.blue[700],fontSize: 13),),
                                      SizedBox(height: (mediaQueryData.size.height / 640 ) * 40,),
                                      Row(
                                        children: [
                                          Text('Book Now',style: TextStyle(color: Colors.deepOrange,fontWeight: FontWeight.bold),),
                                          SizedBox(width: (mediaQueryData.size.width / 360 ) * 20,),
                                          CircleAvatar(
                                            backgroundColor: Colors.red,
                                            child: Icon(Icons.arrow_forward,color: Colors.white,size: 14,),radius: 10,)
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                  top: (mediaQueryData.size.height / 640 ) * 58,
                                  right: (mediaQueryData.size.width / 360 ) * 10,
                                  child: Image.asset('assets/health_check_up.png',scale: 5,))
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(14, 10, 10, 0),
                          child: Text('Top Specialities',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
                        ),
                        Top_Specialities(heading: heading,card_colors: card_colors,),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(14, 10, 10, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('X-Ray and Scans',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
                              Text('Book from the best labs in your city')
                            ],
                          ),
                        ),
                        SizedBox(height: 20,),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Card(
                                color: Color.fromRGBO(236, 243, 251, 1),
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Image.asset("assets/mri_scan.jpg",scale: 8,),
                                        SizedBox(width: 05,),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text("MRI Scan",style: TextStyle(color: Color.fromRGBO(39, 63, 107, 1),fontWeight: FontWeight.bold,fontSize: 18),),
                                            Text('Starting From ₹1599',style: TextStyle(color: Color.fromRGBO(39, 63, 107, 1),fontSize: 11)),
                                          ],
                                        )
                                      ],
                                    ),
                                    SizedBox(height: 10,),
                                    Row(
                                      children: <Widget>[
                                        Text('Book Now'),
                                        SizedBox(width: 10,),
                                        CircleAvatar(
                                          backgroundColor: Colors.redAccent,
                                          radius: 10,
                                          child: Icon(Icons.arrow_forward,size: 12,color: Colors.white,),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              ),
                              Card(
                                color: Color.fromRGBO(236, 243, 251, 1),
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Row(
                                        children: <Widget>[
                                          Image.asset("assets/mri_scan.jpg",scale: 8,),
                                          SizedBox(width: (mediaQueryData.size.width / 360 ) * 05,),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text("CT Scan",style: TextStyle(color: Color.fromRGBO(39, 63, 107, 1),fontWeight: FontWeight.bold,fontSize: 18),),
                                              Text('Starting From ₹1099',style: TextStyle(color: Color.fromRGBO(39, 63, 107, 1),fontSize: 11)),
                                            ],
                                          )
                                        ],
                                      ),
                                      SizedBox(height: 10,),
                                      Row(
                                        children: <Widget>[
                                          Text('Book Now'),
                                          SizedBox(width: 10,),
                                          CircleAvatar(
                                            backgroundColor: Colors.redAccent,
                                            radius: 10,
                                            child: Icon(Icons.arrow_forward,size: 12,color: Colors.white,),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: (mediaQueryData.size.height / 640 ) * 20,),
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
