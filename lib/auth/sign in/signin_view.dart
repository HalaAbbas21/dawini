import 'dart:ui';

import 'package:dawini/auth/sign%20in/sign_in_controller.dart';
import 'package:dawini/instants/colors.dart';
import 'package:dawini/services/data.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_sign_in/google_sign_in.dart';
import '../sign up/sign_up_view.dart';
import 'forget_password/forgot_password.dart';
import 'google_signin_api.dart';

class SigninScreen extends StatelessWidget {

  bool ? isChecked=false;
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double screenWidth=MediaQuery.of(context).size.width;
    double screenHeight=MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/background4.png',
                ),
                fit: BoxFit.fill,
              )
          ),
          child: Column(
            children: [
              Container(
                height: 290,
                width: screenWidth*2,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/Med1.png'),
                    ),
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  width: screenWidth-30,
                  height: 350,
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
                                Colors.white.withOpacity(0.2),
                              ],
                            )
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(22.0),
                        child: Column(
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                'Welcome Back !',
                                style: TextStyle(
                                  fontSize: 45,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.primary,
                                ),
                              ),
                            ),
                            const SizedBox(height: 60,),
                            Container(
                              width: screenWidth,
                              height:55,
                              decoration: BoxDecoration(
                                border: Border.all(color: AppColors.primary.withOpacity(0.3),width:2 ),
                                borderRadius: BorderRadius.circular(40),
                              ),
                              child: TextFormField(
                                controller: emailcontroller,
                                cursorColor: AppColors.white,
                                keyboardType: TextInputType.emailAddress,
                                decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  hintText:'Email or Username',
                                  hintStyle: TextStyle(color: AppColors.primary,
                                      fontSize: 18
                                  ),
                                  prefixIcon: Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Icon(
                                      Icons.email,
                                      color: AppColors.primary,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 10,),
                            Container(
                              width:screenWidth,
                              height: 55,
                              decoration: BoxDecoration(
                                border: Border.all(color: AppColors.primary.withOpacity(0.3),width:2 ),
                                borderRadius: BorderRadius.circular(40),
                              ),
                              child: TextFormField(
                                controller: passwordcontroller,
                                cursorColor: AppColors.white,
                                keyboardType: TextInputType.visiblePassword,
                                decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  hintText:'Password',
                                  hintStyle: TextStyle(color: AppColors.primary,fontSize: 18),
                                  prefixIcon: Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Icon(
                                      Icons.lock,
                                      color: AppColors.primary,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 5,),
                            Row(
                              children: [
                                Checkbox(value: isChecked,
                                    activeColor: AppColors.primary,
                                    tristate: true,
                                    onChanged: (newBool){

                                    }
                                ),
                                const SizedBox(width: 0,),
                                const Text(
                                  'Remember me?',
                                  style: TextStyle(
                                    color: AppColors.primary,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const SizedBox(width: 80,),
                                MaterialButton(
                                  onPressed: (){
                                    Get.to(const ForgotPassword());
                                  },
                                  child: const Text(
                                    'Forgot Password',
                                    style: TextStyle(
                                      color: AppColors.primary,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              Column(
                children: [
                  GetBuilder<SignInController>(
                    init: SignInController(),
                    builder:(cnt)=> MaterialButton(
                      onPressed: () {
                        cnt.userlogin(emailcontroller.text.toString(), passwordcontroller.text.toString());
                      },
                      child: Container(
                        alignment: Alignment.bottomCenter,
                        height: 60,
                        width: screenWidth*0.9,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(color:AppColors.primary.withOpacity(0.3),width: 1.0),
                        ),
                        child: const Center(
                          child: Text(
                            'Login',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w500,
                              color: AppColors.primary,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10,),
                  ElevatedButton.icon(
                    onPressed:signIn,
                    icon:const FaIcon(
                      FontAwesomeIcons.google,
                      color: AppColors.white,
                    ),

                    label: const Text(
                      'Sign Up with Google',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                        color: AppColors.white,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.only(left: 50.0,top: 5),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          'Do not have an account?',
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 18,
                            color: AppColors.primary,
                          ),
                        ),
                        MaterialButton(
                          onPressed: (){
                            Get.to(SignUpScreen());
                          },
                          child: const Text(
                            'Register Here',
                            style: TextStyle(
                              color: AppColors.primary,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future signIn() async {
    await GoogleSignInApi.login();
  }
}
