import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:satiate_task/sign_in.dart';
//import 'find_trusted_doctor.dart';
class ChooseBestDoctor extends StatefulWidget {
  @override
  _ChooseBestDoctorState createState() => _ChooseBestDoctorState();
}

class _ChooseBestDoctorState extends State<ChooseBestDoctor> {
  double new_height(double screen_height,double height)
  {
    return (screen_height/640)*height;
  }

  Widget design1(int selected,MediaQueryData mediaQueryData)
  {
    if(selected == 0)
      {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              color: Colors.white,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              child: Container(
                width: 40,
                height: (mediaQueryData.size.height / 640 )*10,
                //color: Colors.white,
              ),
            ),
            SizedBox(width: 05,),
            CircleAvatar(backgroundColor: Colors.white,radius: 6,),
            SizedBox(width: 05,),
            CircleAvatar(backgroundColor: Colors.white,radius: 6,),
          ],
        );
      }
    else
      if(selected == 1)
        {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(backgroundColor: Colors.white,radius: 6,),
              SizedBox(width: 05,),
              Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                child: Container(
                  width: 40,
                  height: 10,
                  //color: Colors.white,
                ),
              ),
              SizedBox(width: 05,),
              CircleAvatar(backgroundColor: Colors.white,radius: 6,),
            ],
          );
        }
      else if(selected == 2)
        {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(backgroundColor: Colors.white,radius: 6,),
              SizedBox(width: 05,),
              CircleAvatar(backgroundColor: Colors.white,radius: 6,),
              SizedBox(width: 05,),
              Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
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
  int selected=0;
  List<String> heading = ["Choose Best Doctor","Find Trusted Doctor","Smart Booking System"];
  List<String> content=["Lorem ipsum Lore ipsum it is sometimes know as as dummy text used in laying out print graphic or web design",
  "Lorem ipsum Lore ipsum it is sometimes know as as dummy text used in laying out print graphic or web design",
    "Lorem ipsum Lore ipsum it is sometimes know as as dummy text used in laying out print graphic or web design"];
  List<String> button=["Next","Next","Get Started"];
  @override
  Widget build(BuildContext context) {
      MediaQueryData mediaQueryData=MediaQuery.of(context);
      print(mediaQueryData.size.height);
      return Scaffold(
        body: Container(
          padding: EdgeInsets.fromLTRB(10, 25, 10, 5),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Image.asset('assets/doc_scan.jpg',scale: 1,),
                SizedBox(height: (mediaQueryData.size.height / 640)*40,),
                Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                  color: Color.fromRGBO(0, 200, 215, 1),
                  child: Container(
                    width: double.infinity,
                    height: (mediaQueryData.size.height / 640 )*330,
                    child: Column(
                      children: <Widget>[
                        SizedBox(height: (mediaQueryData.size.height / 640) * 30,),
                        Text(heading[selected],style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),),
                        SizedBox(height: (mediaQueryData.size.height / 640) * 20,),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(30, 05, 30, 03),
                          child: Text(content[selected],textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white,fontSize: 17),),
                        ),
                        SizedBox(height: (mediaQueryData.size.height / 640 )*30,),
                        design1(selected,mediaQueryData),
                        SizedBox(height: (mediaQueryData.size.height / 640)* 30,),
                        FlatButton(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                          color: Colors.white,
                          onPressed: ()
                          {
                            if(selected == 2)
                              {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(builder: (context) => Sign_In()),
                                );
                              }
                            else {
                              setState(() {
                                selected = selected + 1;
                              });
                            }
                          },
                          child: Container(
                            width: (mediaQueryData.size.width / 360) * 200,
                            height: (mediaQueryData.size.height / 640) * 40,
                            child: Center(
                              child: Text(button[selected],
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Color.fromRGBO(0, 200, 215, 1),fontWeight: FontWeight.bold),),
                            ),
                          ),),
                        SizedBox(height: (mediaQueryData.size.height / 640 )*10,),
                        Divider(color: Colors.white,indent: 100,endIndent: 100,thickness: 4,)
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
