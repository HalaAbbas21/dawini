import 'package:dawini/home_page/home_view/clinic_info.dart';
import 'package:dawini/instants/glass_box/glass_box.dart';
import 'package:dawini/test_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../instants/colors.dart';
import '../instants/frosted_glass.dart';

class Clinics extends StatelessWidget {
  const Clinics({Key? key, required this.clinicImagePath, required this.clinicName, }) : super(key: key);
final String clinicImagePath;
final String clinicName;

//final String clinicAddress;
//final String clinicNumber;


  @override
  Widget build(BuildContext context) {
    double screenWidth=MediaQuery.of(context).size.width;
    double screenHeight=MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.only(left: 10.0,right: 10,top: 10,bottom:5 ),
      child: GlassBox(
        child: Container(
           padding: const EdgeInsets.all(15),
           width: screenWidth-50,
           height: screenHeight/3,
           decoration: BoxDecoration(

             borderRadius: BorderRadius.circular(32),
              border: Border.all(color: AppColors.primary.withOpacity(0.01)),
               boxShadow: const [
                 BoxShadow(
                   color: AppColors.primary,
                   blurRadius: 2.5,
                   spreadRadius: 0.5,
                 ),
               ]
           ),
           child: Column(
             children: [
               //clinic image
               ClipRRect(
                 borderRadius: BorderRadius.circular(20),
                 child:   CircleAvatar(
                     child: Image.asset( clinicImagePath),
                   radius: 37,
                   backgroundColor: AppColors.primary,
                 ),
               ),
             SizedBox(height: 5,),
             //clinic name
               Text(clinicName,
                 style: const TextStyle(
                   color: AppColors.white,
                   fontSize: 18,
                   fontWeight:FontWeight.w300,
                 ),
               ),
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
                   Get.to(ClinicInfo());
                 },
                   child: const Text(
                     'View Profile',
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
    );
  }
}
