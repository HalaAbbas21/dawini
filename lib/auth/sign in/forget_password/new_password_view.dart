import 'package:dawini/instants/colors.dart';
import 'package:flutter/material.dart';


class NewPasswordScreen extends StatelessWidget {
  const NewPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.white,
        leading: BackButton(color: AppColors.primary,),
        title: Text(
          'New Password',
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
            children: [
              Container(
                height: 250,
                width: 400,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/password.png'),
                    )
                ),
              ),
              SizedBox(height: 20,),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '  New Password',
                    style: TextStyle(
                        color: AppColors.primary,
                        fontWeight: FontWeight.bold,
                        fontSize: 35,
                        letterSpacing: 1
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text(
                    'Please write your new password',
                    style: TextStyle(
                        color: AppColors.grey,
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                        letterSpacing: 1
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30,),
              Container(
                width: double.infinity,
                height:55,
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.primary.withOpacity(0.2),width:2 ),
                  borderRadius: BorderRadius.circular(40),
                ),
                child: TextFormField(
                  cursorColor: AppColors.primary,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText:'Password',
                    hintStyle: TextStyle(color: AppColors.primary,
                        fontSize: 15
                    ),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        backgroundColor:AppColors.white.withOpacity(0.1) ,
                        child: Icon(
                          Icons.lock,
                          color: AppColors.primary,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Container(
                width: double.infinity,
                height:55,
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.primary.withOpacity(0.2),width:2 ),
                  borderRadius: BorderRadius.circular(40),
                ),
                child: TextFormField(
                  cursorColor: AppColors.primary,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText:'Confirm password',
                    hintStyle: TextStyle(color: AppColors.primary,
                        fontSize: 15
                    ),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        backgroundColor:AppColors.white.withOpacity(0.1) ,
                        child: Icon(
                          Icons.lock,
                          color: AppColors.primary,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              MaterialButton(
                onPressed: (){
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
                      'Confirm your password',
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
