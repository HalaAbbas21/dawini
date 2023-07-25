import 'package:get/get.dart';
class AppointmentsController extends GetxController{
  var tabStatus=true.obs;
  void toggle(){
    tabStatus.value=!tabStatus.value;
  }
}