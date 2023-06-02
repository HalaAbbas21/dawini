import 'package:flutter/material.dart';

import 'colors.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height:55,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.white.withOpacity(0.2),width:2 ),
        borderRadius: BorderRadius.circular(40),
      ),
    );
  }
}
