import 'package:dawini/instants/colors.dart';
import 'package:dawini/instants/doctors.dart';
import 'package:flutter/material.dart';

class DoctorsList extends StatelessWidget {
  const DoctorsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor:Colors.transparent ,
        elevation: 0,
        leading: const Row(
          children: [
            BackButton(color: AppColors.primary,),


          ],
        )
        ,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [

              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text('Doctors',
                    style: TextStyle(
                      color: AppColors.primary,
                      fontWeight: FontWeight.w900,
                      letterSpacing: 1,
                      fontSize: 40,
                    ),
                  ),
                  const SizedBox(height: 35,),
                  Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: AppColors.primary.withOpacity(0.8)),
                        boxShadow: const [
                          BoxShadow(
                            color: AppColors.primary,
                            blurRadius: 3,
                            spreadRadius: 1,
                          ),
                        ]
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.search,color: AppColors.white,),
                        hintText: 'Find your doctor ..',
                        hintStyle: TextStyle(color: AppColors.white),

                      ),
                    ),
                  ),
                ],
              ),
            const SizedBox(height: 20),
            const Doctors(doctorImagePath: 'assets/images/Mind.png',
                doctorName: 'Dr Samer Ali',
                specialityType: 'General',
            ),
            const SizedBox(height: 15),
            const Doctors(doctorImagePath: 'assets/images/Mind.png',
              doctorName: 'Dr Ahmad Ali',
              specialityType: 'General',
            ),
            const SizedBox(height: 15),
            const Doctors(doctorImagePath: 'assets/images/Mind.png',
              doctorName: 'Dr Amer Sam',
              specialityType: 'General',
            ),
            const SizedBox(height: 15),
            const Doctors(doctorImagePath: 'assets/images/Mind.png',
              doctorName: 'Dr Ali ahmad',
              specialityType: 'General',
            ),

          ],
        ),
      ),

    );
  }
}
