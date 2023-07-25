class UserModel {
  String? message;
  int? status;
  UserDataModel? user;
  UserModel({this.message , this.status , this.user});
  UserModel.fromJson(Map<String,dynamic> json)
  {
    message = json["message"];
    status = json["status"];
    user = UserDataModel.fromJson(json["data"]) ;


  }




}
class UserDataModel {
  int? id;
  String? email;
  String? name;
  String? phone;
  String? gender;
  String? token;
  String? image;

  UserDataModel.fromJson(Map<String , dynamic> json){
    id = json["id"];
    email = json["email"];
    name = json["name"];
    phone = json["phone"];
    token = json["token"];
    image = json["image"];


  }


}