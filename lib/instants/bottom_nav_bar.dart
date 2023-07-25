

import 'package:dawini/instants/colors.dart';
import 'package:dawini/user_pages/appointments/appointments_view.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
class MyBottomNavBar extends StatefulWidget {
// const MyBottomNavBar({Key? key, required void Function(dynamic index) onTabChange}) : super(key: key);

  @override
  State<MyBottomNavBar> createState() => _MyBottomNavBarState();
}

class _MyBottomNavBarState extends State<MyBottomNavBar> {
 int _selectedIndex=0;

 void _navigateBottomBar(int index){
   setState(() {
     _selectedIndex=index;
   });
 }

 final List<Widget> _pages=[
   UserAppointments(),
 ];
  @override
  Widget build(BuildContext context) {
    return
     Padding(
       padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal:20 ),
       child: ClipRRect(
         borderRadius: BorderRadius.only(
             topLeft: Radius.circular(50),
             topRight: Radius.circular(50),
         ),
         child: Container(
           decoration: BoxDecoration(
             color: Colors.transparent,
             borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
               topRight: Radius.circular(50)
             ),
           ),
           child: BottomNavigationBar(
             //error    _pages.elementAt( _selectedIndex),
             backgroundColor:AppColors.primary.withOpacity(0.1),
             selectedItemColor: AppColors.primary,
             unselectedItemColor: AppColors.grey,
             elevation: 0,
             currentIndex: _selectedIndex,
             onTap: _navigateBottomBar,
             type: BottomNavigationBarType.fixed,
             items: [
               BottomNavigationBarItem(icon:Icon(Icons.home_filled),
               label: 'Home'
               ),
               BottomNavigationBarItem(icon:Icon(Icons.list),
                   label: 'Appointments'
               ),
               BottomNavigationBarItem(icon:Icon(Icons.notifications),
                   label: 'Notifications'
               ),
               BottomNavigationBarItem(icon:Icon(Icons.message),
                   label: 'Messages'
               ),
             ],

    ),
         ),
       ),
     );
  }

}