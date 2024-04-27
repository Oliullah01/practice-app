import 'package:custom_halal_app/core/utils/size_utils.dart';
import 'package:custom_halal_app/widgets/auth/auth_custom_image_view_widget.dart';
import 'package:custom_halal_app/widgets/inputField/custom_text_form_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreenTwo extends StatefulWidget {
  const HomeScreenTwo({Key? key}) : super(key: key);

  @override
  State<HomeScreenTwo> createState() => _HomeScreenTwoState();
}

class _HomeScreenTwoState extends State<HomeScreenTwo> {
  @override
  Widget build(BuildContext context) {
    final List<SalesData> chartData = [
      SalesData(DateTime(2010, 1, 1), 35),
      SalesData(DateTime(2011, 1, 1), 28),
      SalesData(DateTime(2012, 1, 1), 34),
      SalesData(DateTime(2013, 1, 1), 32),
      SalesData(DateTime(2014, 1, 1), 40),
    ];

    List<String> imagePaths = [
      'assets/images/category_two.png',
      'assets/images/category_three.png',
      'assets/images/category_four.png',
      'assets/images/category_one.png',
      'assets/images/category_two.png',
    ];

    List<String> categoryNames = ['All', 'Rice', 'Salt', 'Biscuit', 'Milk', 'Coconut'];

    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'assets/images/logo.png',
          height: 80,
          width: 80,
        ),
        centerTitle: true,
        backgroundColor: Color(0XFF05792B),
        leading: Image.asset('assets/images/menu_bar.png'),
        actions: [Image.asset('assets/images/search.png')],
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              'assets/images/home_bg_green.png',
              fit: BoxFit.cover,
              width: MediaQuery.of(context).size.width,
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 30),
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
                  Container(
                    height: 200,
                    color: Colors.blue,
                    child: Center(
                      child: Text("Donation Info"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Special Offer"),
                        Text("See All"),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 150,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: List.generate(
                        5,
                        (index) => Image.asset('assets/images/slider1.png',width: 300,),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Category"),
                        Text("See All"),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 100,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: List.generate(
                        5,
                            (index) => Image.asset(imagePaths[index],width: 100,),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Most Popular"),
                        Text("See All"),
                      ],
                    ),
                  ),
                  /*SizedBox(
  height: 40,
  child: ListView(
    scrollDirection: Axis.horizontal,
    children: List.generate(
      categoryNames.length,
      (index) => SmallButton(text: categoryNames[index]),
    ),
  ),
)
*/
                  SizedBox(
                    height: 40,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: categoryNames.map((categoryName) {
                        return SmallButton(text: categoryName);
                      }).toList(),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFF05792B),
        unselectedItemColor: Colors.red, // Set the unselected item color to red
        showUnselectedLabels: true,
        onTap: (int index) {
          if (index == 0) {
            // Handle the first item tap
          } else if (index == 1) {
            // Handle the second item tap
          } else if (index == 2) {
            // Handle the third item tap
          } else if (index == 3) {
            // Handle the fourth item tap
          }
        },
        items: [
          BottomNavigationBarItem(
            icon: ColorFiltered(
              colorFilter: ColorFilter.mode(Colors.red, BlendMode.srcIn),
              child: Image.asset('assets/images/home_icon.png', width: 24, height: 24),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: ColorFiltered(
              colorFilter: ColorFilter.mode(Colors.red, BlendMode.srcIn),
              child: Image.asset('assets/images/cart.png', width: 24, height: 24),
            ),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: ColorFiltered(
              colorFilter: ColorFilter.mode(Colors.red, BlendMode.srcIn),
              child: Image.asset('assets/images/play_button_icon.png', width: 24, height: 24),
            ),
            label: 'User 1',
          ),
          BottomNavigationBarItem(
            icon: ColorFiltered(
              colorFilter: ColorFilter.mode(Colors.red, BlendMode.srcIn),
              child: Image.asset('assets/images/user.png', width: 24, height: 24),
            ),
            label: 'User 2',
          ),
        ],
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
  final VoidCallback? onPressed; // Nullable VoidCallback

  const SmallButton({
    Key? key,
    required this.text,
    this.isFirst = false,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.01),
      child: SizedBox(
        height: 50.0,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            padding: EdgeInsets.symmetric(horizontal: 35.0),
            backgroundColor: isFirst ? Colors.blue : Colors.white,
          ),
          child: Text(
            text,
            style: TextStyle(
              color: Colors.black, // Text color
            ),
          ),
        ),
      ),
    );
  }
}








