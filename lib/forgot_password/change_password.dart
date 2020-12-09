import 'package:flutter/material.dart';
import 'package:satiate_task/main_page.dart';
import 'package:satiate_task/sign_in.dart';

class Change_Password extends StatefulWidget {
  @override
  _Change_PasswordState createState() => _Change_PasswordState();
}

class _Change_PasswordState extends State<Change_Password> {



  bool old_password_show=false,new_password_show=false,confirm_password_show=false;
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData=MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text('Change Password',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.fromLTRB(15, 0, 15, 15),
          child: Container(
            //height: double.infinity,
            width: mediaQueryData.size.width-15,
            color: Color.fromRGBO(243, 243, 243, 1),
            padding: const EdgeInsets.fromLTRB(10, 20, 10,20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                              SizedBox(width: 13,),
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
                                color: old_password_show ?  Color.fromRGBO(0, 200, 215, 1) : Colors.white60,
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
                                color: new_password_show ?   Color.fromRGBO(0, 200, 215, 1) : Colors.white60,
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
                                color: confirm_password_show ?   Color.fromRGBO(0, 200, 215, 1) : Colors.white60 ,
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
                      SizedBox(height: 20,),
                      Center(
                        child: FlatButton(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                          color: Color.fromRGBO(0, 200, 215, 1),
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
                              width: (mediaQueryData.size.width / 360) * 230,
                              height: (mediaQueryData.size.height / 640) * 40,
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
    );
  }
}
