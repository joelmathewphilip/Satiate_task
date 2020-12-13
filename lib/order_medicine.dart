import 'dart:io';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';
import 'package:satiate_task/Constants.dart';
import 'package:satiate_task/ocr_detect_medicine/detect_medicine.dart';

class Order_Medicine extends StatefulWidget {
  @override
  _Order_MedicineState createState() => _Order_MedicineState();
}

class _Order_MedicineState extends State<Order_Medicine> {
  File _image = null, croppedFile = null;
  final picker = ImagePicker();

  Future getImage_gallery() async {
    final pickedFile = await picker.getImage(
        source: ImageSource.gallery, maxHeight: 2048, maxWidth: 2048);

    if (pickedFile != null) {
      _image = File(pickedFile.path);
      crop_image(_image);
    } else {
      print('No image selected.');
    }
  }

  Future crop_image(File image_to_be_cropped) async {
    File croppedFile = await ImageCropper.cropImage(
        sourcePath: image_to_be_cropped.path,
        aspectRatioPresets: [
          CropAspectRatioPreset.square,
          CropAspectRatioPreset.ratio3x2,
          CropAspectRatioPreset.original,
          CropAspectRatioPreset.ratio4x3,
          CropAspectRatioPreset.ratio16x9
        ],
        androidUiSettings: AndroidUiSettings(
            toolbarTitle: 'Cropper',
            toolbarColor: Constants_Class().primary_color_code,
            toolbarWidgetColor: Colors.white,
            initAspectRatio: CropAspectRatioPreset.original,
            lockAspectRatio: false),
        iosUiSettings: IOSUiSettings(
          minimumAspectRatio: 1.0,
        ));
    if (croppedFile != null) {
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => Detect_medicine(
                  imageFile: croppedFile,full_image_file:image_to_be_cropped
                )),
      );
    }
  }

  double resized_width;
  double resized_height;

  Future getImage_camera() async {
    final pickedFile = await picker.getImage(
        source: ImageSource.camera, maxHeight: 2048, maxWidth: 2048);

    if (pickedFile != null) {
      _image = File(pickedFile.path);
      crop_image(_image);
    } else {
      print('No image selected.');
    }
  }

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
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
                    IconButton(
                      onPressed: ()
                      {
                        Navigator.of(context).pop();
                      },
                        icon: Icon(Icons.keyboard_backspace_sharp,color: Colors.white),
                        ),
                    SizedBox(width: 12,),
                    Text(
                      'Order Medicines',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: resized_width * 12,
                    ),
                    Text(
                      'Your Location \nRohini',
                      textAlign: TextAlign.end,
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    Icon(
                      Icons.location_on,
                      color: Colors.white,
                    ),
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
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: resized_height * 40,
                    ),
                    Stack(
                      children: [
                        Container(
                          child: Container(
                            color: Color.fromRGBO(242, 243, 245, 1),
                            padding: EdgeInsets.fromLTRB(
                                resized_width * 12, resized_height * 10, 0, 0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: resized_height * 30,
                                ),
                                Text(
                                  'Order Medicine',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25,
                                      letterSpacing: 1),
                                ),
                                SizedBox(
                                  height: resized_height * 20,
                                ),
                                Row(
                                  children: <Widget>[
                                    CircleAvatar(
                                        radius: 15,
                                        backgroundColor: Colors.white,
                                        child: Icon(
                                          Icons.av_timer,
                                          color: Colors.black,
                                        )),
                                    SizedBox(
                                      width: resized_width * 10,
                                    ),
                                    Text(
                                      'Same Day Delivery',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: resized_height * 10,
                                ),
                                Row(
                                  children: <Widget>[
                                    CircleAvatar(
                                        radius: 15,
                                        backgroundColor: Colors.white,
                                        child: Icon(
                                          Icons.bike_scooter,
                                          color: Colors.black,
                                        )),
                                    SizedBox(
                                      width: resized_width * 10,
                                    ),
                                    Text(
                                      'Free Home Delivery',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: resized_height * 10,
                                ),
                                Row(
                                  children: <Widget>[
                                    CircleAvatar(
                                        radius: 15,
                                        backgroundColor: Colors.white,
                                        child: Icon(
                                          Icons.home,
                                          color: Colors.black,
                                        )),
                                    SizedBox(
                                      width: resized_width * 10,
                                    ),
                                    Text(
                                      'Contactless Delivery',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: resized_height * 10,
                                ),
                                Container(
                                  width: resized_width * 205,
                                  padding: EdgeInsets.all(05),
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                        width: 02.5,
                                        color: Color.fromRGBO(129, 193, 213, 1),
                                      ),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                  child: Row(
                                    children: <Widget>[
                                      Image.asset(
                                        'assets/deliver_boy_2.jpg',
                                        scale: 13,
                                      ),
                                      SizedBox(
                                        width: resized_width * 07,
                                      ),
                                      SizedBox(
                                        height: resized_height * 10,
                                      ),
                                      Center(
                                          child: Text(
                                        'MFine Delivery Process \n & Safety Measures',
                                        style: TextStyle(
                                            color: Color.fromRGBO(
                                                117, 200, 213, 1),
                                            fontWeight: FontWeight.bold,
                                            fontSize: 13),
                                      ))
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: resized_height * 40,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                            alignment: Alignment(1.0, 0),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
                              child: Image.asset(
                                'assets/deliver_boy_3.jpg',
                                scale: 1.7,
                              ),
                            )),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                          padding: EdgeInsets.all(05),
                          height: resized_height * 60,
                          color: Color.fromRGBO(235, 250, 255, 1),
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.alarm_on_outlined,
                                color: Color.fromRGBO(87, 169, 193, 1),
                                size: 35,
                              ),
                              SizedBox(
                                width: resized_width * 20,
                              ),
                              Expanded(
                                  child: Text(
                                'Get the order delivered tomorrow before 9:00 pm if you order now',
                                style: TextStyle(
                                    color: Color.fromRGBO(87, 169, 193, 1),
                                    fontWeight: FontWeight.bold),
                              ))
                            ],
                          )),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(
                          resized_width * 15, resized_height * 05, 0, 0),
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.check_circle),
                          SizedBox(
                            width: resized_width * 10,
                          ),
                          Text(
                            'Upload Prescription',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(
                          resized_width * 15, resized_height * 15, 0, 0),
                      child: Text(
                          'Your prescription will be securely shared only with the pharmacist, necessary for the completion of this order'),
                    ),
                    SizedBox(
                      height: resized_height * 10,
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(resized_width * 15, 0, 0, 0),
                      child: Text(
                        'What is valid prescription ?',
                        style: TextStyle(
                          color: Colors.lightBlue,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(resized_width * 15,
                          resized_height * 10, resized_width * 15, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          GestureDetector(
                            onTap: getImage_gallery,
                            child: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(14)),
                              color: Colors.redAccent,
                              child: Container(
                                height: resized_height * 140,
                                width: resized_width * 95,
                                padding: EdgeInsets.all(10),
                                child: Column(
                                  children: <Widget>[
                                    SizedBox(
                                      height: resized_height * 20,
                                    ),
                                    CircleAvatar(
                                      backgroundColor: Colors.red,
                                      radius: 24,
                                      child: CircleAvatar(
                                          radius: 20,
                                          backgroundColor: Colors.white,
                                          child: Icon(
                                            Icons.upload_rounded,
                                            color: Colors.lightBlue,
                                            size: 30,
                                          )),
                                    ),
                                    SizedBox(
                                      height: resized_height * 10,
                                    ),
                                    Text(
                                      'Upload \n Image',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 14),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: getImage_camera,
                            child: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(14)),
                              color: Colors.purpleAccent,
                              child: Container(
                                height: resized_height * 140,
                                width: resized_width * 95,
                                padding: EdgeInsets.all(10),
                                child: Column(
                                  children: <Widget>[
                                    SizedBox(
                                      height: resized_height * 20,
                                    ),
                                    CircleAvatar(
                                      backgroundColor: Colors.purple,
                                      radius: 24,
                                      child: CircleAvatar(
                                          radius: 20,
                                          backgroundColor: Colors.white,
                                          child: Icon(
                                            Icons.camera_alt,
                                            color: Colors.lightBlue,
                                            size: 30,
                                          )),
                                    ),
                                    SizedBox(
                                      height: resized_height * 10,
                                    ),
                                    Text(
                                      'Take \n Photo',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 14),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(14)),
                            color: Colors.deepPurpleAccent,
                            child: Container(
                              height: resized_height * 140,
                              width: resized_width * 96,
                              padding: EdgeInsets.all(10),
                              child: Column(
                                children: <Widget>[
                                  SizedBox(
                                    height: resized_height * 20,
                                  ),
                                  CircleAvatar(
                                    backgroundColor: Colors.deepPurple,
                                    radius: 24,
                                    child: CircleAvatar(
                                        radius: 20,
                                        backgroundColor: Colors.white,
                                        child: Icon(
                                          Icons.message,
                                          color: Colors.lightBlue,
                                          size: 30,
                                        )),
                                  ),
                                  SizedBox(height: resized_height * 10,),
                                  Expanded(
                                      child: Text(
                                    'MFine\nPrescription',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 14),
                                  ))
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: resized_height * 30,
                    ),
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
