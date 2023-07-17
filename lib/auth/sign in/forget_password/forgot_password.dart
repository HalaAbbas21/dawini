import 'package:dawini/instants/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'otp_view.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.white,
        leading: BackButton(color: AppColors.primary,),
        title: Text(
          'Forgot Password',
          style: TextStyle(
              color: AppColors.primary,
              fontWeight: FontWeight.bold,
              fontSize: 20,
              letterSpacing: 1
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 350,
                width: 500,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/forgetpassword.png'),
                    )
                ),
              ),
              SizedBox(height: 10,),
              Text(
                'Forgot Passsword ?',
                style: TextStyle(
                    color: AppColors.primary,
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                    letterSpacing: 1
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 20),
                child: Container(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Please write your email to recieve a confirmation '
                        'code to set a new password',
                    style: TextStyle(
                        color: AppColors.grey,
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                        letterSpacing: 1
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  width: double.infinity,
                  height:55,
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.primary.withOpacity(0.2),width:2 ),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: TextFormField(
                    cursorColor: AppColors.primary,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText:'Email or Username',
                      hintStyle: TextStyle(color: AppColors.primary,
                          fontSize: 15
                      ),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          backgroundColor:AppColors.white.withOpacity(0.1) ,
                          child: Icon(
                            Icons.email,
                            color: AppColors.primary,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              MaterialButton(
                onPressed: (){
                  Get.to(OTPScreen());
                },
                child: Container(

                  height: 55,
                  width:double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    border: Border.all(color:AppColors.primary.withOpacity(0.2),width:2),
                    color: AppColors.primary,
                  ),
                  child: Center(
                    child: Text(
                      'Confirm your email',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w300,
                        color: AppColors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
