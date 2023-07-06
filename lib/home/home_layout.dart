// ignore: must_be_immutable
import 'package:dawini/home/side_bar/side_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import 'home_controller.dart';

class HomeLayout extends StatelessWidget {
  HomeLayout({super.key});

  final bool isopen = true;
  var controller = Get.put(HomeLayoutController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
            () => Stack(children: [
          controller.Screens[controller.screenind.value],
          SideBar()
        ]),
      ),
    );
  }
}