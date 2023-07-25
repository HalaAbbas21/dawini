

import 'package:flutter/material.dart';
import 'package:get/get.dart';


import '../../home_page/home_view/home_view.dart';
import 'home_view.dart';

class HomeLayoutController extends GetxController {
 // late PageController pageController;
  //var currentIndex=0.obs;
  //GlobalKey bottomNavigationKey=GlobalKey();
  var tabIndex=0;
  @override
  void onInit(){
    super.onInit();
  //  pageController=PageController();
  }
  // late final TabController tabController;
  @override
  // void onInit() {
  //   tabController = TabController(length: 2, vsync: this, initialIndex: 0);
  //   super.onInit();
  // }

  @override
  void onClose() {
    // tabController.dispose();
    super.onClose();
   // pageController.dispose();
  }

  RxBool isdraweropened = false.obs;
  changedrwerstate() {
    isdraweropened.value = !isdraweropened.value;
  }

  RxInt screenind = 0.obs;
  List<Widget> Screens = [
    HomePage2(),

  ];
  changeind(val) {
    screenind.value = val;
    isdraweropened.value = false;
  }

  RxInt tabind = 0.obs;
  changetab(val) {
    tabind.value = val;
    update();
  }
  void changeTabIndex(int index){
    tabIndex=index;
    update();
  }
}