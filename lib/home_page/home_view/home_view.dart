

import 'package:dawini/instants/colors.dart';
import 'package:dawini/util/clinics_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late final TabController _tabController=TabController(length: 2, vsync:this,initialIndex: 0);

  @override
  Widget build(BuildContext context) {
    double screenWidth=MediaQuery.of(context).size.width;
    double screenHeight=MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.black,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.black,
        leading: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Icon(Icons.menu,color: AppColors.primary,),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(15.0),
            child: Icon(Icons.perm_identity_sharp,color: AppColors.primary,),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0.5,vertical:0.5),
        child: Column(
          children: [

            //find the best doctor for you
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 37 ),
              child: Text(
                'FIND THE BEST DOCTOR FOR YOU',
                style: TextStyle(
                  color: AppColors.primary,
                  fontSize: 48,
                  fontWeight: FontWeight.w600,
                  letterSpacing:0.5
                ),
              ),
            ),
            SizedBox(height: 30),
            //search Bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                height: 50,
                width: screenWidth,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
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
                    prefixIcon: Icon(Icons.search,color: AppColors.black,),
                      hintText: 'Find your clinic ..',
                    hintStyle: TextStyle(color: AppColors.black),

                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            //horizontal tap bar of clinics and specialities
            Container(
              width: double.maxFinite,
              height: 45,
              child: TabBar(
                controller: _tabController,

                labelColor: AppColors.primary,
                unselectedLabelColor: AppColors.grey,
                labelStyle: TextStyle(
                  fontSize: 18
                ),
                indicator: CircleTabIndicator(color:AppColors.primary,radius:4),
                tabs: [
                  Tab(text: "Clinics",),
                  Tab(text: "Specialities",),
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
                             padding: const EdgeInsets.symmetric(vertical: 18.0,horizontal: 10),
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
                padding: const EdgeInsets.symmetric(vertical: 18.0,horizontal: 10),
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