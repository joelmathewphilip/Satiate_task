
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';

class Order_Medicine extends StatefulWidget {
  @override
  _Order_MedicineState createState() => _Order_MedicineState();
}

class _Order_MedicineState extends State<Order_Medicine> {

  File _image=null;
  final picker = ImagePicker();

  Future getImage_gallery() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);


      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
  }


  Future getImage_camera() async {
    final pickedFile = await picker.getImage(source: ImageSource.camera);

    if (pickedFile != null) {
      _image = File(pickedFile.path);
    } else {
      print('No image selected.');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 40,),
              Stack(
                children:[ Container(
                  child: Container(
                    color: Color.fromRGBO(242, 243, 245, 1),
                    padding: EdgeInsets.fromLTRB(12, 10, 0, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: <Widget>[
                            GestureDetector(

                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 18,
                                  child: Icon(Icons.arrow_back_ios,size: 17,color: Colors.black,)
                              ),
                              onTap: ()
                              {
                                Navigator.of(context).pop(false);
                              },
                            ),
                            SizedBox(width: 190,),
                            Text('Your Location \nRohini',textAlign: TextAlign.end,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                            Icon(Icons.location_on,color: Colors.black,),
                          ],
                        ),
                        SizedBox(height: 30,),
                        Text('Order Medicine',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 25,letterSpacing: 1),),
                        SizedBox(height: 20,),
                        Row(
                          children: <Widget>[
                            CircleAvatar(
                                radius:15,
                                backgroundColor: Colors.white,
                                child: Icon(Icons.av_timer,color: Colors.black,)),
                            SizedBox(width: 10,),
                            Text('Same Day Delivery',style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          children: <Widget>[
                            CircleAvatar(
                                radius:15,
                                backgroundColor: Colors.white,
                                child: Icon(Icons.bike_scooter,color: Colors.black,)),
                            SizedBox(width: 10,),
                            Text('Free Home Delivery',style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          children: <Widget>[
                            CircleAvatar(
                                radius:15,
                                backgroundColor: Colors.white,
                                child: Icon(Icons.home,color: Colors.black,)),
                            SizedBox(width: 10,),
                            Text('Contactless Delivery',style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Container(
                          width: 205,
                          padding: EdgeInsets.all(05),
                          decoration: BoxDecoration(
                              border: Border.all(
                                width: 02.5,
                                color: Color.fromRGBO(129, 193, 213, 1),
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(10))
                          ),
                          child: Row(
                            children: <Widget>[
                              Image.asset('assets/deliver_boy_2.jpg',scale: 13,),
                              SizedBox(width: 07,),
                              SizedBox(height: 10,),
                              Center(child: Text('MFine Delivery Process \n & Safety Measures',style: TextStyle(color: Color.fromRGBO(117, 200, 213, 1),fontWeight: FontWeight.bold,fontSize: 13),))

                            ],
                          ),
                        ),
                        SizedBox(height: 40,),
                      ],
                    ),
                  ),
                ),

                  Align(
                      alignment: Alignment(1.0,0),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
                        child: Image.asset('assets/deliver_boy_3.jpg',scale: 1.7,),
                      )),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  padding: EdgeInsets.all(05),
                  height: 60,
                  color: Color.fromRGBO(235, 250, 255, 1),
                  child:Row(
                    children: <Widget>[
                      Icon(Icons.alarm_on_outlined,color: Color.fromRGBO(87, 169, 193, 1),size: 35,),
                      SizedBox(width: 20,),
                      Expanded(child: Text('Get the order delivered tomorrow before 9:00 pm if you order now',style: TextStyle(color:Color.fromRGBO(87, 169, 193, 1),fontWeight: FontWeight.bold),))
                    ],
                  )
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 05,0, 0),
                child: Row(
                  children: <Widget>
                  [
                    Icon(Icons.check_circle),
                    SizedBox(width: 10,),
                    Text('Upload Prescription',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 15, 0, 0),
                child: Text('Your prescription will be securely shared only with the pharmacist, necessary for the completion of this order'),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                child: Text('What is valid prescription ?',style: TextStyle(color: Colors.lightBlue,fontWeight: FontWeight.bold,decoration: TextDecoration.underline,),),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 10, 15, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    GestureDetector(
                      onTap: getImage_gallery,
                      child: Card(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                        color: Colors.redAccent,
                        child: Container(
                          width: 100,
                          height: 140,
                          padding: EdgeInsets.all(10),
                          child: Column(
                            children: <Widget>[
                              SizedBox(height: 20,),
                              CircleAvatar(
                                backgroundColor: Colors.red,
                                radius: 24,
                                child: CircleAvatar(
                                  radius: 20,
                                  backgroundColor: Colors.white,
                                    child: Icon(Icons.upload_rounded,color: Colors.lightBlue,size: 30,)),
                              ),
                              SizedBox(height: 20,),
                              Text('Upload \n Image',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 14),)
                            ],
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: getImage_camera,
                      child: Card(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                        color: Colors.purpleAccent,
                        child: Container(
                          width: 100,
                          height: 140,
                          padding: EdgeInsets.all(10),
                          child: Column(
                            children: <Widget>[
                              SizedBox(height: 20,),
                              CircleAvatar(
                                backgroundColor: Colors.purple,
                                radius: 24,
                                child: CircleAvatar(
                                    radius: 20,
                                    backgroundColor: Colors.white,
                                    child: Icon(Icons.camera_alt,color: Colors.lightBlue,size: 30,)),
                              ),
                              SizedBox(height: 20,),
                              Text('Take \n Photo',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 14),)
                            ],
                          ),
                        ),
                      ),
                    ),
                    Card(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                      color: Colors.deepPurpleAccent,
                      child: Container(
                        width: 100,
                        height: 140,
                        padding: EdgeInsets.all(10),
                        child: Column(
                          children: <Widget>[
                            SizedBox(height: 20,),
                            CircleAvatar(
                              backgroundColor: Colors.deepPurple,
                              radius: 24,
                              child: CircleAvatar(
                                  radius: 20,
                                  backgroundColor: Colors.white,
                                  child: Icon(Icons.message,color: Colors.lightBlue,size: 30,)),
                            ),
                            SizedBox(height: 20,),
                            Expanded(child: Text('MFine \n Prescription',textAlign:TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 14),))
                          ],
                        ),
                      ),
                    )

                  ],
                ),
              ),
              SizedBox(height: 30,),
            ],
          ),
        ),
      ),
    );
  }
}
