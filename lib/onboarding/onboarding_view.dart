import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'onboarding_controller.dart';
class OnboardingScreen extends StatelessWidget {
  final _controller=OnboardingController();
  OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Stack(
              children:[
                PageView.builder(
                    controller:_controller.pageController ,
                    onPageChanged: _controller.selectedPageIndex,
                    itemCount: _controller.onboardingPages.length,
                    itemBuilder:(context, index) {
                      return Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(_controller.onboardingPages[index].imageAsset),
                            Text(_controller.onboardingPages[index].title,
                              style: const TextStyle(
                                fontSize:50,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF78A6C8),
                              ),
                            ),
                            const SizedBox(height: 20),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 64.0),
                              child: Text(_controller.onboardingPages[index].description,
                                style: const TextStyle(color: Color(0xFF9CADBC),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18
                                ),
                                textAlign: TextAlign.center,

                              ),
                            ),

                          ],
                        ),
                      );
                    }),
                Positioned(
                  bottom: 130,
                  left:165,
                  child: Row(
                    children:
                    List.generate(
                        _controller.onboardingPages.length,
                            (index) => Obx(() {
                          return Container(
                            margin: const EdgeInsets.all(4),
                            width: 12,
                            height: 12,
                            decoration: BoxDecoration(
                              color:_controller.selectedPageIndex.value==index
                                  ?const Color(0xFF78A6C8)
                                  :const Color(0xFF9CADBC),
                              shape: BoxShape.circle,
                            ),
                          );
                        }
                        )),

                  ),
                ),
              ] ),
        ),
      ),
    );
  }
}
