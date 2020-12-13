import 'package:flutter/material.dart';
import 'package:satiate_task/custom_animation.dart';
import 'doctor/doctor_profile.dart';
import 'package:satiate_task/index.dart';
import 'package:satiate_task/main_page/specialities.dart';
import 'package:satiate_task/main_page/symptoms.dart';
import 'package:satiate_task/ocr_detect_medicine/detect_medicine.dart';
import 'package:satiate_task/order_medicine.dart';
import 'package:satiate_task/profile_page.dart';
import 'package:satiate_task/request_call_back.dart';
import 'package:satiate_task/main_page/main_page.dart';
import 'package:satiate_task/splash_screen.dart';
import 'choose_best_doctor.dart';
import 'calendar/calendar.dart';
import 'sign_in.dart';
import 'package:flutter/services.dart';
import 'register.dart';
import 'select_location.dart';
import 'verify_number.dart';
import 'package:satiate_task/WantToVerifyNumber.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
        ),
      ),
      home:Custom_Animation(),
    );
  }
}
