import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';
import 'package:dawini/available_time/doc_available_time.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../instants/colors.dart';
import '../../instants/glass_box/glass_box.dart';
import 'doctors_list.dart';
import 'home_view.dart';

class DoctorInfo extends StatefulWidget {
  const DoctorInfo({Key? key}) : super(key: key);

  @override
  State<DoctorInfo> createState() => _DoctorInfoState();
}

class _DoctorInfoState extends State<DoctorInfo> {
  @override
  Widget build(BuildContext context) {
    int visit = 0;
    List<TabItem> items = [
      TabItem(
        icon: Icons.home_filled,
        title: 'Home',
      ),
      TabItem(
        icon: Icons.date_range_rounded,
        title: 'Appointments',
      ),
      TabItem(
        icon: Icons.notifications,
        title: 'Notifications',
      ),
      TabItem(
        icon: Icons.messenger_outlined,
        title: 'Messages',
      ),
    ];
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
            backgroundColor: AppColors.primary,
              child: BackButton(color: AppColors.white,)),
        ),
        title: const Text(
          'Doctor Info',
          style: TextStyle(
              color: AppColors.primary,
              fontWeight: FontWeight.w500,
              fontSize: 26,
              letterSpacing: 0
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 40),
            Container(
              height: screenHeight/4,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: AppColors.primary.withOpacity(0.3),
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
              child: Stack(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          height: screenHeight/4.5,
                          width: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(32),),
                          child:Image.asset(
                            'assets/images/doctor.png',
                          ) ,
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            'Doctor Name',
                            style: TextStyle(
                                color: AppColors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.w500,
                                letterSpacing: 1
                            ),
                          ),
                          const SizedBox(height: 2,),
                          Text(
                            'Speciality type',
                            style: TextStyle(
                              color:Colors.grey[100],
                              fontSize: 20,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 45,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 14,
                  backgroundColor: AppColors.primary,
                  child: Icon(Icons.phone,
                    size: 16,
                    color: AppColors.white,
                  ),
                ),
                const SizedBox(width: 7,),
                const Text('Doctor Number',
                  style: TextStyle(
                    color: AppColors.primary,
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(width: screenWidth*0.4,),
                const Text('0999999 ',
                  style: TextStyle(
                    color: AppColors.primary,
                    fontSize: 18,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
            const Divider(
              color: AppColors.primary,
              thickness: 0.2,
            ),
            const SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: CircleAvatar(
                    radius: 14,
                    backgroundColor: AppColors.primary,
                    child: Icon(Icons.place,
                      size: 16,
                      color: AppColors.white,
                    ),
                  ),
                ),
                const SizedBox(width: 7,),
                const Text('Address',
                  style: TextStyle(
                    color: AppColors.primary,
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(width: screenWidth*0.44,),
                const Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Text('Damascus,Syria ',
                    style: TextStyle(
                      color: AppColors.primary,
                      fontSize: 15,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ],
            ),
            const Divider(
              color: AppColors.primary,
              thickness: 0.2,
            ),
            const SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 14,
                  backgroundColor: AppColors.primary,
                  child: Icon(Icons.star_purple500_outlined,
                    size: 16,
                    color: AppColors.white,
                  ),
                ),
                const SizedBox(width: 5,),
                const Text('Experience',
                  style: TextStyle(
                    color: AppColors.primary,
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(width: screenWidth*0.44,),
                const Padding(
                  padding: EdgeInsets.only(left: 25.0),
                  child: Text('+3 years',
                    style: TextStyle(
                      color: AppColors.primary,
                      fontSize: 15,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ],
            ),
            const Divider(
              color: AppColors.primary,
              thickness: 0.2,
            ),
            const SizedBox(height: 5,),
            const Padding(
              padding: EdgeInsets.only(left: 12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 14,
                        backgroundColor: AppColors.primary,
                        child: Icon(Icons.text_snippet,
                          size: 16,
                          color: AppColors.white,
                        ),
                      ),
                      SizedBox(width: 5,),
                      Text('Description',
                        style: TextStyle(
                          color: AppColors.primary,
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: EdgeInsets.only(left: 25.0),
                    child: Text('//Anything he want to add //',
                      style: TextStyle(
                        color: AppColors.primary,
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                  Divider(
                    color: AppColors.primary,
                    thickness: 0.2,
                  ),
                ],
              ),
            ),
           Spacer(),
            MaterialButton(
              onPressed: () {
                Get.to(const DoctorAvailableTime());
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
                    'Make Appointment',
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
      bottomNavigationBar: Container(
        color: Colors.transparent,
        padding:EdgeInsets.only(bottom: 20, right: 32, left: 32),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: BottomBarFloating(
            items: items,
            iconSize: 24,
            backgroundColor: Colors.white,
            color: AppColors.grey,
            colorSelected: AppColors.primary,
            indexSelected: visit,
            blur: 35,
            paddingVertical: 15,
            onTap: (int index) => setState(() {
              visit = index;
            }),
          ),
        ),
      ),

    );
  }
}
