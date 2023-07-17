

import 'package:dawini/home_page/specialities_screen.dart';
import 'package:dawini/instants/bottom_nav_bar.dart';
import 'package:dawini/instants/colors.dart';
import 'package:dawini/user_pages/messages/messages_view.dart';
import 'package:dawini/user_pages/notifications/notification_view.dart';
import 'package:dawini/util/clinics_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../../home/home_layout.dart';
import '../../user_pages/appointments/appointments_view.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late final TabController _tabController=TabController(length: 2, vsync:this,initialIndex: 0);
  final List<Widget> _pages=[
    const UserAppointments(),
    const UserNotification(),
    const UserMessages(),
  ];
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
          padding: EdgeInsets.all(15.0),
          child: Icon(Icons.menu,color: AppColors.primary,),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(15.0),
            child: Icon(Icons.search,color: AppColors.primary,),
          ),
        ],
      ),
      body:
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0.5,vertical:0.5),
        child: Column(
          children: [

            //find the best doctor for you
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 40 ),
              child: Text(
                'FIND THE BEST DOCTOR FOR YOU',
                style: TextStyle(
                  color: AppColors.primary,
                  fontSize: 35,
                  fontWeight: FontWeight.w600,
                  letterSpacing:0.2
                ),
              ),
            ),
            const SizedBox(height: 5),
          /*  //search Bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                height: 50,
                width: screenWidth-50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: AppColors.primary),
                    boxShadow: const [
                      BoxShadow(
                        color: AppColors.primary,
                        blurRadius: 3,
                        spreadRadius: 1,
                      ),
                    ]
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.search,color: AppColors.white,),
                      hintText: 'Find your clinic ..',
                    hintStyle: TextStyle(color: AppColors.white),

                  ),
                ),
              ),
            ),*/
            const SizedBox(height: 5,),
            //horizontal tap bar of clinics and specialities
            Container(
              width: double.maxFinite,
              height: 45,
              child: TabBar(
                controller: _tabController,

                labelColor: AppColors.primary,
                unselectedLabelColor: AppColors.grey,
                labelStyle: const TextStyle(
                  fontSize: 18
                ),
                indicator: CircleTabIndicator(color:AppColors.primary,radius:4),
                tabs: [
                  const Tab(text: "Clinics",
                  ),
                  const Tab(text: "Specialities",
                  ),
                ],
              ),
            ),
            Container(
              width: double.maxFinite,
              height: 10,
              child: TabBarView(
                controller: _tabController,
                children: [
                 ListView.builder(
                     itemBuilder:(_,index){
                       return Expanded(
                           child: Padding(
                             padding: const EdgeInsets.symmetric(vertical: 20.0,horizontal: 50),
                             child: GridView.count(
                               scrollDirection: Axis.vertical,
                               crossAxisCount: 2,
                               children: const [
                                 Clinics(
                                   clinicImagePath: 'assets/images/clinic1.png',
                                   clinicName: 'Clinic 1',
                                 ),

                                 Clinics(
                                   clinicImagePath: 'assets/images/clinic3.png',
                                   clinicName: 'Clinic 3',

                                 ),
                                 Clinics(
                                   clinicImagePath: 'assets/images/clinic4.png',
                                   clinicName: 'Clinic 4',

                                 ),
                                 Clinics(
                                   clinicImagePath: 'assets/images/clinic5.png',
                                   clinicName: 'Clinic 5',
                                 ),
                                 Clinics(
                                   clinicImagePath: 'assets/images/clinic5.png',
                                   clinicName: 'Clinic 6',

                                 ),
                                 Clinics(
                                   clinicImagePath: 'assets/images/clinic5.png',
                                   clinicName: 'Clinic 7',

                                 ),
                               ],
                             ),
                           ),
                         );
                     }

                 ),
                  ListView.builder(itemBuilder: (_,index){

                  }),
                ],
              ),
            ),
          //vertical  gridview of clinics
           Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 10),
                child: GridView.count(
                  scrollDirection: Axis.vertical,
                crossAxisCount: 2,
                  children: const [
                   Clinics(
                     clinicImagePath: 'assets/images/clinic1.png',
                     clinicName: 'Clinic 1',

                   ),

                    Clinics(
                      clinicImagePath: 'assets/images/clinic3.png',
                      clinicName: 'Clinic 3',

                    ),
                    Clinics(
                      clinicImagePath: 'assets/images/clinic4.png',
                      clinicName: 'Clinic 4',

                    ),
                    Clinics(
                      clinicImagePath: 'assets/images/clinic5.png',
                      clinicName: 'Clinic 5',

                    ),
                    Clinics(
                      clinicImagePath: 'assets/images/clinic5.png',
                      clinicName: 'Clinic 5',

                    ),
                    Clinics(
                      clinicImagePath: 'assets/images/clinic5.png',
                      clinicName: 'Clinic 5',

                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0,vertical:30),
        child: Container(
          height: 55,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GNav(
                backgroundColor: Colors.white,
                color: AppColors.primary,
                activeColor: AppColors.primary,
                tabBackgroundColor: AppColors.primary.withOpacity(0.1),
                gap: 3,
                onTabChange: (indexx){
                  print(indexx);
                },
                padding: const EdgeInsets.all(8),
                tabs: [
                  GButton(
                    onPressed: (){
                      Get.to(HomeLayout());
                    },
                    icon: Icons.home_filled,
                    text: 'Home',
                  ),
                  GButton(
                    icon: Icons.date_range_rounded,
                    text: 'Appointments',
                    onPressed: (){
                      Get.to(UserAppointments());
                    },
                  ),
                  GButton(
                    icon: Icons.notifications,
                    text: 'Notifications',
                    onPressed: (){
                      Get.to(UserNotification());
                    },

                  ),
                  GButton(
                    icon: Icons.messenger_outlined,
                    text: 'Messages',
                    onPressed: (){
                      Get.to(UserMessages());
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),

    );
  }
}

class CircleTabIndicator extends Decoration{
  final Color color;
  double radius;
  CircleTabIndicator({required this.color,required this.radius});


  @override
  BoxPainter createBoxPainter([VoidCallback ?onChanged]) {
    return _CirclePainter(color:color,radius:radius);

}

}

class _CirclePainter extends BoxPainter {
  final Color color;
  late double radius;

  _CirclePainter({required this.color,required this.radius});

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration cfg) {
   late Paint _paint;
   _paint = Paint()..color=color;
   _paint = _paint..isAntiAlias=true;

   final Offset circleOffset=
       offset + Offset(cfg.size!.width/2,cfg.size!.height-radius);
   canvas.drawCircle(circleOffset, radius,_paint);

  }

}