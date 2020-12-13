import 'package:flutter/material.dart';
import 'package:satiate_task/Constants.dart';

class About_The_App extends StatelessWidget {

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
                alignment: Alignment(0, 1 / resized_height * 0.40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: (mediaQueryData.size.width  / 360 )* 20,),
                    IconButton(icon:Icon(Icons.keyboard_backspace_sharp,color: Colors.white,),
                        onPressed: ()
                      {
                        Navigator.of(context).pop();
                      },),
                    SizedBox(width: (resized_width )* 20,),
                    Text('About The App',style: TextStyle(color: Colors.white,fontSize: 23,fontWeight: FontWeight.bold),),
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
              padding: EdgeInsets.all(15),
              child:SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(13),
                      child: Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the '
                          '1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker '
                          'including versions of Lorem Ipsum.',style: TextStyle(color: Colors.black,fontSize: 18),),
                    )
                  ],
                ),
              ) ,
            ),
          ),
        ],
      ),
    );
  }
}
