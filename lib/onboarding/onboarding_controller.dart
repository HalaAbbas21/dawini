import 'package:dawini/start_page/start_page.dart';
import 'package:get/get.dart';

import 'onboarding_info.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/state_manager.dart';
import 'package:get/utils.dart';
class OnboardingController extends GetxController{
  var selectedPageIndex=0.obs;
  var pageController=PageController();
  bool get isLastpage=>selectedPageIndex.value==onboardingPages.length-1;
  forwardaction(){
    if(isLastpage){
      Get.to(StartPage());
    }
    else{}
    pageController.nextPage(duration: 300.milliseconds, curve:Curves.ease);
  }
  List<OnboardingInfo> onboardingPages=[
    OnboardingInfo('assets/images/Doctors-pana.png', 'Welcome to our app !',
        'Find a doctor who will take the best care of you and follow up your state.'),
    OnboardingInfo('assets/images/Doctors.png', 'Get Appointment',
        'effortlessly book,or cancel appointments with few clicks.'),
    OnboardingInfo('assets/images/Task.png', 'Save time and Energy',
        'set your appointment and wait for it to be approved.')
  ];
}