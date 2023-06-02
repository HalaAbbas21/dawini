import 'dart:ui';

import 'package:dawini/instants/colors.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../auth/sign in/signin_view.dart';
import '../auth/sign up/sign_up_view.dart';


class StartPage extends StatelessWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
          children:[
            Container(
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
            ),

            SafeArea(
              child: Padding(
                padding: const EdgeInsets.only(top: 200.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 310,
                      width: 400,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/doctors1.png'),
                          )
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 20.0,right: 20,bottom: 30,),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    alignment: Alignment.topCenter,
                    height: 200,
                    width: 200,
                    child: Text(
                      'Dawini',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 65,
                        color: AppColors.white,
                        letterSpacing: 1,
                      ),
                    ),
                  ),
                  MaterialButton(
                    onPressed: (){
                      Get.to(SigninScreen());
                    },
                    child: Container(
                      alignment: Alignment.bottomCenter,
                      height: 60,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(color: AppColors.white,width: 1.0),
                      ),
                      child: Center(
                        child: Text(
                          'Login',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                            color: AppColors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  MaterialButton(
                    onPressed: (){
                      Get.to(SignUpScreen());
                    },
                    child: Container(
                      alignment: Alignment.bottomCenter,
                      height: 60,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(color:AppColors.white,width: 1.0),
                      ),
                      child: Center(
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
    );
  }
}
