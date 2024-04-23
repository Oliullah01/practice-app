import 'package:custom_halal_app/screens/auth_screens/log_in_screen.dart';
import 'package:custom_halal_app/widgets/onboarding/onboarding_stack_widget.dart';
import 'package:flutter/material.dart';

class OnboardingScreenThree extends StatefulWidget {
  const OnboardingScreenThree({super.key});

  @override
  State<OnboardingScreenThree> createState() => _OnboardingScreenThreeState();
}

class _OnboardingScreenThreeState extends State<OnboardingScreenThree> {
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
    Offset arrowPosition = Offset(screenWidth * 0.05, arrowTopPosition);

    return Scaffold(
      body: OnboardingStackWidget(
        backgroundImageAsset: 'assets/images/onboarding_bg_three.png',
        imageSize: imageSize,
        titleOne: 'Communicate with your',
        titleTwo: 'friends easily',
        titleThree: 'You can make friends to contact',
        screenHeight: screenHeight,
        screenWidth: screenWidth,
        pageController: _pageController,
        lightGreenButtonColor: lightGreenButtonColor,
        deepGreenButtonColor: deepGreenButtonColor,
        buttonWidth: buttonWidth,
        buttonHeight: buttonHeight,
        onContinuePressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen(),),);
        },
        arrowPosition: arrowPosition,
        buttonText: 'Get Started',
      ),
    );
  }
}