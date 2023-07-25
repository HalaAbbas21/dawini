import 'package:dawini/home_page/home_view/doctors_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../instants/colors.dart';
import '../instants/glass_box/glass_box.dart';

class Specialities extends StatelessWidget {
  const Specialities({Key? key, required this.specialityImagePath, required this.specialityType, }) : super(key: key);
  final String specialityImagePath;
  final String specialityType;

  @override
  Widget build(BuildContext context) {
    double screenWidth=MediaQuery.of(context).size.width;
    double screenHeight=MediaQuery.of(context).size.height;
    return  Padding(
      padding: const EdgeInsets.only(left: 10.0,right: 10,top: 10,bottom:5 ),
      child: GestureDetector(
        onTap: (){
          Get.to(DoctorsList());
        },
        child: GlassBox(
          child: Container(
            padding: const EdgeInsets.all(15),
            width: screenWidth-50,
            height: screenHeight/4,
            decoration: BoxDecoration(

                borderRadius: BorderRadius.circular(32),
                border: Border.all(color: AppColors.primary),
                boxShadow: const [
                  BoxShadow(
                    color: AppColors.primary,
                    blurRadius: 2.5,
                    spreadRadius:0.5,
                  ),
                ]
            ),
            child: Column(

              children: [
                //clinic image
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child:   CircleAvatar(
                    child: Image.asset( specialityImagePath,
                    color:AppColors.white ,
                    ),
                    radius: 30,
                    backgroundColor: AppColors.primary,
                  ),
                ),
                SizedBox(height: 15,),
                //clinic name
                Text(specialityType,
                  style: const TextStyle(
                    color: AppColors.white,
                    fontSize: 18,
                    fontWeight:FontWeight.w300,
                  ),
                ),
                /*
                 Text( clinicAddress,
                 style: const TextStyle(
                   color: AppColors.black,
                   fontSize: 12,
                   fontWeight:FontWeight.w300,
                 ),
                 ),

                 Text(clinicNumber,
                 style: const TextStyle(
                   color: AppColors.black,
                   fontSize: 12,
                   fontWeight: FontWeight.w300,
                 ),),*/

                SizedBox(height: 15,),
                Container(
                  width:screenWidth-50,
                  height: 35,

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32),
                    border: Border.all(color: AppColors.primary.withOpacity(0.2)),
                    color: AppColors.white,
                  ),
                  child: MaterialButton(onPressed: (){
                    Get.to(DoctorsList());
                  },
                    child: const Text(
                      'View Doctors',
                      style: TextStyle(
                          color: AppColors.primary,
                          fontWeight: FontWeight.w400,
                          fontSize: 16
                      ),
                    ),
                  ),
                ),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
