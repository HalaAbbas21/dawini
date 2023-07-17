import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../instants/colors.dart';
import '../home_controller.dart';

class SideBar extends StatelessWidget {
  SideBar({super.key});

  var controller = Get.put(HomeLayoutController());

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Obx(
            () => AnimatedPositioned(
        duration: const Duration(milliseconds: 300),
    top: 0,
    bottom: 0,
    left: controller.isdraweropened.value ? 0 : -w,
    right: controller.isdraweropened.value ? w - w * 0.9 : w - w * 0.1,
    child: Row(
    children: [
    Expanded(
    child: Padding(
      padding: const EdgeInsets.only(top:32.0,right: 0,left: 0,bottom: 0),
      child: Container(

      decoration: BoxDecoration(
        color: AppColors.white,
        border: Border.all(color: AppColors.primary,width: 5),
        borderRadius: BorderRadius.only(topRight: Radius.circular(30),bottomRight: Radius.circular(30)),
      ),
      height: h,
      child: Padding(
      padding: const EdgeInsets.fromLTRB(10, 60, 10, 0),
      child: Column(
      children: [
      Row(
      children: [
      const CircleAvatar(
      radius: 30,
      backgroundColor: AppColors.primary,
      ),
      SizedBox(width: 10,),
      Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      const Text(
      "Name",
      style: TextStyle(color: AppColors.primary,fontSize: 18),
      ),
      SizedBox(
      width: w * 0.40,
      child: const Text(
      "Email@example.com",
      overflow: TextOverflow.ellipsis,
      maxLines: 1,
      style: TextStyle(color: AppColors.primary,fontSize: 18),
      ),
      )
      ],
      )
      ],
      ),
      SizedBox(height: 10,),
      const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20,vertical:5),
      child: Divider(
      height: 10,
      color: AppColors.primary,
      ),
      ),
   SizedBox(height: 20,),
      GestureDetector(
      onTap: () {
      controller.changeind(0);
      },
      child: Row(
      children: [
      const Icon(Icons.home, color: AppColors.primary),
      SizedBox(width: 10,),
      const Text(
      "Home",
      style: TextStyle(
      color: AppColors.primary, fontSize: 18),
      )
      ],
      ),
      ),
   SizedBox(height: 20,),
      GestureDetector(
      onTap: () {
      controller.changeind(1);
      },
      child: Row(
      children: [
      const Icon(Icons.person, color: AppColors.primary),
      SizedBox(width: 10,),
      const Text(
      "My Profile",
      style: TextStyle(
      color: AppColors.primary, fontSize: 18),
      )
      ],
      ),
      ),
      SizedBox(height: 20,),
        GestureDetector(
            onTap: () {
              controller.changeind(2);
            },
            child: Row(
              children: [
                const Icon(
                  Icons.archive_outlined,
                  color: AppColors.primary,
                ),
                SizedBox(width: 10,),
                const Text(
                  "Archive",
                  style: TextStyle(
                      color: AppColors.primary, fontSize: 18),
                )
              ],
            )),
       SizedBox(height: 20,),
        GestureDetector(
            onTap: () {
              controller.changeind(3);
            },
            child: Row(
              children: [
                const Icon(
                  Icons.settings,
                  color: AppColors.primary,
                ),
                SizedBox(width: 10,),
                const Text(
                  "Settings",
                  style: TextStyle(
                      color: AppColors.primary, fontSize: 18),
                )
              ],
            ))
      ],
      ),
      ),
      ),
    ),
    ),
      Align(
        alignment: const Alignment(0, -0.86),
        child: GestureDetector(
          onTap: () {
            controller.changedrwerstate();
          },
          child: ClipPath(
            clipper: CustomMenuClipper(),
            child: Container(
              padding: EdgeInsets.zero,
              decoration: const BoxDecoration(
                color: AppColors.primary,
                // borderRadius:
                //     BorderRadius.horizontal(right: Radius.circular(20)),
              ),
              height: h * 0.11,
              width: w * 0.09,
              child: Icon(
                controller.isdraweropened.value
                    ? Icons.close
                    : Icons.menu,
                color: AppColors.white,
              ),
            ),
          ),
        ),
      )
    ],
    ),
            ),
    );
  }

}

class CustomMenuClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final width = size.width;
    final height = size.height;
    var path = Path();
    path.moveTo(0, 0);
    path.quadraticBezierTo(0, 8, 10, 16);
    path.quadraticBezierTo(width - 1, height / 2 - 20, width, height / 2);
    path.quadraticBezierTo(width + 1, height / 2 + 20, 10, height - 16);
    path.quadraticBezierTo(0, height - 8, 0, height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}