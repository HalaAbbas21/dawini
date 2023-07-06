

import 'package:dawini/home_page/home_view/doctors_list.dart';
import 'package:dawini/home_page/home_view/home_view.dart';
import 'package:dawini/instants/bottom_nav_bar.dart';
import 'package:dawini/instants/colors.dart';
import 'package:dawini/instants/glass_box/glass_box.dart';
import 'package:fancy_bottom_navigation_2/paint/half_clipper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../home/home_layout.dart';


class ClinicInfo extends StatefulWidget {
  const ClinicInfo({Key? key}) : super(key: key);

  @override
  State<ClinicInfo> createState() => _ClinicInfoState();
}

class _ClinicInfoState extends State<ClinicInfo> {
  double rating=0;
  @override
  Widget build(BuildContext context) {
    double screenWidth=MediaQuery.of(context).size.width;
    double screenHeight=MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.white,
      extendBodyBehindAppBar: true,

      body:  Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 60.0,left: 15,right: 15,bottom: 20),
                  child: Container(
                    width: double.infinity,
                    height: screenHeight/1.9,
                    decoration: const BoxDecoration(

                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                      image: DecorationImage(
                          image: AssetImage('assets/images/clinic1.png',),
                          fit: BoxFit.cover

                      ),
                    ),
                    child: Stack(
                      children: [
                        Positioned(child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            height: 40,
                            width: 40,
                            child: GestureDetector(
                              onTap: (){
                                Get.to(HomeLayout());
                              },
                              child: const Icon(
                                Icons.arrow_back,
                                color: AppColors.primary,
                              ),
                            ),
                          ),
                        ))
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 390,
            left: 29,

            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: GlassBox(
                child: Container(
                  height: screenHeight/2.4,
                  width: screenWidth-90,
                  decoration: BoxDecoration(
                    color: AppColors.primary.withOpacity(0.8),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Text(
                                  'Clinic1',
                                  style: TextStyle(
                                      color: AppColors.white,
                                      fontSize: 25,
                                      fontWeight: FontWeight.w700,
                                      letterSpacing: 1
                                  ),
                                ),
                             /*   SizedBox(height: 5,),
                                Row(
                                  children: [
                                    Icon(Icons.star,color: Colors.amberAccent,size: 18,),
                                    SizedBox(width: 2,),
                                    Text('$rating',
                                      style: TextStyle(
                                          color: AppColors.white,
                                          fontSize: 18
                                      ),
                                    ),
                                  ],
                                ),*/

                              ],
                            ),
                            CircleAvatar(
                              backgroundColor: AppColors.white,
                              radius: 15,
                              child: Icon(Icons.chat_bubble_outline,
                                color: AppColors.primary,
                                size: 15,
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(height: 40,),

                        const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              radius: 14,
                              backgroundColor: AppColors.white,
                              child: Icon(Icons.phone,
                                size: 16,
                                color: AppColors.primary,
                              ),
                            ),
                            SizedBox(width: 10,),
                            Text('Clinic Number',
                              style: TextStyle(
                                color: AppColors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(width: 60,),
                            Text('0999999 ',
                              style: TextStyle(
                                color: AppColors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ],
                        ),
                        const Divider(
                          color: AppColors.white,
                          thickness: 0.2,
                        ),
                        const SizedBox(height: 5,),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 8.0),
                              child: CircleAvatar(
                                radius: 14,
                                backgroundColor: AppColors.white,
                                child: Icon(Icons.place,
                                  size: 16,
                                  color: AppColors.primary,
                                ),
                              ),
                            ),
                            SizedBox(width: 7,),
                            Text('Address',
                              style: TextStyle(
                                color: AppColors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(width: 70,),
                            Padding(
                              padding: EdgeInsets.only(left: 10.0),
                              child: Text('Damascus,Syria ',
                                style: TextStyle(
                                  color: AppColors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Divider(
                          color: AppColors.white,
                          thickness: 0.2,
                        ),
                        const SizedBox(height: 30,),
                        MaterialButton(
                          onPressed: () {
                            Get.to(const DoctorsList());
                          },
                          child: Container(
                            alignment: Alignment.bottomCenter,
                            height: 40,
                            width: screenWidth*0.9,
                            decoration: BoxDecoration(
                              color: AppColors.white,
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(color:AppColors.white.withOpacity(0.3),width: 1.0),
                            ),
                            child: const Center(
                              child: Text(
                                'Doctors in clinic',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.primary,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 5,),
                        MaterialButton(
                          onPressed: () {
                            Get.defaultDialog(
                              title: ' Thanks for choosing our clinic ! ',
                              titleStyle: const TextStyle(
                                color: AppColors.primary,
                                fontSize: 25,
                                fontWeight: FontWeight.w500,

                              ) ,
                              backgroundColor: AppColors.white,
                              content: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,

                                    children: [
                                      Text(' We would love to get your feedback  ',
                                      style: TextStyle(
                                        color: AppColors.grey,
                                        fontSize: 19,
                                        fontWeight: FontWeight.w400,

                                      ),
                                      ),
                                      SizedBox(height: 2,),
                                      Text(' How was your experience with us? ',
                                        style: TextStyle(
                                          color: AppColors.grey,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w400,

                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 10,),
                                  RatingBar.builder(
                                    initialRating: 1,
                                    itemSize: 35,
                                    minRating: 1,
                                   maxRating: 5,
                                   itemBuilder: (context,_)=>const Icon(Icons.star,color: Colors.amberAccent,),
                                    onRatingUpdate:(rating){
                                      setState(() {
                                        this.rating=rating;
                                      });
                                    } ,
                                  ),
                                  const SizedBox(height: 30,),
                              Container(
                                width:screenWidth-40,
                                height: 40,

                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(32),
                                  border: Border.all(color: AppColors.primary),
                                  color: AppColors.primary,
                                ),
                                child: MaterialButton(onPressed: (){
                                  Get.to(const ClinicInfo());
                                },
                                  child: const Text(
                                    'Done',
                                    style: TextStyle(
                                        color: AppColors.white,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 18
                                    ),
                                  ),
                                ),
                              ),
                                ],
                              ),
                            );
                          },
                          child: Container(
                            alignment: Alignment.bottomCenter,
                            height: 40,
                            width: screenWidth*0.9,
                            decoration: BoxDecoration(
                              color: AppColors.white,
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(color:AppColors.white.withOpacity(0.3),width: 1.0),
                            ),
                            child: const Center(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.star,color: AppColors.primary,size: 18,),
                                  SizedBox(width: 2,),
                                  Text(
                                    'Rate us!',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.primary,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),



    );
  }
}

