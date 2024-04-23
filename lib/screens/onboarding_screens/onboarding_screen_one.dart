import 'package:custom_halal_app/screens/onboarding_screens/onboarding_screen_two.dart';
import 'package:custom_halal_app/widgets/onboarding/onboarding_stack_widget.dart';
import 'package:flutter/material.dart';


class OnboardingScreenOne extends StatefulWidget {
  const OnboardingScreenOne({Key? key}) : super(key: key);

  @override
  State<OnboardingScreenOne> createState() => _OnboardingScreenOneState();
}

class _OnboardingScreenOneState extends State<OnboardingScreenOne> {
  PageController _pageController = PageController();
  Color deepGreenButtonColor = const Color(0xFF0D8335);
  Color lightGreenButtonColor = const Color(0xFF9ECDAE);

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double imageSize = screenHeight * 0.6;
    double buttonWidth = screenWidth * 0.8;
    double buttonHeight = screenHeight * 0.08;


    double arrowTopPosition = screenHeight * 0.05;
    double skipRightPosition = screenWidth * 0.86; // 86% of the screen width


    Offset arrowPosition = Offset(screenWidth * 0.05, arrowTopPosition);
    Offset skipPosition = Offset(skipRightPosition, arrowTopPosition);


    return Scaffold(
      body: OnboardingStackWidget(
        backgroundImageAsset: 'assets/images/onboarding_bg_one.png',
        imageSize: imageSize,
        titleOne: 'Easily order your product',
        titleTwo: '& get delivered',
        titleThree: 'Order your favourite products',
        screenHeight: screenHeight,
        screenWidth: screenWidth,
        pageController: _pageController,
        lightGreenButtonColor: lightGreenButtonColor,
        deepGreenButtonColor: deepGreenButtonColor,
        buttonWidth: buttonWidth,
        buttonHeight: buttonHeight,
        onContinuePressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => OnboardingScreenTwo(),),);
        },
        arrowPosition: arrowPosition,
        skipPosition: skipPosition,
        buttonText: 'Continue',
      ),
    );
  }
}