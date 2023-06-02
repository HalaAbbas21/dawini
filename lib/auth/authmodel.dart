import 'package:dawini/auth/sign%20in/usermodel.dart';
import 'package:dawini/auth/sign%20up/gender_selection/gender_selection_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../services/data.dart';
class AuthController {
UserModel? user;
Future<void> userlogin(String email , String password)
    async {
     try {
    DioHelper.post(
        url: "user/login", body: {"email": email, "password": password}).then((
        value) {
      user = UserModel.fromJson(value.data);
      print(user!.user!.token);
    });
  }
  catch (e) {

  }
}
GenderSelectionController genderSelectionController = Get.put(GenderSelectionController());
Future<void> userregister({String? name , String? email , String? password  , String? phone})
async{
  await DioHelper.post(url: "user/register", body: {"email":email , "name":name , "password":password , "gender":genderSelectionController.selectedGender.value , "phone":phone}).then((value) {
    print(value.data);
  });



}
}

