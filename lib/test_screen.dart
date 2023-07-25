import 'package:dawini/instants/bottom_nav_bar.dart';
import 'package:dawini/instants/colors.dart';
import 'package:flutter/material.dart';

class Test extends StatelessWidget {
  const Test({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      bottomNavigationBar:
      Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Align(
              alignment: Alignment(0.0,1.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.white),
                  borderRadius: BorderRadius.all(
                      Radius.circular(30)
                  ),

                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(
                    Radius.circular(30)
                  ),
                    child: MyBottomNavBar()),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
