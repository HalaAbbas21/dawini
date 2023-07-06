import 'package:dawini/instants/colors.dart';
import 'package:dawini/onboarding/onboarding_view.dart';
import 'package:flutter/material.dart';
class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState(){
    super.initState();
    _navigateToOnboarding();
  }

  _navigateToOnboarding()async{
    await Future.delayed(Duration(milliseconds: 1500), () {});
    Navigator.push(context,MaterialPageRoute(
        builder: (context)=>OnboardingScreen()
    ) );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Center(
        child: Container(
          child: Image.asset('assets/images/Dawini.png',

          ),
        ),
      ),
    );
  }
}
