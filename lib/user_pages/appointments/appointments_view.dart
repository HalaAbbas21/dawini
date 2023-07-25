import 'package:dawini/instants/colors.dart';
import 'package:dawini/user_pages/appointments/appointment_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class UserAppointments extends GetView<AppointmentsController> {
 UserAppointments({Key? key}) : super(key: key);
  Widget _headTabs(){
    return Center(
      child: Container(
        width: 260,
        height: 60,
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: AppColors.primary,
          borderRadius:BorderRadius.circular(30),

        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              child: Container(
                height: 80,
                width: 120,
                margin: EdgeInsets.only(bottom: 0),
                padding: EdgeInsets.all(0),
                decoration:controller.tabStatus.value? BoxDecoration(
                  color: AppColors.white,
                  borderRadius:BorderRadius.circular(30),
                ):BoxDecoration(
                  color: AppColors.primary,
                  borderRadius:BorderRadius.circular(30),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text(
                        'Appointments',
                        textAlign: TextAlign.center,
                        style: controller.tabStatus.value?TextStyle(
                          color: AppColors.primary,
                          fontWeight: FontWeight.normal,
                          fontSize: 18,
                        ):TextStyle(
                          color: AppColors.white,
                          fontWeight: FontWeight.normal,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              onTap: (){
                controller.toggle();
              },
            ),
            Spacer(),
            GestureDetector(
              child: Container(
                height: 80,
                width: 110,
                decoration:controller.tabStatus.value?BoxDecoration(
                  color: AppColors.primary,
                  borderRadius:BorderRadius.circular(30),
                ):
                BoxDecoration(
                  color: AppColors.white,
                  borderRadius:BorderRadius.circular(30),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0,right: 8,bottom: 3),
                        child: Text(
                          'Upcoming',
                          textAlign: TextAlign.center,
                          style:controller.tabStatus.value? TextStyle(
                            color: AppColors.white,
                            fontWeight: FontWeight.normal,
                            fontSize: 18,
                          ):TextStyle(
                            color: AppColors.primary,
                            fontWeight: FontWeight.normal,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              onTap: (){
                controller.toggle();
              },
            ),
          ],
        ),
      ),
    );
  }
  var tabController=Get.put(AppointmentsController());
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
            'My Appointments',
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
        child: Obx(()=>Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50,),
            _headTabs(),
            
          ],
        ),

        )
      ),
    );
  }
}
