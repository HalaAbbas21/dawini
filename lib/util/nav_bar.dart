/*import 'package:dawini/home/home_layout.dart';
import 'package:dawini/user_pages/appointments/appointments_view.dart';
import 'package:dawini/user_pages/messages/messages_view.dart';
import 'package:dawini/user_pages/notifications/notification_view.dart';
import 'package:fancy_bottom_navigation_2/fancy_bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../home/home_controller.dart';
import '../instants/colors.dart';

class BottomNavBar extends StatelessWidget {
   BottomNavBar({Key? key}) : super(key: key);
  var controller = Get.put(HomeLayoutController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SizedBox.expand(
        child: PageView(
          physics: ScrollPhysics(
            parent: NeverScrollableScrollPhysics(),
          ),
          children: [
            Container(
              child: Center(
                child: Text(
                  'Home',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            Container(
              child: Center(
                child: Text(
                  'Appointments',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            Container(
              child: Center(
                child: Text(
                  'Notifications',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            Container(
              child: Center(
                child: Text(
                  'Messages',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ],
          controller: controller.pageController,
        ),
      ),
      bottomNavigationBar: Obx(
            ()=>FancyBottomNavigation(
          tabs: [
            TabData(iconData: Icons.home_filled,title: 'Home',onclick: (){
              Get.to(HomeLayout());
            }),
            TabData(iconData: Icons.date_range_outlined,title: 'Appointments',
              onclick:(){ Get.to(UserAppointments());}
            ),
            TabData(iconData: Icons.notifications,title: 'Notifications', onclick:(){ Get.to(UserNotification());}),
            TabData(iconData: Icons.message,title: 'Messages', onclick:(){ Get.to(UserMessages());}),
          ],
          onTabChangedListener: (position){
            controller.currentIndex.value=position;
            controller.pageController.jumpToPage(position);
          },
          initialSelection:controller.currentIndex.value,
          key:controller.bottomNavigationKey ,
          inactiveIconColor: AppColors.grey,
          activeIconColor: AppColors.white,
          circleColor:AppColors.primary ,
        ),
      ),
    );
  }
}*/
