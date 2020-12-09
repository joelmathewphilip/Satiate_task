import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:satiate_task/forgot_password/change_password.dart';

class Enter_Code extends StatefulWidget {
  @override
  _Enter_CodeState createState() => _Enter_CodeState();
}

class _Enter_CodeState extends State<Enter_Code> {
  @override
  Widget alert_box(BuildContext context)
  {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            child: Container(
              height: 170,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    height: 60,
                    padding: EdgeInsets.all(10),
                    child: Center(child: Text('Password Reset Email Sent',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 17),)),
                    color: Color.fromRGBO(0, 200, 215, 1),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Center(child: Text('An Email Has Been Send. Follow The Instructions To Reset Your Password',textAlign: TextAlign.center,style: TextStyle(fontSize: 15),)),
                  )
                ],
              ),
            ),
          );
        });
  }
  void initState()
  {
    super.initState();
    Future.delayed(Duration.zero, () {
      alert_box(context);
    });
  }

  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData=MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text('Enter Verification Code',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
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
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text('Please Enter The Code You Received In Your Email to Reset Your Password',textAlign: TextAlign.center,),
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
                                      hintText: 'Enter 6 digit Code'
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
                      GestureDetector(
                          onTap: ()
                          {
                            alert_box(context);
                          },
                          child: Text('Resend Code',textAlign: TextAlign.right,style: TextStyle(color: Color.fromRGBO(0, 200, 215, 1),fontWeight: FontWeight.bold),)),
                      SizedBox(height: 10,),
                      Center(
                        child: FlatButton(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                          color: Color.fromRGBO(0, 200, 215, 1),
                          onPressed: ()
                          {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Change_Password()
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
