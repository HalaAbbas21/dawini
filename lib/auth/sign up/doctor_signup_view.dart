import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../instants/colors.dart';
import 'add_speciality.dart';

class DcoctorSignUp extends StatelessWidget {
  const DcoctorSignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.primary,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 150,left: 25,right: 25),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SafeArea(
                    child: Padding(
                      padding: EdgeInsets.only(top: 100,left: 20,right: 20),
                      child: Text(
                        'Complete your Information!',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w500,
                          color: AppColors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      width: 350,
                      height: 200,
                      child: Stack(
                        children: [
                          //blur effect
                          BackdropFilter(
                            filter: ImageFilter.blur(
                              sigmaY: 5,
                              sigmaX: 5,
                            ),

                          ),
                          Container(
                            decoration: BoxDecoration(
                                border:Border.all(color: Colors.white.withOpacity(0.2)),
                                borderRadius: BorderRadius.circular(20),
                                gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [
                                    Colors.white.withOpacity(0.4),
                                    Colors.white.withOpacity(0.1),
                                  ],
                                )
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(30.0),
                            child: Column(
                              children: [
                                Container(
                                  width: 340,
                                  height:60,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: AppColors.white.withOpacity(0.2),width:2 ),
                                    borderRadius: BorderRadius.circular(40),
                                  ),
                                  child: TextFormField(
                                    cursorColor: AppColors.white,
                                    keyboardType: TextInputType.name,
                                    decoration: const InputDecoration(
                                      border: InputBorder.none,
                                      hintText:'Your Speciality',
                                      hintStyle: TextStyle(color: AppColors.white,
                                          fontSize: 18
                                      ),
                                      prefixIcon: Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: CircleAvatar(
                                          backgroundColor:AppColors.primary ,
                                          child: Icon(
                                            Icons.folder_special,
                                            color: AppColors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 10,),
                                Container(
                                  width: 340,
                                  height:60,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: AppColors.white.withOpacity(0.2),width:2 ),
                                    borderRadius: BorderRadius.circular(40),
                                  ),
                                  child: TextFormField(
                                    cursorColor: AppColors.white,
                                    keyboardType: TextInputType.number,
                                    decoration: const InputDecoration(
                                      border: InputBorder.none,
                                      hintText:'Your Experience Years',
                                      hintStyle: TextStyle(color: AppColors.white,
                                          fontSize: 18
                                      ),
                                      prefixIcon: Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: CircleAvatar(
                                          backgroundColor:AppColors.primary ,
                                          child: Icon(
                                            Icons.gpp_good_rounded,
                                            color: AppColors.white,
                                          ),
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
                    ),
                  ),
                  const SizedBox(height: 20,),
                  MaterialButton(
                    onPressed: (){
                      Get.to(AddSpecialityScreen());
                    },
                    child: Container(
                      alignment: Alignment.bottomCenter,
                      height: 60,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(color:AppColors.white,width: 1.0),
                      ),
                      child: const Center(
                        child: Text(
                          'Add Speciality',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                            color: AppColors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10,),
                  MaterialButton(
                    onPressed: (){
                    },
                    child: Container(
                      alignment: Alignment.bottomCenter,
                      height: 60,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(color:AppColors.white,width: 1.0),
                      ),
                      child: const Center(
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                            color: AppColors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ]
            ),
          ),
        )
    );
  }
}
