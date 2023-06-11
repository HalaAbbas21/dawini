import 'package:flutter/material.dart';

import '../instants/colors.dart';

class Clinics extends StatelessWidget {
  const Clinics({Key? key, required this.clinicImagePath, required this.clinicName, required this.clinicAddress, required this.clinicNumber}) : super(key: key);
final String clinicImagePath;
final String clinicName;
final String clinicAddress;
final String clinicNumber;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0,bottom: 140),
      child: Container(
        padding: const EdgeInsets.all(12),
        width: 200,

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
            border: Border.all(color: AppColors.primary),
        ),
        child: Column(
          children: [
            //clinic image
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child:   Image.asset( clinicImagePath),
            ),
          const SizedBox(height: 24,),
          //clinic name
            Text(clinicName,
              style: const TextStyle(
                color: AppColors.primary,
                fontSize: 22,
                fontWeight:FontWeight.bold,
              ),
            ),
            Text( clinicAddress,
            style: const TextStyle(
              color: AppColors.black,
              fontSize: 18,
              fontWeight:FontWeight.w300,
            ),
            ),
            const SizedBox(height: 10,),
            Text(clinicNumber,
            style: const TextStyle(
              color: AppColors.black,
              fontSize: 18,
              fontWeight: FontWeight.w300,
            ),),
            const SizedBox(height: 30,),
            Container(
              width:220,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: AppColors.primary),
              ),
              child: MaterialButton(onPressed: (){},
                child: const Text(
                  'View Profile',
                  style: TextStyle(
                    color: AppColors.primary,
                    fontWeight: FontWeight.w500,
                    fontSize: 18
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
