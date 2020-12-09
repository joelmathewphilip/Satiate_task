import 'package:flutter/material.dart';
import 'package:satiate_task/forgot_password/forgot_password.dart';
import 'package:satiate_task/register.dart';
import 'select_location.dart';
class Sign_In extends StatefulWidget {
  @override
  _Sign_InState createState() => _Sign_InState();
}

class _Sign_InState extends State<Sign_In> {
  bool checked_value=true;
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData=MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text('Sign In',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          padding: EdgeInsets.fromLTRB(15, 0, 15, 15),
          child: Container(
            width: mediaQueryData.size.width-15,
            color: Color.fromRGBO(243, 243, 243, 1),
            padding: const EdgeInsets.fromLTRB(15, 20, 15,20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(child: Image.asset('assets/login_illustration.jpg',scale: 2,)),
                Text('Welcome Back!',style: TextStyle(fontWeight: FontWeight.bold,color: Color.fromRGBO(0, 200, 215, 1),fontSize: 26),),
                Text('Sign in to continue',style: TextStyle(color: Colors.black,fontSize: 17),),
                SizedBox(height: (mediaQueryData.size.height / 640) * 10 ,),
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
                                SizedBox(width: 05,),
                                Icon(Icons.email,color: Color.fromRGBO(0, 200, 215, 1),),
                                SizedBox(width: 13,),
                                  Expanded(
                                    child: TextField(
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                          hintText: 'Username'
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
                      SizedBox(height: (mediaQueryData.size.height / 640) * 20,),
                      Card(
                        color: Colors.white60,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Row(
                            children: <Widget>[
                              SizedBox(width: 05,),
                              Icon(Icons.lock,color: Color.fromRGBO(0, 200, 215, 1),),
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
                          Text('Remember me',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                          SizedBox(width: (mediaQueryData.size.width / 360) *20,),
                          GestureDetector(
                              onTap: ()
                              {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Forgot_Password()),
                                );
                              },
                              child: Text('Forget Password?',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),))
                        ],
                      ),
                      SizedBox(height: (mediaQueryData.size.height / 640) * 04,),
                      Center(
                        child: FlatButton(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                          color: Color.fromRGBO(0, 200, 215, 1),
                          onPressed: ()
                          {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(builder: (context) => Select_Location()),
                            );
                          },
                          child: Container(
                              width: (mediaQueryData.size.width / 360) * 230,
                              height: (mediaQueryData.size.height / 640) * 40,
                              child: Center(child: Text('Sign In',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),))),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(23, 10, 10, 05),
                        child: Row(
                          children: [
                            Text('Already have an account?',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                            SizedBox(width: 10,),
                            GestureDetector(
                                onTap: ()
                                {
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(builder: (context) => Register()),
                                  );
                                },
                                child: Text('Sign Up',style: TextStyle(color: Color.fromRGBO(0, 200, 215, 1),fontWeight: FontWeight.bold),))
                          ],
                        ),
                      )
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
