import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../auth/sign up/gender_selection/gender_selection_view.dart';
import '../home_page/home_view/doctors_list.dart';
import '../instants/colors.dart';

class DoctorAvailableTime extends StatelessWidget {
  const DoctorAvailableTime({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth=MediaQuery.of(context).size.width;
    double screenHeight=MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.primary,
        leading: const BackButton(color: AppColors.white,),
        title: const Text(
          'Available Time',
          style: TextStyle(
              color: AppColors.white,
              fontWeight: FontWeight.w500,
              fontSize: 28,
              letterSpacing: 0
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: screenHeight/1.3,),
            MaterialButton(
              onPressed: () {
                Get.bottomSheet(

               /*  backgroundColor: AppColors.white,
                  title: 'Enter Patient Info',
                  titleStyle: TextStyle(color: AppColors.primary,fontWeight: FontWeight.w400,fontSize: 24),
                  content:*/ Container(
                  height: screenHeight/1.8,
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
                          Icon(Icons.linear_scale,color: AppColors.primary,size: 30,),


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
                          SizedBox(height:20),
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
                                hintText:'patient Name',
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
                          const SizedBox(height: 10,),
                          Container(
                            width:screenWidth-50,
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
                          const SizedBox(height: 10,),
                          Container(
                            width:screenWidth-50,
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
                          const SizedBox(height: 20,),
                          Container(
                            width:screenWidth-50,
                            height: 55,

                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(32),
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
                                'Approve',
                                style: TextStyle(
                                    color: AppColors.white,
                                    fontWeight: FontWeight.w400,
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
                width: double.infinity,
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
                      fontWeight: FontWeight.w400,
                      color: AppColors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
