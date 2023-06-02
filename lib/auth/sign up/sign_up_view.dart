import 'dart:ui';


import 'package:dawini/auth/sign%20up/gender_selection/gender_selection_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../instants/colors.dart';
import '../authmodel.dart';
import 'doctor_signup_view.dart';
import 'gender_selection/gender_selection_view.dart';


class SignUpScreen extends StatelessWidget {
   SignUpScreen({Key? key}) : super(key: key);

  TextEditingController emailcontroller = TextEditingController();
   TextEditingController namecontroller = TextEditingController();
   TextEditingController passwordcontroller = TextEditingController();
   TextEditingController phonecontroller = TextEditingController();
   var authcontroller = Get.put(AuthController());

   @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: AppColors.primary,
      body:  SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
              children:[
                /*   Container(
            alignment: Alignment.topCenter,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xFFD7E5F0),
                    AppColors.primary,
                    AppColors.primary,
                    AppColors.primary,
                    AppColors.primary,
                  ],
                )
            ),
          ),*/
                const SafeArea(
                  child: Padding(
                    padding: EdgeInsets.only(top: 50,left: 30,right: 30),
                    child: Text(
                      'Lets create an account for you !',
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.w500,
                        color: AppColors.white,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 25,),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    width: 350,
                    height: 510,
                    child: Stack(
                      children: [
                        //blur effect
                        BackdropFilter(
                          filter: ImageFilter.blur(
                            sigmaY: 5,
                            sigmaX: 5,
                          ),

                        ),
                        //gradient effect
                        Container(
                          decoration: BoxDecoration(
                              border:Border.all(color: Colors.white.withOpacity(0.2)),
                              borderRadius: BorderRadius.circular(20),
                              gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  Colors.white.withOpacity(0.4),
                                  Colors.white.withOpacity(0.1),
                                ],
                              )
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(22.0),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 15.0),
                                child: Stack(
                                    alignment: Alignment.bottomRight,
                                    children: [
                                      const CircleAvatar(
                                        radius: 42,
                                        backgroundColor: AppColors.white,
                                      ),
                                      IconButton(
                                        onPressed: () {
                                          Get.defaultDialog(
                                            title: 'Choose profile photo from',
                                            titleStyle: const TextStyle(
                                                color: AppColors.primary,
                                                fontSize: 20
                                            ),
                                            backgroundColor: AppColors.white,
                                            content: Column(
                                              children: [
                                                MaterialButton(
                                                  onPressed: (){
                                                    //  controller.getImage(CanvasImageSource.Camera);
                                                  },
                                                  child: const Text('Camera'),
                                                ),
                                                MaterialButton(
                                                  onPressed: (){
                                                    // controller.getImage(CanvasImageSource.Gallery);
                                                  },
                                                  child: const Text('Gallery'),
                                                ),
                                              ],
                                            ),
                                          );
                                        },
                                        icon: const Icon(
                                          Icons.camera_alt,
                                          size: 40,
                                          color: AppColors.primary,
                                        ),
                                      ),
                                    ]    ),
                              ),
                              const SizedBox(height: 10,),

                              Container(
                                width: 300,
                                height:55,
                                decoration: BoxDecoration(
                                  border: Border.all(color: AppColors.white.withOpacity(0.2),width:2 ),
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                child: TextFormField(
                                  controller: namecontroller,
                                  cursorColor: AppColors.white,
                                  keyboardType: TextInputType.name,
                                  decoration: const InputDecoration(
                                    border: InputBorder.none,
                                    hintText:'Your name',
                                    hintStyle: TextStyle(color: AppColors.white,
                                        fontSize: 18
                                    ),
                                    prefixIcon: Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: CircleAvatar(
                                        backgroundColor:AppColors.primary ,
                                        child: Icon(
                                          Icons.person,
                                          color: AppColors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 5,),
                              Container(
                                width: 300,
                                height:55,
                                decoration: BoxDecoration(
                                  border: Border.all(color: AppColors.white.withOpacity(0.2),width:2 ),
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                child: TextFormField(
                                  controller: emailcontroller,
                                  cursorColor: AppColors.white,
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: const InputDecoration(
                                    border: InputBorder.none,
                                    hintText:'Email or Username',
                                    hintStyle: TextStyle(color: AppColors.white,
                                        fontSize: 18
                                    ),
                                    prefixIcon: Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: CircleAvatar(
                                        backgroundColor:AppColors.primary ,
                                        child: Icon(
                                          Icons.email,
                                          color: AppColors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 5,),
                              Container(
                                width:300,
                                height: 55,
                                decoration: BoxDecoration(
                                  border: Border.all(color: AppColors.white.withOpacity(0.2),width:2 ),
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                child: TextFormField(
                                  controller: passwordcontroller,
                                  cursorColor: AppColors.white,
                                  keyboardType: TextInputType.visiblePassword,
                                  decoration: const InputDecoration(
                                    border: InputBorder.none,
                                    hintText:'Password',
                                    hintStyle: TextStyle(color: AppColors.white,fontSize: 18),
                                    prefixIcon: Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: CircleAvatar(
                                        backgroundColor: AppColors.primary,
                                        child: Icon(
                                          Icons.lock,
                                          color: AppColors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 5,),
                              Container(
                                width:300,
                                height: 55,
                                decoration: BoxDecoration(
                                  border: Border.all(color: AppColors.white.withOpacity(0.2),width:2 ),
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                child: TextFormField(
                                  cursorColor: AppColors.white,
                                  keyboardType: TextInputType.visiblePassword,
                                  decoration: const InputDecoration(
                                    border: InputBorder.none,
                                    hintText:'Confirm Password',
                                    hintStyle: TextStyle(color: AppColors.white,fontSize: 18),
                                    prefixIcon: Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: CircleAvatar(
                                        backgroundColor: AppColors.primary,
                                        child: Icon(
                                          Icons.lock,
                                          color: AppColors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),

                              const SizedBox(height: 5,),
                              Container(
                                width: 300,
                                height:55,
                                decoration: BoxDecoration(
                                  border: Border.all(color: AppColors.white.withOpacity(0.2),width:2 ),
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                child: TextFormField(
                                  controller: phonecontroller,
                                  cursorColor: AppColors.white,
                                  keyboardType: TextInputType.number,
                                  decoration: const InputDecoration(
                                    border: InputBorder.none,
                                    hintText:'Phone number',
                                    hintStyle: TextStyle(color: AppColors.white,
                                        fontSize: 18
                                    ),
                                    prefixIcon: Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: CircleAvatar(
                                        backgroundColor:AppColors.primary ,
                                        child: Icon(
                                          Icons.phone,
                                          color: AppColors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 5,),
                              Container(
                                width:300,
                                height: 55,
                                decoration: BoxDecoration(
                                  border: Border.all(color: AppColors.white.withOpacity(0.2),width:2 ),
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                child: GenderSelection(),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10,),

                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                      MaterialButton(
                        onPressed: (){
                          Get.to(const DcoctorSignUp());
                        },
                        child: Container(
                          alignment: Alignment.bottomCenter,
                          height: 60,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(color:AppColors.white,width: 1.0),
                          ),
                          child: const Center(
                            child: Text(
                              'Continue as Doctor',
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w500,
                                color: AppColors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10,),
                      MaterialButton(
                        onPressed: ()async{
                          authcontroller.userregister(email: emailcontroller.text.toString() , password: passwordcontroller.text.toString(), phone: phonecontroller.text.toString(),name: namecontroller.text.toString()
                          );

                        },
                        child: Container(
                          alignment: Alignment.bottomCenter,
                          height: 60,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(color:AppColors.white,width: 1.0),
                          ),
                          child: const Center(
                            child: Text(
                              'Sign Up',
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w500,
                                color: AppColors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ]
          ),
        ),
      ),
    );
  }
}
