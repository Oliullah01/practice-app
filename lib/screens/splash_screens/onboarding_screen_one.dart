import 'package:custom_halal_app/widgets/background_widget.dart';
import 'package:flutter/material.dart';


class OnboardingScreenOne extends StatefulWidget {
  const OnboardingScreenOne({super.key});

  @override
  State<OnboardingScreenOne> createState() => _OnboardingScreenOneState();
}

class _OnboardingScreenOneState extends State<OnboardingScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundWidget(
        imagePath: 'assets/images/onboarding_bg_one.png',
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(8),topRight: Radius.circular(8),),
            //color: Colors.red,
          ),
          child: Column(
            children: [
              Text('Easily order your product',style: TextStyle(color: Colors.black, fontSize: 24),),
            ],
          ),
        ),
      ),
    );
  }
}
