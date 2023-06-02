import 'package:dawini/start_page/start_page.dart';
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
        backgroundColor: Color(0xFFE9EEF2),

      ),
      home: StartPage(),
    );
  }
}