import 'package:flutter/material.dart';
import 'package:satiate_task/Constants.dart';
import 'package:satiate_task/main_page/main_page.dart';
import 'package:satiate_task/sign_in.dart';

class Change_Password extends StatefulWidget {
  @override
  _Change_PasswordState createState() => _Change_PasswordState();
}

class _Change_PasswordState extends State<Change_Password> {
  double resized_width;
  double resized_height;
  bool old_password_show=false,new_password_show=false,confirm_password_show=false;
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
                alignment: Alignment(0, (1/ resized_height) * 0.40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: (resized_width)* 5,),
                    IconButton(icon:Icon(Icons.keyboard_backspace_sharp),color: Colors.white,
                      onPressed: ()
                      {
                        Navigator.of(context).pop();
                      },),
                    SizedBox(width: (resized_width )* 20,),
                    Text('Change Password',style: TextStyle(color: Colors.white,fontSize: 23,fontWeight: FontWeight.bold),),
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
              padding: EdgeInsets.fromLTRB(resized_width * 15, resized_height* 20, resized_width * 15, resized_height* 15),
              child: Container(
                //height: double.infinity,
                width: mediaQueryData.size.width-15,
                color: Color.fromRGBO(243, 243, 243, 1),
                padding: EdgeInsets.fromLTRB(resized_width * 10,resized_height*  20,resized_width *  10,resized_height *20),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Center(child: Image.asset('assets/login_illustration.jpg',scale: 2,)),
                      Container(
                        color: Colors.white,
                        padding: EdgeInsets.all(10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Card(
                              color: Colors.white60,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Row(
                                  children: <Widget>[
                                    SizedBox(width: resized_width * 13,),
                                    Expanded(
                                      child: TextField(
                                        obscureText: !old_password_show,
                                        decoration: InputDecoration(
                                            border: InputBorder.none,
                                            hintText: 'Old Password'
                                        ),
                                        onChanged: (text)
                                        {
                                          print("helli");
                                        },
                                      ),
                                    ),
                                    IconButton(
                                      icon: Icon(Icons.remove_red_eye),
                                      color: old_password_show ?  Constants_Class().primary_color_code : Colors.white60,
                                      onPressed: ()
                                      {
                                        setState(() {
                                          old_password_show=!old_password_show;
                                        });
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: resized_height * 10,),
                            Card(
                              color: Colors.white60,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Row(
                                  children: <Widget>[
                                    SizedBox(width: resized_width * 13,),
                                    Expanded(
                                      child: TextField(
                                        obscureText: !new_password_show,
                                        decoration: InputDecoration(
                                            border: InputBorder.none,
                                            hintText: 'New Password'
                                        ),
                                        onChanged: (text)
                                        {
                                          print("helli");
                                        },
                                      ),
                                    ),
                                    IconButton(
                                      icon: Icon(Icons.remove_red_eye),
                                      color: new_password_show ?  Constants_Class().primary_color_code : Colors.white60,
                                      onPressed: ()
                                      {
                                        setState(() {
                                          new_password_show=!new_password_show;
                                        });
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: resized_height * 10,),
                            Card(
                              color: Colors.white60,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Row(
                                  children: <Widget>[
                                    SizedBox(width: resized_width * 13,),
                                    Expanded(
                                      child: TextField(
                                        obscureText: !confirm_password_show,
                                        decoration: InputDecoration(
                                            border: InputBorder.none,
                                            hintText: 'Confirm New Password'
                                        ),
                                        onChanged: (text)
                                        {
                                          print("helli");
                                        },
                                      ),
                                    ),
                                    IconButton(
                                      icon: Icon(Icons.remove_red_eye),
                                      color: confirm_password_show ?  Constants_Class().primary_color_code : Colors.white60 ,
                                      onPressed: ()
                                      {
                                        setState(() {
                                          confirm_password_show=!confirm_password_show;
                                        });
                                      },
                                    ),

                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height:resized_height *  20,),
                            Center(
                              child: FlatButton(
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                color: Constants_Class().primary_color_code,
                                onPressed: ()
                                {
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Sign_In()
                                    ),
                                  );
                                },
                                child: Container(
                                    width: (resized_width) * 230,
                                    height: (resized_height ) * 40,
                                    child: Center(child: Text('Send',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),))),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
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
