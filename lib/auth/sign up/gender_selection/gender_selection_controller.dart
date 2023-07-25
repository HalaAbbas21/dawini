import 'package:get/get.dart';

class GenderSelectionController extends GetxController{
  var selectedGender="".obs;

  onChangedGender(var gender){
    selectedGender.value=gender;
  }
}