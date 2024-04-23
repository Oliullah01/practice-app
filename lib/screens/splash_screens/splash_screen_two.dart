import 'package:custom_halal_app/screens/onboarding_screens/onboarding_screen_one.dart';
import 'package:flutter/material.dart';


class SplashScreenTwo extends StatefulWidget {
  const SplashScreenTwo({super.key});

  @override
  State<SplashScreenTwo> createState() => _SplashScreenTwoState();
}

class _SplashScreenTwoState extends State<SplashScreenTwo> {
  void initState() {
    // TODO: implement initState
    super.initState();
    _moveToOnboardingScreenOne();
  }
  Future<void> _moveToOnboardingScreenOne()async{
    await Future.delayed(Duration(seconds: 3),);
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>OnboardingScreenOne(),),);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(child: Image.asset('assets/images/splash_two.png')),
        ],
      ),
    );
  }
}
