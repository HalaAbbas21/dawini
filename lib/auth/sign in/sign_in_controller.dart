import 'package:dawini/auth/sign%20in/usermodel.dart';
import 'package:get/get.dart';

import '../../services/data.dart';


class SignInController extends GetxController{
  UserModel? user;
 Future<void> userlogin(String email , String password)
  async {
    try{
      DioHelper.post(url: "user/login", body: {"email":email , "password":password}).then((value) {
        user = UserModel.fromJson(value.data);
        print(user!.user!.token);

      });
    }
    catch(e){

        }

  }


}