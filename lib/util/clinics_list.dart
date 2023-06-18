import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../instants/colors.dart';
import '../instants/frosted_glass.dart';

class Clinics extends StatelessWidget {
  const Clinics({Key? key, required this.clinicImagePath, required this.clinicName, required this.clinicAddress, required this.clinicNumber}) : super(key: key);
final String clinicImagePath;
final String clinicName;
final String clinicAddress;
final String clinicNumber;


  @override
  Widget build(BuildContext context) {
    double screenWidth=MediaQuery.of(context).size.width;
    double screenHeight=MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.only(left: 10.0,right: 10,top: 10,bottom:5 ),
      child: Container(
         padding: const EdgeInsets.all(12),
         width: screenWidth,
         height: screenHeight,
         decoration: BoxDecoration(

           borderRadius: BorderRadius.circular(12),
            border: Border.all(color: AppColors.primary),
             boxShadow: const [
               BoxShadow(
                 color: AppColors.primary,
                 blurRadius: 3,
                 spreadRadius: 1,
               ),
             ]
         ),

         child: Column(
           children: [
             //clinic image
             ClipRRect(
               borderRadius: BorderRadius.circular(12),
               child:   CircleAvatar(
                   child: Image.asset( clinicImagePath),
                 radius: 40,
               ),
             ),
           SizedBox(height: 2,),
           //clinic name
             Text(clinicName,
               style: const TextStyle(
                 color: AppColors.white,
                 fontSize: 15,
                 fontWeight:FontWeight.bold,
               ),
             ),
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
             ),),

             SizedBox(height: 5,),
             Container(
               width:screenWidth,
               height: 30,

               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(20),
                 border: Border.all(color: AppColors.white),
                 color: AppColors.white,
               ),
               child: MaterialButton(onPressed: (){},
                 child: const Text(
                   'View Profile',
                   style: TextStyle(
                     color: AppColors.primary,
                     fontWeight: FontWeight.w500,
                     fontSize: 15
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
