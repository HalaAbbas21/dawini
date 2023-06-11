import 'package:dawini/instants/colors.dart';
import 'package:dawini/util/clinics_list.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    double screenWidth=MediaQuery.of(context).size.width;
    double screenHeight=MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.white,
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
      body: Column(
        children: [
          //find the best doctor for you
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              'FIND THE BEST DOCTOR FOR YOU',
              style: TextStyle(
                color: AppColors.primary,
                fontSize: 54,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(height: 25),
          //search Bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Container(
              height: 50,
              width: screenWidth,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                border: Border.all(color: AppColors.primary),
              ),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.search,color: AppColors.primary,),
                    hintText: 'Find your clinic ..',

                ),
              ),
            ),
          ),
          SizedBox(height: 25,),
          //horizontal list view of clinics and specialities

          Container(
            height: 50,
            child: Padding(
              padding: const EdgeInsets.only(left: 100.0),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  Text (
                      'Clinics',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: AppColors.primary
                    ),
                  ),
                  SizedBox(width: 50,),
                  Text ('Specialities',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: AppColors.primary
                    ),
                  ),
                ],
              ),
            ),
          ),
          //horizontal listview of clinics
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
               Clinics(
                 clinicImagePath: 'assets/images/clinic1.png',
                 clinicName: 'Clinic 1',
                 clinicAddress: 'Damascus, Syria',
                 clinicNumber: '09999999',
               ),
                Clinics(
                  clinicImagePath: 'assets/images/clinic3.png',
                  clinicName: 'Clinic 3',
                  clinicAddress: 'Damascus, Syria',
                  clinicNumber: '09999999',
                ),
                Clinics(
                  clinicImagePath: 'assets/images/clinic4.png',
                  clinicName: 'Clinic 4',
                  clinicAddress: 'Damascus, Syria',
                  clinicNumber: '09999999',
                ),
                Clinics(
                  clinicImagePath: 'assets/images/clinic5.png',
                  clinicName: 'Clinic 5',
                  clinicAddress: 'Damascus, Syria',
                  clinicNumber: '09999999',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
