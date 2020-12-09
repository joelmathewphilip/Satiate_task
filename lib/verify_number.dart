import 'package:flutter/material.dart';
import 'package:satiate_task/main_page.dart';

class Verify_Number extends StatefulWidget {
  @override
  _Verify_NumberState createState() => _Verify_NumberState();
}

class _Verify_NumberState extends State<Verify_Number> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData=MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text('Verifying Number',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.fromLTRB(15, 0, 15, 15),
          child: Container(
            //height: double.infinity,
            width: mediaQueryData.size.width-15,
            color: Color.fromRGBO(243, 243, 243, 1),
            padding: const EdgeInsets.fromLTRB(10, 10, 10,20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(child: Image.asset('assets/verify_number.jpg',scale: 2,)),
                SizedBox(height: 20,),
                Container(
                  color: Colors.white,
                  padding: EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(height: 10,),
                      Text('We have send a verification code to \n+88 000 111 333',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
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
                                    keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'Enter Code'
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
                      Align(
                          alignment: Alignment.centerRight,
                          child: Text('1:20 Sec Left',textAlign: TextAlign.center,)),
                      SizedBox(height: 20,),
                      Center(
                        child: FlatButton(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                          color: Color.fromRGBO(0, 200, 215, 1),
                          onPressed: ()
                          {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(builder: (context) => Main_Page()),
                            );
                          },
                          child: Container(
                              width: (mediaQueryData.size.width / 360) * 230,
                              height: (mediaQueryData.size.height / 640) * 40,
                              child: Center(child: Text('Verify',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),))),
                        ),
                      ),
                  SizedBox(height: 05,), SizedBox(height: 15,),
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
