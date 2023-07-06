import 'package:dawini/BootomNavBar/bottom_navigation_bar.dart';
import 'package:dawini/util/nav_bar.dart';
import 'package:dawini/util/specialities_list.dart';
import 'package:fancy_bottom_navigation_2/fancy_bottom_navigation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../home_page/home_view/home_view.dart';
import '../instants/bottom_nav_bar.dart';
import '../instants/colors.dart';
import '../util/clinics_list.dart';
import 'home_controller.dart';

class HomePage2 extends StatefulWidget {
  const HomePage2({super.key});

  @override
  State<HomePage2> createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> with TickerProviderStateMixin {
  late final TabController _tabController =
  TabController(length: 2, vsync: this, initialIndex: 0);
  var controller = Get.put(HomeLayoutController());

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: AppColors.white,
      body: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
      SizedBox(height: 30,) ,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 20),
          child:
              Padding(
                padding: const EdgeInsets.only(top: 15.0,left: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Hi Hamza !',
                          style: TextStyle(
                              color: AppColors.primary,
                              fontSize: 30,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.5),
                        ),

                        //  const Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 0.0,top: 0.0),
                          child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.search,
                                color: AppColors.primary,
                                size: 35,
                              )),
                        )
                      ],
                    ),
                    SizedBox(height: 0,),
                    Text(
                      'FIND THE BEST DOCTOR FOR YOU',
                      style: TextStyle(
                          color: AppColors.grey,
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          letterSpacing:0.2
                      ),
                    ),
                  ],
                ),
              ),


        ),
        // gethight(40.0),
        // const AppSearchBar(),

        // gethight(15.0),
        SizedBox(
          height: h * 0.07,
          child: TabBar(
            onTap: (val) {
              setState(() {});
            },
            controller: _tabController,
            labelColor: AppColors.primary,
            unselectedLabelColor: AppColors.grey,
            labelStyle: const TextStyle(fontSize: 18),
            indicator: CircleTabIndicator(color: AppColors.primary, radius: 4),
            tabs: const [
              Tab(
                text: "Clinics",
              ),
              Tab(
                text: "Specialities",
              ),
            ],
          ),
        ),
        _tabController.index == 0
            ? Expanded(
          child: GridView.builder(
            shrinkWrap: true,
            itemCount: 10,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
            itemBuilder: ((context, index) => const Clinics(
                clinicImagePath: "assets/images/doctors1.png",
                clinicName: "clinicName")),
          ),
        )
            : Expanded(
          child: GridView.builder(
            shrinkWrap: true,
            itemCount: 30,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
            itemBuilder: ((context, index) => const Specialities(
                specialityImagePath: "assets/images/tooth.png",
                specialityType: "Dentistry")),

          ),
        ),
      ]),
     
    );
  }


}


// }
