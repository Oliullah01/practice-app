import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingStackWidget extends StatelessWidget {
  const OnboardingStackWidget({
    super.key,
    required this.backgroundImageAsset,
    this.imageSize,
    required this.screenHeight,
    required this.screenWidth,
    required PageController pageController,
    required this.lightGreenButtonColor,
    required this.deepGreenButtonColor,
    required this.buttonWidth,
    required this.buttonHeight,
    required this.titleOne,
    required this.titleTwo,
    required this.titleThree,
    this.onContinuePressed,
    this.arrowPosition,
    this.skipPosition,
    required this.buttonText,
  }) : _pageController = pageController;

  final String backgroundImageAsset;
  final double? imageSize;
  final double screenHeight;
  final double screenWidth;
  final PageController _pageController;
  final Color lightGreenButtonColor;
  final Color deepGreenButtonColor;
  final double buttonWidth;
  final double buttonHeight;
  final String titleOne;
  final String titleTwo;
  final String titleThree;
  final void Function()? onContinuePressed;
  final Offset? arrowPosition; 
  final Offset? skipPosition;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Container(
            height: imageSize ?? screenHeight,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(backgroundImageAsset,),
                fit: BoxFit.cover,
                alignment: Alignment.topCenter,
              ),
            ),
          ),
        ),
        Positioned.fill(
          child: Opacity(
            opacity: 0.5,
            child: Image.asset(
              'assets/images/dark.png',
              fit: BoxFit.cover,
            ),
          ),
        ),
        if (arrowPosition != null) // Render arrow only if position is provided
          Positioned(
            left: arrowPosition!.dx,
            top: arrowPosition!.dy,
            child: InkWell(
              onTap: (){
                Navigator.pop(context);
              },
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                padding: EdgeInsets.all(screenWidth * 0.03),
                child: SizedBox(
                  width: screenWidth * 0.05,
                  height: screenWidth * 0.05,
                  child: Image.asset(
                    'assets/images/img_arrow_left.png',
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
        if (skipPosition != null) // Render "Skip" text only if position is provided
          Positioned(
            left: skipPosition!.dx,
            top: skipPosition!.dy,
            child: Text(
              'Skip',
              style: TextStyle(
                color: Colors.white,
                fontSize: screenWidth * 0.06,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            height: screenHeight * 0.3,
            padding: EdgeInsets.only(top: screenHeight * 0.01),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(screenWidth * 0.1),
                topRight: Radius.circular(screenWidth * 0.1),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  titleOne,
                  style: TextStyle(
                    fontSize: screenWidth * 0.05,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  titleTwo,
                  style: TextStyle(
                    fontSize: screenWidth * 0.05,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  titleThree,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: screenWidth * 0.03,
                  ),
                ),
                SizedBox(height: screenHeight * 0.01),
                Expanded(
                  child: SmoothPageIndicator(
                    controller: _pageController,
                    count: 3,
                    effect: ExpandingDotsEffect(
                      dotColor: lightGreenButtonColor,
                      activeDotColor: deepGreenButtonColor,
                      dotWidth: 8.0,
                      dotHeight: 8.0,
                    ),
                    onDotClicked: (index) {},
                  ),
                ),
                SizedBox(height: screenHeight * 0.01),
                Expanded(
                  child: ElevatedButton(
                    onPressed: onContinuePressed,
                    child: Text(
                      buttonText,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: screenWidth * 0.04,
                      ),
                    ),
                    style: ButtonStyle(
                      backgroundColor:
                      MaterialStateProperty.all<Color>(deepGreenButtonColor),
                      minimumSize: MaterialStateProperty.all<Size>(
                          Size(buttonWidth, buttonHeight)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(screenWidth * 0.02),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: screenHeight * 0.016),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 120),
                    child: Divider(
                      color: Colors.black,
                      thickness: 3.5,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Image backgroundImage() {
    return Image.asset(
      backgroundImageAsset,
      height: screenHeight,
      width: screenWidth,
      fit: BoxFit.fill,
    );
  }
}