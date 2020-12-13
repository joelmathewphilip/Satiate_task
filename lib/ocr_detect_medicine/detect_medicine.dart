import 'dart:io';
import 'package:flutter/material.dart';
import 'package:satiate_task/Constants.dart';
import 'package:firebase_ml_vision/firebase_ml_vision.dart';

class Detect_medicine extends StatefulWidget {
  File imageFile;
  File full_image_file;

  Detect_medicine({this.imageFile,this.full_image_file});

  @override
  _Detect_medicineState createState() => _Detect_medicineState(full_image_file: full_image_file);
}

class _Detect_medicineState extends State<Detect_medicine> {
  String detected_text="initial_value";
  File full_image_file = null;
  _Detect_medicineState({this.full_image_file});
  List<Rect> coordinates = [];
  void initState()
  {
    super.initState();
    return_text_from_image();
  }
  Future<String> return_text_from_image() async
  {
    final FirebaseVisionImage visionImage = FirebaseVisionImage.fromFile(widget.imageFile,);
    final TextRecognizer textRecognizer = FirebaseVision.instance.textRecognizer();
    final VisionText visionText = await textRecognizer.processImage(visionImage);

    detected_text="";
    for(TextBlock block in visionText.blocks)
      {
        for(TextLine line in block.lines)
          {
            for(TextElement word in line.elements)
              {
                Rect box = word.boundingBox;
                print(word.boundingBox);
                coordinates.add(box);
                print(word.text);
                detected_text=detected_text+word.text+" ";
              }
            detected_text=detected_text+"\n";
          }
      }
    setState(() {
    });
  }
  double resized_width;
  double resized_height;

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    resized_width = (mediaQueryData.size.width / 360);
    resized_height = (mediaQueryData.size.height / 640);
    return Scaffold(
      backgroundColor: Constants_Class().primary_color_code,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: resized_height * 100,
            width: double.infinity,

            child: Align(
                alignment: Alignment(0, 1 / resized_height * 0.40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: (resized_width) * 95,
                    ),
                    Text(
                      'Detect Medicine',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 23,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                )),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius:
                BorderRadius.vertical(top: Radius.circular(30.0)),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0.0, 1.0), //(x,y)
                    blurRadius: 5.0,
                  ),
                ],
              ),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    SizedBox(height: resized_height* 20,),
                    Container(child: Stack(
                      children: [
                        Image.file(full_image_file,width: 210,),

                      ],
                    ),decoration: BoxDecoration(

                        border: Border.all(color: Colors.blueAccent,width: 3)
                    ),),
                    SizedBox(height: resized_height * 20,),
                    detected_text == "initial_value" ? CircularProgressIndicator() : Text(detected_text,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
                    SizedBox(height: resized_height * 10,),
                    FlatButton(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                      onPressed: ()
                      {
                        Navigator.pop(context);
                      },
                      minWidth: 240,
                      height: 40,
                      color: Constants_Class().primary_color_code,
                      child: Text('Submit',style: TextStyle(color: Colors.white,fontSize: 19),),
                    ),
                    SizedBox(height: 20,),
                  ],
                ),
              ),
            ),
          ),

        ],
      ),
    );

  }
}

