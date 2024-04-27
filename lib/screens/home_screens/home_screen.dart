import 'package:custom_halal_app/core/utils/size_utils.dart';
import 'package:custom_halal_app/screens/home_screens/home_screen_two.dart';
import 'package:custom_halal_app/screens/home_screens/notification_screen.dart';
import 'package:custom_halal_app/screens/home_screens/profile_info/terms_and_condition_screen.dart';
import 'package:custom_halal_app/theme/text_style_customize.dart';
import 'package:custom_halal_app/widgets/auth/auth_custom_image_view_widget.dart';
import 'package:custom_halal_app/widgets/inputField/custom_text_form_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
//import 'package:syncfusion_flutter_charts/charts.dart';

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

    final List<SalesData> chartData = [
      SalesData(DateTime(2010, 1, 1), 35),
      SalesData(DateTime(2011, 1, 1), 28),
      SalesData(DateTime(2012, 1, 1), 34),
      SalesData(DateTime(2013, 1, 1), 32),
      SalesData(DateTime(2014, 1, 1), 40),
    ];

    return Scaffold(
      //physics: AlwaysScrollableScrollPhysics(),
      // drawer: Drawer(
      //   child: Container(
      //     color: Color(0XFFE1EFE6),
      //     child: ListView(
      //       padding: EdgeInsets.zero,
      //       children: [
      //         UserAccountsDrawerHeader(
      //           accountName: Text('Mostafizur Rahman', style: TextStyle(color: Colors.black),),
      //           accountEmail: Text('NID Number: 220679324', style: TextStyle(color: Colors.grey),),
      //           currentAccountPicture: CircleAvatar(
      //             backgroundImage: AssetImage('assets/images/profile_img.png'),
      //           ),
      //           decoration: BoxDecoration(
      //             color: Color(0XFFE1EFE6),
      //           ),
      //         ),
      //         CustomListTile(
      //           imagePath: 'assets/images/privacy_policy.png',
      //           text: 'Privacy Policy',
      //           onTap: () {
      //             // Handle Home button tap
      //           },
      //         ),
      //         CustomListTile(
      //           imagePath: 'assets/images/terms_and_condition_icon.png',
      //           text: 'Terms & Conditions',
      //           onTap: () {
      //             // Handle Settings button tap
      //           },
      //         ),
      //         CustomListTile(
      //           imagePath: 'assets/images/refund_policy_icon.png',
      //           text: 'Refund Policy',
      //           onTap: () {
      //             // Handle Settings button tap
      //           },
      //         ),
      //         CustomListTile(
      //           imagePath: 'assets/images/tax_info_icon.png',
      //           text: 'Text Info',
      //           onTap: () {
      //             // Handle Settings button tap
      //           },
      //         ),
      //         CustomListTile(
      //           imagePath: 'assets/images/about_us_icon.png',
      //           text: 'About Us',
      //           onTap: () {
      //             // Handle Settings button tap
      //           },
      //         ),
      //         // Add more list items as needed
      //       ],
      //     ),
      //   ),
      // ),


      drawer: Drawer(
        child: Container(
          color: Color(0XFFE1EFE6),
          child: Column(
            children: [
              Expanded(
                child: ListView.separated(
                  padding: EdgeInsets.zero,
                  itemBuilder: (context, index) {
                    if (index == 0) {
                      return UserAccountsDrawerHeader(
                        accountName: Text('Mostafizur Rahman', style: TextStyle(color: Colors.black)),
                        accountEmail: Text('NID Number: 220679324', style: TextStyle(color: Colors.grey)),
                        currentAccountPicture: CircleAvatar(
                          backgroundImage: AssetImage('assets/images/profile_img.png'),
                        ),
                        decoration: BoxDecoration(color: Color(0XFFE1EFE6),borderRadius: BorderRadius.zero),
                      );
                    } else {
                      final List<Map<String, dynamic>> listData = [
                        {'imagePath': 'assets/images/privacy_policy.png', 'text': 'Privacy Policy'},
                        {'imagePath': 'assets/images/terms_and_condition_icon.png', 'text': 'Terms & Conditions'},
                        {'imagePath': 'assets/images/refund_policy_icon.png', 'text': 'Refund Policy'},
                        {'imagePath': 'assets/images/tax_info_icon.png', 'text': 'Text Info'},
                        {'imagePath': 'assets/images/about_us_icon.png', 'text': 'About Us'},
                      ];

                      final itemData = listData[index - 1];
                      return CustomListTile(
                        imagePath: itemData['imagePath'],
                        text: itemData['text'],
                        onTap: () {
                          // Different function for each button
                          switch (index) {
                            case 1:
                            // Handle Privacy Policy button tap
                              break;
                            case 2:
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> TermsAndConditionScreen(),),);
                              break;
                            case 3:
                            // Handle Refund Policy button tap
                              break;
                            case 4:
                            // Handle Text Info button tap
                              break;
                            case 5:
                            // Handle About Us button tap
                              break;
                          }
                        },
                      );
                    }
                  },
                  separatorBuilder: (context, index) => SizedBox(height: 0),
                  itemCount: 6,
                ),
              ),
              ListTile(
                title: Center(
                  child: Text(
                    'Version 5.2.3',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),






      body: Container(
        width: screenWidth,
        height: screenHeight,
        decoration: BoxDecoration(
          color: Color.fromRGBO(225, 239, 230, 1),
        ),

        child: Stack(
          children: [
            Positioned(
              //top: 0,
              left: -screenWidth * 0.032,
              child: Container(
                width: screenWidth * 1.064,
                height: screenHeight * 0.4,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(0),
                    topRight: Radius.circular(0),
                    bottomLeft: Radius.circular(screenWidth * 0.18),
                    bottomRight: Radius.circular(screenWidth * 0.18),
                  ),
                  //color: Color.fromRGBO(4, 121, 42, 1),
                  image: DecorationImage(
                    image: AssetImage('assets/images/home_bg_green.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.0787,
              left: screenWidth * 0.0533,
              child: GestureDetector(
                onTap: () {
                  Scaffold.of(context).openDrawer();
                },
                child: Container(
                  width: screenWidth * 0.0747,
                  height: screenWidth * 0.0747,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/menu_bar.png'),
                      fit: BoxFit.fitWidth,
                    ),
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
                decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  borderRadius: BorderRadius.all(
                    Radius.elliptical(screenWidth * 0.088, screenWidth * 0.088),
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 0,
                      left: 0,
                      child: Image.asset(
                        'assets/images/search.png',
                        width: screenWidth * 0.088,
                        height: screenWidth * 0.088,
                      ),
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
                child: CustomTextFormFieldWidget(
                  hintText: 'search'.tr,
                  textInputAction: TextInputAction.done,
                  textInputType: TextInputType.text,
                  fillColor: Colors.white,
                  filled: true,
                  prefix: Container(
                    margin: EdgeInsets.fromLTRB(16.h, 16.v, 8.h, 16.v),
                    child: AuthCustomImageViewWidget(
                      imagePath: 'assets/images/searching.png',
                      height: 20.adaptSize,
                      width: 20.adaptSize,
                    ),
                  ),
                  prefixConstraints: BoxConstraints(maxHeight: 52.v),
                  suffix: InkWell(
                    onTap: () {},
                    child: Container(
                      margin: EdgeInsets.fromLTRB(30.h, 14.v, 16.h, 14.v),
                      child: AuthCustomImageViewWidget(
                        imagePath: 'assets/images/searching_bar.png',
                        height: 18.adaptSize,
                        width: 18.adaptSize,
                      ),
                    ),
                  ),
                  suffixConstraints: BoxConstraints(
                    maxHeight: 52.v,
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 18.v),
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.275,
              left: screenWidth * 0.049,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Donation Info'.tr,
                    style: TextStyleCustomize.titleMediumWhiteA700,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white, // Set white background color
                      borderRadius: BorderRadius.circular(10), // Optional: Add border radius
                    ),
                    // child: SizedBox(
                    //   height: 150,
                    //   child: SfCartesianChart(
                    //     primaryXAxis: DateTimeAxis(),
                    //     series: <CartesianSeries>[
                    //       // Renders line chart
                    //       LineSeries<SalesData, DateTime>(
                    //           dataSource: chartData,
                    //           xValueMapper: (SalesData sales, _) => sales.year,
                    //           yValueMapper: (SalesData sales, _) => sales.sales)
                    //     ],
                    //   ),
                    // ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: screenHeight * 0.531,
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
                          itemCount: 8,
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
              top: screenHeight * 0.78,
              left: screenWidth * 0.0233,
              child: Container(
                width: screenWidth * 0.9993,
                height: screenHeight * 0.0367,
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
                    // Positioned(
                    //   top: 0,
                    //   left: 0,
                    //   child: Text(
                    //     'Category'.tr,
                    //     style: TextStyleCustomize.titleLargeBlackA600,
                    //   ),
                    // ),
                    // Positioned(
                    //   top: screenHeight * 0.00177,
                    //   left: screenWidth * 0.7867,
                    //   child: Text(
                    //     'See All'.tr,
                    //     textAlign: TextAlign.left,
                    //     style: TextStyleCustomize.sliderLargeBlackA500,
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),

            Positioned(
              top: screenHeight * 0.827,
              left: screenWidth * 0.048,
              child: Container(
                width: screenWidth * 0.853,
                height: screenHeight * 0.045,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    SizedBox(
                        width: MediaQuery.of(context).size.width *
                            0.01), // Padding before the first button
                    SmallButton(text: 'All', isFirst: true),
                    SmallButton(text: 'Rice'),
                    SmallButton(text: 'Salt'),
                    SmallButton(text: 'Biscuit'),
                    SmallButton(text: 'Milk'),
                    SmallButton(text: 'Cocola'),
                    SizedBox(
                        width: MediaQuery.of(context).size.width *
                            0.01), // Padding after the last button
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: BottomNavigationBar(
                unselectedItemColor: Colors.grey,
                showUnselectedLabels: true,
                onTap: (int index) {
                  if (index == 0) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => NotificationScreen()), // Navigate to NotificationScreen
                    );
                  } else if (index == 1) {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreenTwo(),),);
                  }
                },
                items: [
                  BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
                  BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: 'Cart'),
                  BottomNavigationBarItem(icon: Icon(Icons.people), label: 'User'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SalesData {
  SalesData(this.year, this.sales);
  final DateTime year;
  final double sales;
}

class SmallButton extends StatelessWidget {
  final String text;
  final bool isFirst;

  const SmallButton({Key? key, required this.text, this.isFirst = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.01),
      child: SizedBox(
        //width: MediaQuery.of(context).size.width * 0.25,
        height: MediaQuery.of(context).size.height * 0.045,
        child: ElevatedButton(
          onPressed: () {
            // Add your button action here
          },
          style: ElevatedButton.styleFrom(
            //onPrimary: Colors.black, // Text color
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0), // Rounded corners
            ),
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            backgroundColor: isFirst ? Colors.green : null, // Adjust padding
          ),
          child: Text(
            text,
            style: TextStyle(
              color: isFirst ? Colors.white : Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}


class CustomListTile extends StatelessWidget {
  final String imagePath;
  final String text;
  final VoidCallback onTap;

  const CustomListTile({
    required this.imagePath,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
        ),
        child: ListTile(
          leading: Image.asset(imagePath),
          title: Text(text),
          trailing: Icon(Icons.arrow_forward_ios,size: 14,),
          onTap: onTap,
        ),
      ),
    );
  }
}
