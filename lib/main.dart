import 'package:flutter/material.dart';
import 'package:satiate_task/index.dart';
import 'package:satiate_task/order_medicine.dart';
import 'package:satiate_task/profile_page.dart';
import 'package:satiate_task/request_call_back.dart';
import 'package:satiate_task/main_page.dart';
import 'package:satiate_task/splash_screen.dart';
import 'choose_best_doctor.dart';
import 'calendar.dart';
import 'sign_in.dart';
import 'package:flutter/services.dart';
import 'register.dart';
//import 'smart_booking_system.dart';
//import 'find_trusted_doctor.dart';
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
      home: SplashScreen(),
    );
  }
}
