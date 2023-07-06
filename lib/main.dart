import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:dawini/auth/sign%20in/signin_view.dart';
import 'package:dawini/available_time/doc_available_time.dart';
import 'package:dawini/doctor_pages/doc_clinic_info.dart';
import 'package:dawini/home/home_layout.dart';
import 'package:dawini/home/home_view.dart';
import 'package:dawini/home_page/home_view/clinic_info.dart';
import 'package:dawini/home_page/home_view/doctor_info.dart';
import 'package:dawini/home_page/home_view/home_view.dart';
import 'package:dawini/instants/colors.dart';
import 'package:dawini/instants/doctors.dart';
import 'package:dawini/onboarding/onboarding_view.dart';
import 'package:dawini/splash_screen/splash_screen.dart';
import 'package:dawini/start_page/start_page.dart';
import 'package:dawini/test_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import "package:dawini/services/data.dart";


void main()
{
  DioHelper.init();
  runApp(MyApp());
}
class MyApp extends StatefulWidget
{
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context)
  {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Kollektif',

      ),
      home:HomeLayout(),
    );
  }
}