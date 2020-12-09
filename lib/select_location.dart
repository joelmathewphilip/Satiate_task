import 'package:flutter/material.dart';
import 'package:satiate_task/main_page.dart';

class Select_Location extends StatefulWidget {
  @override
  _Select_LocationState createState() => _Select_LocationState();
}

class _Select_LocationState extends State<Select_Location> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData=MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text('Select Location',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
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
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'Select Your City'
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
                                      hintText: 'Select Your Area'
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
                      Center(
                        child: FlatButton(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                          color: Color.fromRGBO(0, 200, 215, 1),
                          onPressed: ()
                          {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                builder: (context) => Main_Page()
                            ),
                            );
                          },
                          child: Container(
                              width: (mediaQueryData.size.width / 360) * 230,
                              height: (mediaQueryData.size.height / 640) * 40,
                              child: Center(child: Text('Sign In',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),))),
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
