import 'package:flutter/material.dart';
import 'package:satiate_task/WantToVerifyNumber.dart';
import 'package:satiate_task/sign_in.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool checked_value=true;
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData=MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text('Register',style: TextStyle(color: Colors.black),),
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
                          SizedBox(width: 13,),
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
                  SizedBox(height: 10,),
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
                  SizedBox(height: 10,),
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
                  SizedBox(height: 10,),
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
                  SizedBox(height: 10,),
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
                  SizedBox(height: 20,),
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
                  SizedBox(height: 10,),
                  Center(
                    child: FlatButton(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                      color: Color.fromRGBO(0, 200, 215, 1),
                      onPressed: ()
                      {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => WantToVerify_Number()),
                        );
                      },
                      child: Container(
                          width: (mediaQueryData.size.width / 360) * 250,
                          height: (mediaQueryData.size.height / 640) * 40,
                          child: Center(child: Text('Register',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(35, 10, 10, 05),
                    child: Row(
                      children: [
                        Text('Already have an account?',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                        SizedBox(width: 10,),
                        GestureDetector(
                            onTap: ()
                            {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(builder: (context) => Sign_In()),
                              );
                            },
                            child: Text('Sign In',style: TextStyle(color: Color.fromRGBO(0, 200, 215, 1),fontWeight: FontWeight.bold),))
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
