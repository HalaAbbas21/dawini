import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../instants/colors.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth=MediaQuery.of(context).size.width;
    double screenHeight=MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.white,
        leading: const Padding(
          padding: EdgeInsets.only(left: 18.0,top: 20),
          child: CircleAvatar(
            radius: 0,
            backgroundColor: AppColors.primary,
            child: BackButton(color: AppColors.white,
            ),

          ),
        ),
        title: const Padding(
          padding: EdgeInsets.only(top: 20),
          child: Text(
            'My Profile',
            style: TextStyle(
                color: AppColors.primary,
                fontWeight: FontWeight.w500,
                fontSize: 24,
                letterSpacing: 0
            ),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 30,),
        Center(
          child: Column(
            children: [
              ClipOval(
                child: CircleAvatar(
                backgroundColor: AppColors.primary,
                radius: 90,
                child:Image.asset('assets/images/default picturee.jpg',
                  fit: BoxFit.fill,
                ),
      ),
              ),
              const SizedBox(height: 10,),
              const Text(
                'Hala Abbas',
                style: TextStyle(
                  color: AppColors.primary,
                  fontSize: 26,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 1
                ),
              ),
              const SizedBox(height: 5,),
              const Text(
                'User',
                style: TextStyle(
                  color: AppColors.grey,
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
          const SizedBox(height: 50,),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               const Row(
                 children: [
                   Text(
                     'Email Address',
                     style: TextStyle(
                       color: AppColors.primary,
                       fontSize: 20,
                       fontWeight: FontWeight.w500,
                     ),
                   ),
                   Spacer(),
                   Icon(Icons.arrow_forward_ios_rounded,
                     color:AppColors.primary ,
                     size: 18,
                   ),
                 ],
               ),
               const SizedBox(height: 5,),
               const Text(
                 'hala@gmail.com',
                 style: TextStyle(
                   color: AppColors.grey,
                   fontSize: 18,
                   fontWeight: FontWeight.w300,
                 ),
               ),
               const Padding(
                 padding: EdgeInsets.all(4.0),
                 child: Divider(
                   thickness: 0.7,
                   color: AppColors.primary,

                 ),
               ),
               const SizedBox(height: 5,),
               const Row(
                 children: [
                   Text(
                     'Phone number',
            style: TextStyle(
              color: AppColors.primary,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
                   ),
                   Spacer(),
                   Icon(Icons.arrow_forward_ios_rounded,
                   color:AppColors.primary ,
                     size: 18,
                   ),
                 ],
               ),
               const SizedBox(height: 5,),
               const Text(
                 '0999999',
                 style: TextStyle(
                   color: AppColors.grey,
                   fontSize: 18,
                   fontWeight: FontWeight.w300,
                 ),
               ),
               const Padding(
                 padding: EdgeInsets.all(4.0),
                 child: Divider(
                   thickness: 0.7,
                   color: AppColors.primary,

                 ),
               ),
               const SizedBox(height: 5,),
               const Row(
                 children: [
                   Text(
                     'Gender',
                     style: TextStyle(
                       color: AppColors.primary,
                       fontSize: 20,
                       fontWeight: FontWeight.w500,
                     ),
                   ),
                   Spacer(),
                   Icon(Icons.arrow_forward_ios_rounded,
                     color:AppColors.primary ,
                     size: 18,
                   ),
                 ],
               ),
               const SizedBox(height: 5,),
               const Text(
                 'Female',
                 style: TextStyle(
                   color: AppColors.grey,
                   fontSize: 18,
                   fontWeight: FontWeight.w300,
                 ),
               ),
               const Padding(
                 padding: EdgeInsets.all(4.0),
                 child: Divider(
                   thickness: 0.7,
                   color: AppColors.primary,

                 ),
               ),
               const SizedBox(height: 30,),
               Container(
                 width:screenWidth/1.1,
                 height: 55,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(30),

                   color: AppColors.primary,
                 ),
                 child: MaterialButton(onPressed: (){
                   Get.defaultDialog(
                     backgroundColor: AppColors.white,
                     title: '',
                     content: const Padding(
                       padding: EdgeInsets.all(12.0),
                       child: Column(
                         children: [
                           Text('Are you sure you want to Logout ?',
                           style: TextStyle(
                             color: AppColors.primary,
                             fontWeight: FontWeight.w400,
                             fontSize: 24,
                           ),
                           ),
                           SizedBox(height: 30,),
                           Row(
                             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                             children: [
                               Text(
                                 'NO',
                                 style: TextStyle(
                                   color: AppColors.primary,
                                   fontSize: 18,
                                   fontWeight: FontWeight.w400
                                 ),
                               ),
                               SizedBox(width: 10,),
                               Text(
                                 'YES',
                                 style: TextStyle(
                                   color: AppColors.primary,
                                   fontSize: 18,
                                     fontWeight: FontWeight.w400
                                 ),
                               ),
                             ],
                           ),
                         ],
                       ),
                     ),
                   );
                 },
                   child: const SizedBox(
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Text(
                           'Logout',
                           style: TextStyle(
                               color: AppColors.white,
                               fontWeight: FontWeight.w500,
                               fontSize: 18
                           ),
                         ),
                         SizedBox(width: 2,),
                         Icon(Icons.login_rounded,
                           color:AppColors.white ,
                           size: 18,
                         ),
                       ],
                     ),
                   ),
                 ),
               ),
             ],
            ),
          ),


        ],
      ),
    );
  }
}
