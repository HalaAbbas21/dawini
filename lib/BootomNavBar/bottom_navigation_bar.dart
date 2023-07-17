import 'package:dawini/home/home_layout.dart';
import 'package:dawini/user_pages/appointments/appointments_view.dart';
import 'package:dawini/user_pages/messages/messages_view.dart';
import 'package:dawini/user_pages/notifications/notification_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../home/home_controller.dart';
import '../instants/colors.dart';

class BottobNavigationBar1 extends StatelessWidget {
  BottobNavigationBar1({Key? key}) : super(key: key);
  var controller = Get.put(HomeLayoutController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeLayoutController>(builder: (controller){
     return Scaffold(
        body: SafeArea(
            child: IndexedStack(
              index: controller.tabIndex,
              children: [
                HomeLayout(),
                UserAppointments(),
                UserNotification(),
                UserMessages(),
              ],
            )
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: AppColors.white,
          unselectedItemColor: AppColors.grey,
          selectedItemColor: AppColors.primary,
          onTap: controller.changeTabIndex,
          currentIndex: controller.tabIndex,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          items: [
            _bottomNavigationBarItem(icon: Icons.home_filled,label: 'Home'),
            _bottomNavigationBarItem(icon: Icons.date_range_outlined,label: 'Appointments',),
            _bottomNavigationBarItem(icon: Icons.notifications,label: 'Notifications'),
            _bottomNavigationBarItem(icon: Icons.message,label: 'Messages'),
          ],

        ),

      );
    });
  }
  _bottomNavigationBarItem({required IconData icon,required String label}){
    return BottomNavigationBarItem(
      icon:Icon(icon),
      label: label,
    );
  }
}
