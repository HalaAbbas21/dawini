import 'package:dawini/home_page/home_view/doctor_info.dart';
import 'package:dawini/test_pagee.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'colors.dart';

class Doctors extends StatelessWidget {
  const Doctors({Key? key, required this.doctorImagePath, required this.doctorName, required this.specialityType}) : super(key: key);
final String doctorImagePath;
final String doctorName;
final String specialityType;
  @override
  Widget build(BuildContext context) {
    double screenWidth=MediaQuery.of(context).size.width;
    double screenHeight=MediaQuery.of(context).size.height;
    return Container(
      height: 110,
      width: 180,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: AppColors.primary.withOpacity(0.8)),
          boxShadow: const [
            BoxShadow(
              color: AppColors.primary,
              blurRadius: 3,
              spreadRadius: 1.5,
            ),
          ]
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: CircleAvatar(
              backgroundColor: AppColors.white,
              radius: 35,
              child:Image.asset(doctorImagePath,
              fit: BoxFit.fill,
              ),
            ),
          ),
          const SizedBox(width: 0,),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(doctorName,
                    style: const TextStyle(
                      color: AppColors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                    ),
                    const SizedBox(width: 130),
                    const CircleAvatar(
                      backgroundColor: AppColors.white,
                      radius: 15,
                      child: Icon(Icons.chat_bubble_outline,
                      color: AppColors.primary,
                        size: 15,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 0,),
                Text(specialityType,
                  style: const TextStyle(
                    color: AppColors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                const SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Container(
                    width:140,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: AppColors.white),
                      color: AppColors.white,
                    ),
                    child: MaterialButton(onPressed: (){
                      Get.to(const DoctorInfo());
                    },
                      child: const Text(
                        'View Profile',
                        style: TextStyle(
                            color: AppColors.primary,
                            fontWeight: FontWeight.w500,
                            fontSize: 16
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
