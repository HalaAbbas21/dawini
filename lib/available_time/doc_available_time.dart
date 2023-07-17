import 'package:dawini/awesome_nav_bar/awesome_nav_bar.dart';
import 'package:dawini/home/home_layout.dart';
import 'package:dawini/home_page/home_view/doctor_info.dart';
import 'package:dawini/user_pages/appointments/appointments_view.dart';
import 'package:dawini/user_pages/messages/messages_view.dart';
import 'package:dawini/user_pages/notifications/notification_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../auth/sign up/gender_selection/gender_selection_view.dart';
import '../home_page/home_view/doctors_list.dart';
import '../instants/colors.dart';

class DoctorAvailableTime extends StatefulWidget {
  const DoctorAvailableTime({Key? key}) : super(key: key);

  @override
  State<DoctorAvailableTime> createState() => _DoctorAvailableTimeState();
}

class _DoctorAvailableTimeState extends State<DoctorAvailableTime> {
  Color selectedColor=AppColors.primary;
  Color selectedTextColor=AppColors.white;
  @override
  Widget build(BuildContext context) {

    double screenWidth=MediaQuery.of(context).size.width;
    double screenHeight=MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.white,
        leading: const Padding(
          padding: EdgeInsets.only(left: 18.0),
          child: CircleAvatar(
              radius: 0,
              backgroundColor: AppColors.primary,
              child: BackButton(color: AppColors.white,
              ),

          ),
        ),
        title: const Text(
          'Available Time',
          style: TextStyle(
              color: AppColors.primary,
              fontWeight: FontWeight.w500,
              fontSize: 24,
              letterSpacing: 0
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 30,),
                const Padding(
                  padding: EdgeInsets.only(left:20.0),
                  child: Text('Sunday, 20th August 2023',
                    style: TextStyle(
                        color: AppColors.primary,
                        fontSize: 26,
                        fontWeight: FontWeight.w500
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
                Stack(
                    children:[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 100,
                          margin: const EdgeInsets.all(5.0),
                          padding: const EdgeInsets.all(20.0),
                          decoration: BoxDecoration(
                            color: AppColors.primary,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: const EdgeInsets.all(5.0),
                                decoration: const BoxDecoration(
                                    color: AppColors.white,
                                    shape: BoxShape.circle
                                ),
                                child: const Icon(
                                  Icons.star,
                                  color:AppColors.primary,
                                  size: 15,
                                ),
                              ),
                              const SizedBox(width: 15,),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Book your Appointment',
                                    style: TextStyle(
                                      color:AppColors.white,
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 1.5,
                                    ),
                                  ),
                                  SizedBox(height: 5.0,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        'With Dawini\nYou can make an appointment with one tap!',
                                        style: TextStyle(
                                          color: AppColors.white,
                                          fontSize: 17,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ]
                ),
                const SizedBox(height: 20,),
                const Padding(
                  padding: EdgeInsets.only(left:20.0),
                  child: Text('Select Day and Time',
                    style: TextStyle(
                        color: AppColors.primary,
                        fontSize: 26,
                        fontWeight: FontWeight.w500
                    ),
                  ),
                ),
                const SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.only(left: 25.0,top: 2),
                  child: Container(
                    height: screenHeight/9.5,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        weekDate("20", "SUN", false),
                        weekDate("21", "MON", false),
                        weekDate("22", "TUE", false),
                        weekDate("23", "THU", false),
                        weekDate("24", "FRI", false),
                        weekDate("25", "SAT", false),

                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 10,),
                Container(
                 height: screenHeight/5,
                  margin: const EdgeInsets.only(right: 20),
                  child: GridView.count(
                    shrinkWrap: true,
                    crossAxisCount: 3,
                    physics: const NeverScrollableScrollPhysics(),
                    childAspectRatio: 1.7,
                    children: [
                      Timings("10:00 AM", false),
                      Timings("10:30 AM", false),
                      Timings("11:00 AM", false),
                      Timings("11:30 AM", false),
                     Timings("12:00 PM", false),
                      Timings("12:30 PM", false),

                    ],
                  ),
                ),
             /*   Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Container(
                    height: 80,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        weekDate("AM", "10:00", false),
                        weekDate("AM", "10:30", true),
                        weekDate("AM", "11:00", false),
                        weekDate("AM", "11:30", false),
                        weekDate("PM", "12:00", false),
                        weekDate("PM", "12:30", false),

                      ],
                    ),
                  ),
                ),*/

              ],
        ),
            const SizedBox(height: 10),
            MaterialButton(
              onPressed: () {
                Get.bottomSheet(

                  /*  backgroundColor: AppColors.white,
                  title: 'Enter Patient Info',
                  titleStyle: TextStyle(color: AppColors.primary,fontWeight: FontWeight.w400,fontSize: 24),
                  content:*/ Container(
                  height: screenHeight*0.9,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(50),
                      topLeft: Radius.circular(50),
                    ),
                    border: Border.all(color: AppColors.white,width: 2),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(height: 10,),
                        const Icon(Icons.keyboard_double_arrow_down_sharp,color: AppColors.primary,size: 30,),


                        const Padding(
                          padding: EdgeInsets.all(2.0),
                          child: Text('Enter Patient Info',
                            style: TextStyle(
                                color: AppColors.primary,
                                fontSize: 24,
                                fontWeight: FontWeight.w400
                            ),
                          ),
                        ),
                        const SizedBox(height:20),
                        Container(
                          width:screenWidth-50,
                          height: 55,
                          decoration: BoxDecoration(
                            border: Border.all(color: AppColors.primary.withOpacity(0.2),width:2 ),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: TextFormField(
                            cursorColor: AppColors.primary,
                            keyboardType: TextInputType.name,
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText:'Patient Full Name',
                              hintStyle: TextStyle(color: AppColors.primary,fontSize: 15),
                              prefixIcon: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: CircleAvatar(
                                  backgroundColor: AppColors.primary,
                                  radius: 15,
                                  child: Icon(
                                    Icons.person,
                                    color: AppColors.white,
                                    size: 18,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.only(left: 10,right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                width:screenWidth/2.1,
                                height: 55,
                                decoration: BoxDecoration(
                                  border: Border.all(color: AppColors.primary.withOpacity(0.2),width:2 ),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: TextFormField(
                                  cursorColor: AppColors.primary,
                                  keyboardType: TextInputType.name,
                                  decoration: const InputDecoration(
                                    border: InputBorder.none,
                                    hintText:'Patient Mother Name',
                                    hintStyle: TextStyle(color: AppColors.primary,fontSize: 15),
                                    prefixIcon: Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: CircleAvatar(
                                        backgroundColor: AppColors.primary,
                                        radius: 15,
                                        child: Icon(
                                          Icons.girl,
                                          color: AppColors.white,
                                          size: 18,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width:screenWidth/2.5,
                                height: 55,
                                decoration: BoxDecoration(
                                  border: Border.all(color: AppColors.primary.withOpacity(0.2),width:2 ),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: TextFormField(
                                  cursorColor: AppColors.grey,
                                  keyboardType: TextInputType.name,
                                  decoration: const InputDecoration(
                                    border: InputBorder.none,
                                    hintText:'Patient blood type',
                                    hintStyle: TextStyle(color: AppColors.primary,fontSize: 15),
                                    prefixIcon: Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: CircleAvatar(
                                        backgroundColor: AppColors.primary,
                                        radius: 15,
                                        child: Icon(
                                          Icons.bloodtype_outlined,
                                          color: AppColors.white,
                                          size: 18,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        const SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.only(left: 10,right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                width:screenWidth/2.1,
                                height:55,
                                decoration: BoxDecoration(
                                  border: Border.all(color: AppColors.primary.withOpacity(0.2),width:2 ),
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                child: TextFormField(

                                  cursorColor: AppColors.primary,
                                  keyboardType: TextInputType.number,
                                  decoration: const InputDecoration(
                                    border: InputBorder.none,
                                    hintText:'Patient Phone number',
                                    hintStyle: TextStyle(color: AppColors.primary,
                                        fontSize: 15
                                    ),
                                    prefixIcon: Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: CircleAvatar(
                                        backgroundColor:AppColors.primary ,
                                        radius: 13,
                                        child: Icon(
                                          Icons.phone,
                                          color: AppColors.white,
                                          size: 18,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width:screenWidth/2.5,
                                height:55,
                                decoration: BoxDecoration(
                                  border: Border.all(color: AppColors.primary.withOpacity(0.2),width:2 ),
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                child: TextFormField(

                                  cursorColor: AppColors.primary,
                                  keyboardType: TextInputType.number,
                                  decoration: const InputDecoration(
                                    border: InputBorder.none,
                                    hintText:'Patient age',
                                    hintStyle: TextStyle(color: AppColors.primary,
                                        fontSize: 15
                                    ),
                                    prefixIcon: Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: CircleAvatar(
                                        backgroundColor:AppColors.primary ,
                                        radius: 13,
                                        child: Icon(
                                          Icons.info_outline,
                                          color: AppColors.white,
                                          size: 18,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        const SizedBox(height: 10,),
                        Container(
                          width:screenWidth-50,
                          height: 55,
                          decoration: BoxDecoration(
                            border: Border.all(color: AppColors.primary.withOpacity(0.2),width:2 ),
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: GenderSelection(
                            colorText: AppColors.primary,
                            colorRadio2: AppColors.primary,
                            colorText1: AppColors.primary,
                            colorRadio1: AppColors.primary,
                            colorText2: AppColors.primary,
                          ),
                        ),
                        const SizedBox(height: 10,),
                        Container(
                          width:screenWidth-50,
                          height: 55,
                          decoration: BoxDecoration(
                            border: Border.all(color: AppColors.primary.withOpacity(0.2),width:2 ),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: TextFormField(
                            cursorColor: AppColors.primary,
                            keyboardType: TextInputType.name,
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText:'Patient Address',
                              hintStyle: TextStyle(color: AppColors.primary,fontSize: 15),
                              prefixIcon: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: CircleAvatar(
                                  backgroundColor: AppColors.primary,
                                  radius: 15,
                                  child: Icon(
                                    Icons.place,
                                    color: AppColors.white,
                                    size: 18,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),


                        const SizedBox(height: 10,),
                        Container(
                          width:screenWidth-50,
                          height: 55,
                          decoration: BoxDecoration(
                            border: Border.all(color: AppColors.primary.withOpacity(0.2),width:2 ),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: TextFormField(
                            cursorColor: AppColors.primary,
                            keyboardType: TextInputType.text,
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText:'Situation',
                              hintStyle: TextStyle(color: AppColors.primary,fontSize: 15),
                              prefixIcon: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: CircleAvatar(
                                  backgroundColor: AppColors.primary,
                                  radius: 15,
                                  child: Icon(
                                    Icons.text_snippet,
                                    color: AppColors.white,
                                    size: 18,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20,),
                        Container(
                          width:screenWidth-50,
                          height: 55,

                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(color: AppColors.primary.withOpacity(0.2)),
                            color: AppColors.primary,
                          ),
                          child: MaterialButton(onPressed: (){
                            Get.snackbar('Hello', 'Your request is sent',
                              colorText: AppColors.primary,
                              backgroundColor: AppColors.white,
                            );
                          },
                            child: const Text(
                              'Book Now',
                              style: TextStyle(
                                color: AppColors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                );
              },
              child: Container(
                alignment: Alignment.bottomCenter,
                height: 50,
                width: screenWidth/1.13,
                decoration: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color:AppColors.white.withOpacity(0.3),width: 1.0),
                ),
                child: const Center(
                  child: Text(
                    'Next',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: AppColors.white,
                    ),
                  ),
                ),
              ),
            ),

              ],
            ),

      ),
      bottomNavigationBar: const AwesomeNavBar(),
    );
  }

  weekDate(String day, String date, bool isSelected) {
    return isSelected ? GestureDetector(
      onTap: (){
        setState(() {
          selectedColor=AppColors.primary;
          selectedTextColor=AppColors.white;
        });
      },
      child: Container(
        width: 65,
        height: 80,
        margin: const EdgeInsets.only(right: 15,left:0),
        decoration: BoxDecoration(
          color:selectedColor,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Text(
                  date,
                  style: TextStyle(
                    color: selectedTextColor,
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),

              Container(
                margin: const EdgeInsets.only(top: 5),
                child: Text(
                  day,
                  style:  const TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ) : Padding(
      padding: const EdgeInsets.only(top: 0, bottom: 1),
      child: Container(
        width: 65,
        height: 80,
        margin: const EdgeInsets.only(right: 15),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),


        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              date,
              style:  const TextStyle(
                color: AppColors.primary,
                fontSize: 24,
                fontWeight: FontWeight.w500,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 5),
              child: Text(
                day,
                style:const TextStyle(
                  color: AppColors.primary,
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),

          ],
        ),

      ),
    );
  }

  Timings(String hour, bool isSelected) {
    return isSelected ? Padding(
      padding: const EdgeInsets.only(top: 5, bottom: 5),
      child: Container(
        margin: const EdgeInsets.only(left: 20, top: 5),
        decoration: BoxDecoration(
          color: AppColors.primary,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(right: 2),
              child: const Icon(
                Icons.access_time,
                color: AppColors.white,
                size: 18,
              ),
            ),
            const SizedBox(width: 2,),
            Container(
              margin: const EdgeInsets.only(right: 2),
              child: Text(
                hour,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),

      ),
    ) : Padding(
      padding: const EdgeInsets.only(top: 5, bottom: 5, right: 5),
      child: Container(
        margin: const EdgeInsets.only(left: 20, top: 5),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),

        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(right: 2),
              child: const Icon(
                Icons.access_time,
                color: AppColors.primary,
                size: 18,
              ),
            ),
            const SizedBox(width: 2,),
            Container(
              margin: const EdgeInsets.only(right: 2),
              child: Text(
                hour,
                style: const TextStyle(
                  color: AppColors.primary,
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),

      ),
    );
  }
}
