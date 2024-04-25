import 'package:custom_halal_app/theme/text_style_customize.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Container(
      width: screenWidth,
      height: screenHeight,
      decoration: BoxDecoration(
        color: Color.fromRGBO(225, 239, 230, 1),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            left: -screenWidth * 0.032,
            child: Container(
              width: screenWidth * 1.064,
              height: screenHeight * 0.4,
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    left: screenWidth * 0.032,
                    child: Container(
                      width: screenWidth,
                      height: screenHeight * 0.4,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(0),
                          topRight: Radius.circular(0),
                          bottomLeft: Radius.circular(screenWidth * 0.08),
                          bottomRight: Radius.circular(screenWidth * 0.08),
                        ),
                        //color: Color.fromRGBO(4, 121, 42, 1),
                        image: DecorationImage(
                          image: AssetImage('assets/images/home_bg_green.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  // Positioned(
                  //   top: screenHeight * 0.13,
                  //   left: 0,
                  //   child: Container(
                  //     width: screenWidth * 1.064,
                  //     height: screenHeight * 0.0977,
                  //     child: null, // Your mask holder template
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
          Positioned(
            top: screenHeight * 0.0787,
            left: screenWidth * 0.0533,
            child: Container(
              width: screenWidth * 0.0747,
              height: screenWidth * 0.0747,
              decoration: BoxDecoration(
                color: Color.fromRGBO(255, 255, 255, 1),
              ),
              child: Center(
                child: SvgPicture.asset(
                  'assets/images/vector.svg',
                  semanticsLabel: 'vector',
                  width: screenWidth * 0.0373,
                  height: screenWidth * 0.0373,
                ),
              ),
            ),
          ),
          Positioned(
            top: screenHeight * 0.0593,
            left: screenWidth * 0.4133,
            child: Container(
              width: screenWidth * 0.1707,
              height: screenWidth * 0.1707,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/logo.png'),
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
          ),
          Positioned(
            top: screenHeight * 0.075,
            left: screenWidth * 0.849,
            child: Container(
              width: screenWidth * 0.088,
              height: screenWidth * 0.088,
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    left: 0,
                    child: Container(
                      width: screenWidth * 0.088,
                      height: screenWidth * 0.088,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        borderRadius: BorderRadius.all(
                          Radius.elliptical(
                              screenWidth * 0.088, screenWidth * 0.088),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: (screenWidth * 0.088 - screenWidth * 0.088) / 2,
                    left: (screenWidth * 0.088 - screenWidth * 0.088) / 2,
                    child: Image.asset(
                      'assets/images/search.png',
                      width: screenWidth * 0.088,
                      height: screenWidth * 0.088,
                    ),
                    // child: Container(
                    //   width: screenWidth * 0.044, // Adjusted width value
                    //   height: screenWidth * 0.044, // Adjusted height value
                    //   decoration: BoxDecoration(
                    //     color: Color.fromRGBO(255, 255, 255, 1),
                    //   ),
                    //   child: Center(
                    //     child: Image.asset(
                    //       'assets/images/search.png',
                    //       width: screenWidth * 0.066, // Adjusted width value
                    //       height: screenWidth * 0.066, // Adjusted height value
                    //     ),
                    //   ),
                    // ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: screenHeight * 0.175,
            left: screenWidth * 0.05,
            child: Container(
              width: screenWidth * 0.893333,
              height: screenHeight * 0.075,
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    left: 0,
                    child: Container(
                      width: screenWidth * 0.893333,
                      height: screenHeight * 0.075,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                            screenWidth * 0.037333), // 14 / 375
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(13, 131, 53, 0.08),
                            offset: Offset(0, screenHeight * 0.00529),
                            blurRadius: screenWidth * 0.026667,
                          ),
                        ],
                        color: Colors.white,
                        border: Border.all(
                          color: Color.fromRGBO(13, 131, 53, 1),
                          width: screenWidth * 0.002667,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: screenHeight * 0.022,
                    left: screenWidth * 0.042667,
                    child: Container(
                      width: screenWidth * 0.192,
                      height: screenHeight * 0.031,
                      child: Stack(
                        children: [
                          Positioned(
                            top: screenHeight * 0.0035,
                            left: screenWidth * 0.085333,
                            child: Text(
                              'Search'.tr,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Color.fromRGBO(112, 112, 112, 1),
                                fontFamily: 'Inter',
                                fontSize: screenWidth * 0.032,
                                letterSpacing: 0,
                                fontWeight: FontWeight.normal,
                                height: 1.4,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 0,
                            left: 0,
                            child: Container(
                              width: screenWidth * 0.064,
                              height: screenWidth * 0.064,
                              decoration: BoxDecoration(
                                color: Colors.white,
                              ),
                              child: Center(
                                child: Image.asset(
                                  'assets/images/searching.png',
                                  width: screenWidth * 0.064,
                                  height: screenWidth * 0.064,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: screenHeight * 0.022,
                    left: screenWidth * 0.786667,
                    child: Container(
                      width: screenWidth * 0.064,
                      height: screenWidth * 0.064,
                      child: Image.asset(
                        'assets/images/searching_bar.png',
                        width: screenWidth * 0.064,
                        height: screenWidth * 0.064,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: screenHeight * 0.275,
            left: screenWidth * 0.049,
            child: Column(
              children: [
                Text(
                  'Donation Info'.tr,
                  style: TextStyleCustomize.titleMediumWhiteA700,
                ),
                // LineChart(
                //   LineChartData(
                //     // read about it in the LineChartData section ok
                //   ),
                //   swapAnimationDuration: Duration(milliseconds: 150), // Optional
                //   swapAnimationCurve: Curves.linear, // Optional
                // ),
              ],
            ),
          ),
          Positioned(
            top: screenHeight * 0.551,
            left: -screenWidth * 0.284,
            child: Container(
              width: screenWidth * 2.284,
              height: screenHeight * 0.202,
              child: Stack(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: screenWidth * 0.30,
                        ),
                        child: Text(
                          'Special Offer'.tr,
                          style: TextStyleCustomize.titleLargeBlackA600,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: screenWidth * 1.02),
                        child: Text(
                          'See All'.tr,
                          style: TextStyleCustomize.sliderLargeBlackA500,
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    top: screenHeight * 0.038,
                    left: 0,
                    child: Container(
                      width: screenWidth * 2.284,
                      height: screenHeight * 0.161,
                      child: ListView.separated(
                        itemCount: 5,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Stack(
                            children: [
                              ClipRRect(
                                child: Image.asset(
                                  'assets/images/slider1.png',
                                  height: screenHeight * 0.373,
                                  width: screenWidth * 0.513,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ],
                          );
                        },
                        separatorBuilder: (context, index) =>
                            SizedBox(width: screenWidth * 0.04),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 683.42626953125,
            left: 20,
            child: Container(
              width: 335,
              height: 19,
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    left: 0,
                    child: Text(
                      'Most Popular',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Color.fromRGBO(35, 35, 35, 1),
                        fontFamily: 'Inter',
                        fontSize: 16,
                        letterSpacing: 0,
                        fontWeight: FontWeight.normal,
                        height: 1,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 2,
                    left: 295,
                    child: Text(
                      'See All',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Color.fromRGBO(33, 33, 32, 1),
                        fontFamily: 'Inter',
                        fontSize: 12,
                        letterSpacing: 0,
                        fontWeight: FontWeight.normal,
                        height: 1,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 712.42626953125,
            left: 20,
            child: Container(
              width: 388.92596435546875,
              height: 29.57373046875,
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    left: 52.739593505859375,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(24.766555786132812),
                          topRight: Radius.circular(24.766555786132812),
                          bottomLeft: Radius.circular(24.766555786132812),
                          bottomRight: Radius.circular(24.766555786132812),
                        ),
                        color: Color.fromRGBO(255, 255, 255, 1),
                        border: Border.all(
                          color: Color.fromRGBO(13, 131, 53, 1),
                          width: 0.9522026181221008,
                        ),
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 14.380582809448242,
                        vertical: 6.391369342803955,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Rice',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color.fromRGBO(45, 45, 45, 1),
                              fontFamily: 'Inter',
                              fontSize: 12,
                              letterSpacing: 0,
                              fontWeight: FontWeight.normal,
                              height: 1,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    left: 0,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(24.766555786132812),
                          topRight: Radius.circular(24.766555786132812),
                          bottomLeft: Radius.circular(24.766555786132812),
                          bottomRight: Radius.circular(24.766555786132812),
                        ),
                        color: Color.fromRGBO(13, 131, 53, 1),
                      ),
                      padding: EdgeInsets.symmetric(
                          horizontal: 14.380582809448242,
                          vertical: 6.391369342803955),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'All',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 1),
                                fontFamily: 'Inter',
                                fontSize: 12,
                                letterSpacing: 0,
                                fontWeight: FontWeight.normal,
                                height: 1,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    left: 117.4630126953125,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(24.766555786132812),
                          topRight: Radius.circular(24.766555786132812),
                          bottomLeft: Radius.circular(24.766555786132812),
                          bottomRight: Radius.circular(24.766555786132812),
                        ),
                        color: Color.fromRGBO(255, 255, 255, 1),
                        border: Border.all(
                          color: Color.fromRGBO(13, 131, 53, 1),
                          width: 0.9522026181221008,
                        ),
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 14.380582809448242,
                        vertical: 6.391369342803955,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Solt',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color.fromRGBO(45, 45, 45, 1),
                              fontFamily: 'Inter',
                              fontSize: 12,
                              letterSpacing: 0,
                              fontWeight: FontWeight.normal,
                              height: 1,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    left: 179.78964233398438,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(24.766555786132812),
                          topRight: Radius.circular(24.766555786132812),
                          bottomLeft: Radius.circular(24.766555786132812),
                          bottomRight: Radius.circular(24.766555786132812),
                        ),
                        color: Color.fromRGBO(255, 255, 255, 1),
                        border: Border.all(
                          color: Color.fromRGBO(13, 131, 53, 1),
                          width: 0.9522026181221008,
                        ),
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 14.381595611572266,
                        vertical: 6.391369342803955,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Biscuit',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color.fromRGBO(45, 45, 45, 1),
                              fontFamily: 'Inter',
                              fontSize: 12,
                              letterSpacing: 0,
                              fontWeight: FontWeight.normal,
                              height: 1,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    left: 255.69970703125,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(24.766555786132812),
                          topRight: Radius.circular(24.766555786132812),
                          bottomLeft: Radius.circular(24.766555786132812),
                          bottomRight: Radius.circular(24.766555786132812),
                        ),
                        color: Color.fromRGBO(255, 255, 255, 1),
                        border: Border.all(
                          color: Color.fromRGBO(13, 131, 53, 1),
                          width: 0.9522026181221008,
                        ),
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 14.380582809448242,
                        vertical: 6.391369342803955,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Milk',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color.fromRGBO(45, 45, 45, 1),
                              fontFamily: 'Inter',
                              fontSize: 12,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    left: 318.82525634765625,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(24.766555786132812),
                          topRight: Radius.circular(24.766555786132812),
                          bottomLeft: Radius.circular(24.766555786132812),
                          bottomRight: Radius.circular(24.766555786132812),
                        ),
                        color: Color.fromRGBO(255, 255, 255, 1),
                        border: Border.all(
                          color: Color.fromRGBO(13, 131, 53, 1),
                          width: 0.9522026181221008,
                        ),
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 14.380582809448242,
                        vertical: 6.391369342803955,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Cocola',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color.fromRGBO(45, 45, 45, 1),
                              fontFamily: 'Inter',
                              fontSize: 12,
                              letterSpacing: 0,
                              fontWeight: FontWeight.normal,
                              height: 1,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
