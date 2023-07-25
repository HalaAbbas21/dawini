import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../instants/colors.dart';
import 'gender_selection_controller.dart';

class GenderSelection extends StatelessWidget {
  GenderSelectionController genderSelectionController=Get.put(GenderSelectionController());
  GenderSelection({Key? key, required this.colorText,required this.colorRadio1,required this.colorText1,required this.colorRadio2, required this.colorText2}) : super(key: key);
  final dynamic colorText;
  final dynamic colorRadio1;
  final dynamic colorText1;
  final dynamic colorRadio2;
  final dynamic colorText2;


  @override
  Widget build(BuildContext context) {
    return   Padding(
           padding: const EdgeInsets.all(20.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                   const Expanded(
                        child: Text(
                                  'Gender',
                                   style: TextStyle(
                                     fontSize: 15,
                                   color: AppColors.primary,
                                   fontWeight: FontWeight.bold,
                                      ),
                                      ),
                                    ),
                                    Row(
                                     children: [
                                       Obx(
                                         ()=> Radio(
                                           value: 'Male',
                                            groupValue:genderSelectionController.selectedGender.value,
                                             onChanged: (value){
                                          genderSelectionController.onChangedGender(value);
                                             },
                                             activeColor: AppColors.primary,
                                             fillColor: MaterialStateProperty.all(AppColors.primary),
                                               ),
                                         ),
                                          const Text(
                                            'Male',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                          fontSize: 15,
                                            color: AppColors.primary
                                            ),
                                           ),
                                          Obx(
                                              ()=> Radio(
                                            value: 'Female',
                                            groupValue: genderSelectionController.selectedGender.value,
                                            onChanged: (value){
                                              genderSelectionController.onChangedGender(value);
                                            },
                                                activeColor: AppColors.primary,
                                                  fillColor: MaterialStateProperty.all(AppColors.primary),
                                              ),
                                          ),
                                           const Text(
                                               'Female',
                                            style: TextStyle(
                                           fontWeight: FontWeight.w500,
                                             fontSize: 15,
                                              color: AppColors.primary
                                           ),
                                         ),
                                        ],
                                    ),
                                  ],
                              ),
                          );
  }
}
