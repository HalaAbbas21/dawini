import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';
import 'package:awesome_bottom_bar/tab_item.dart';
import 'package:flutter/material.dart';

import '../instants/colors.dart';

class AwesomeNavBar extends StatefulWidget {
  const AwesomeNavBar({Key? key}) : super(key: key);

  @override
  State<AwesomeNavBar> createState() => _AwesomeNavBarState();
}

class _AwesomeNavBarState extends State<AwesomeNavBar> {
  @override
  Widget build(BuildContext context) {
    int visit = 0;
    List<TabItem> items = [
      TabItem(
        icon: Icons.home_filled,
        title: 'Home',
      ),
      TabItem(
        icon: Icons.date_range_rounded,
        title: 'Appointments',
      ),
      TabItem(
        icon: Icons.notifications,
        title: 'Notifications',
      ),
      TabItem(
        icon: Icons.messenger_outlined,
        title: 'Messages',
      ),
    ];
    return Container(
      color: Colors.transparent,
      padding:EdgeInsets.only(bottom: 20, right: 32, left: 32),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: BottomBarFloating(
          items: items,

          iconSize: 24,
          backgroundColor: Colors.white,
          color: AppColors.grey,
          colorSelected: AppColors.primary,
          indexSelected: visit,
          blur:33 ,
          paddingVertical: 15,
          onTap: (int index) => setState(() {
            visit = index;
          }),
        ),
      ),
    );
  }
}
