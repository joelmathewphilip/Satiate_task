import 'package:flutter/material.dart';
import 'package:satiate_task/Constants.dart';
import 'package:satiate_task/WantToVerifyNumber.dart';
import 'package:satiate_task/sign_in.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool checked_value=true;
  double resized_width;
  double resized_height;
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData=MediaQuery.of(context);
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
                alignment: Alignment(0,  (1 / resized_height) * 0.40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width:resized_width * 20,),
                    Icon(Icons.keyboard_backspace_sharp,color: Colors.white,),
                    SizedBox(width: (resized_width )*20,),
                    Text('Register',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
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
              padding: EdgeInsets.fromLTRB(
                resized_width * 13,
                resized_height * 18,
                resized_width * 13,
                resized_height * 10),
              child: Container(
                color: Color.fromRGBO(243, 243, 243, 1),
                padding: EdgeInsets.fromLTRB(resized_width * 13, resized_height* 15,resized_width * 13, resized_height *15),
                child: Container(
                  padding: EdgeInsets.all(15),
                  color: Colors.white,
                  child: Center(
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Color.fromRGBO(243, 243, 243, 1),
                            child: Icon(Icons.camera_alt,color: Colors.black,),
                          ),
                          SizedBox(height: 30,),
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
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintText: 'Full Name'
                                      ),
                                      onChanged: (text)
                                      {
                                        print("helli");
                                      },
                                    ),
                                  )
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
                                        keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintText: 'Phone Number'
                                      ),
                                      onChanged: (text)
                                      {
                                        print("helli");
                                      },
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height:resized_height * 10,),
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
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintText: 'Email'
                                      ),
                                      onChanged: (text)
                                      {
                                        print("helli");
                                      },
                                    ),
                                  )
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
                                  SizedBox(width: 13,),
                                  Expanded(
                                    child: TextField(
                                      obscureText: true,
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintText: 'Password'
                                      ),
                                      onChanged: (text)
                                      {
                                        print("helli");
                                      },
                                    ),
                                  )
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
                                      obscureText: true,
                                      decoration: InputDecoration(
                                          border: InputBorder.none,

                                          hintText: 'Confirm Password'
                                      ),
                                      onChanged: (text)
                                      {
                                        print("helli");
                                      },
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: resized_height * 20,),
                          Row(
                            children: <Widget>[
                              Checkbox(
                                activeColor: Colors.blue,
                                onChanged: (val)
                                {
                                  setState(() {
                                    checked_value=!checked_value;
                                  });
                                },
                                value: checked_value,
                              ),
                              Expanded(child: Text('By Creating an account you agree to our Terms of Service and Privacy Policy',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),
                            ],
                          ),
                          SizedBox(height: resized_height * 10,),
                          Center(
                            child: FlatButton(
                              minWidth: (resized_width) * 250,
                              height: (resized_height) * 40,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                              color:Constants_Class().primary_color_code,
                              onPressed: ()
                              {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => WantToVerify_Number()),
                                );
                              },
                              child: Center(child: Text('Register',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),)),
                            ),
                          ),
                          SizedBox(height: resized_height * 10,),
                          Row(
                            children: [
                              SizedBox(width: resized_width * 20,),
                              Text('Already have an account?',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                              SizedBox(width: resized_width * 05,),
                              GestureDetector(
                                  onTap: ()
                                  {
                                    Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(builder: (context) => Sign_In()),
                                    );
                                  },
                                  child: Text('Sign In',style: TextStyle(color: Constants_Class().primary_color_code,fontWeight: FontWeight.bold),))
                            ],
                          ),
                          SizedBox(height:resized_height *  20,)
                        ],
                      ),
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
