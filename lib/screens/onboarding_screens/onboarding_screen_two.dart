import 'package:custom_halal_app/screens/onboarding_screens/onboarding_screen_three.dart';
import 'package:custom_halal_app/widgets/onboarding/onboarding_stack_widget.dart';
import 'package:flutter/material.dart';

class OnboardingScreenTwo extends StatefulWidget {
  const OnboardingScreenTwo({super.key});

  @override
  State<OnboardingScreenTwo> createState() => _OnboardingScreenTwoState();
}

class _OnboardingScreenTwoState extends State<OnboardingScreenTwo> {
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
        backgroundImageAsset: 'assets/images/onboarding_bg_two.png',
        imageSize: imageSize,
        titleOne: 'Donate Product to',
        titleTwo: 'give discounts to all users',
        titleThree: 'Users can buy products at cheap price',
        screenHeight: screenHeight,
        screenWidth: screenWidth,
        pageController: _pageController,
        lightGreenButtonColor: lightGreenButtonColor,
        deepGreenButtonColor: deepGreenButtonColor,
        buttonWidth: buttonWidth,
        buttonHeight: buttonHeight,
        onContinuePressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => OnboardingScreenThree(),),);
        },
        arrowPosition: arrowPosition,
        skipPosition: skipPosition,
        buttonText: 'Continue',
      ),
    );
  }
}
