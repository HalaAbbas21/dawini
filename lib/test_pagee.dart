import 'package:dawini/instants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'home_page/home_view/doctors_list.dart';

class TestPagee extends StatelessWidget {
  const TestPagee({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth=MediaQuery.of(context).size.width;
    double screenHeight=MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.white,
        leading: const Padding(
          padding: EdgeInsets.only(left: 18.0,top: 20),
          child: CircleAvatar(
            radius: 0,
            backgroundColor: AppColors.primary,
            child: BackButton(color: AppColors.white,
            ),

          ),
        ),
        title: const Padding(
          padding: EdgeInsets.only(top: 20),
          child: Text(
            'Appointments',
            style: TextStyle(
                color: AppColors.primary,
                fontWeight: FontWeight.w500,
                fontSize: 24,
                letterSpacing: 0
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Row(
              children: [
                Column(
                  children: [
                    Text(
                      '8:00',
                      style: TextStyle(
                       color: AppColors.primary,
                       fontSize: 24,
                       fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 4,),
                    Text(
                      'AM',
                      style: TextStyle(
                        color: AppColors.primary,
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 5,),
                Divider(
                  height: 100,
                  color: AppColors.primary,
                ),
                SizedBox(width: 10,),
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.primary,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
