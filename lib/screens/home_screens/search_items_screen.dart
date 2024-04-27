import 'package:custom_halal_app/core/utils/size_utils.dart';
import 'package:custom_halal_app/screens/home_screens/search_people_screen.dart';
import 'package:custom_halal_app/widgets/auth/auth_custom_image_view_widget.dart';
import 'package:custom_halal_app/widgets/home/product_card/product_card_widget.dart';
import 'package:custom_halal_app/widgets/inputField/custom_text_form_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchItemsScreen extends StatefulWidget {
  const SearchItemsScreen({super.key});

  @override
  State<SearchItemsScreen> createState() => _SearchItemsScreenState();
}

class _SearchItemsScreenState extends State<SearchItemsScreen> {
  Color _bgColor = const Color(0XFFE1EFE6);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: _bgColor,
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 18.v, horizontal: 18.h),
              child: CustomTextFormFieldWidget(
                hintText: ''.tr,
                textInputAction: TextInputAction.done,
                textInputType: TextInputType.visiblePassword,
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
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> SearchPeopleScreen(),),);
                  },
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
                //obscureText: _passwordTEController.text.toString(),
                contentPadding: EdgeInsets.symmetric(vertical: 18.v),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text('Rice'),
                Text('25 items found'),
              ],
            ),
            //SizedBox(height: MediaQuery.of(context).size.height * 0.1),
            Expanded(
              child: GridView.builder(
                padding: EdgeInsets.symmetric(horizontal: 16),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  childAspectRatio: 0.7,
                ),
                itemCount: 10, // Adjust as needed
                itemBuilder: (BuildContext context, int index) {
                  return ProductCardWidget(
                    imagePath: 'assets/images/popular_item_chips.png', // Example image path
                    productName: 'Product $index',
                    productRating: 4.5,
                    soldCount: 8456,
                    productRate: 20.99,
                    discount: '10% off',
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}


/*
*
* Expanded(
              child: GridView.count(
                padding: EdgeInsets.symmetric(horizontal: 16),
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                childAspectRatio: 0.7,
                children: List.generate(
                  10, // Adjust as needed
                      (index) {
                    //final imagePath = 'assets/images/popular_item_chips_$index.png';
                    return ProductCardWidget(
                      imagePath: 'assets/images/popular_item_chips',
                      productName: 'Chips $index',
                      productRating: 4.5,
                      soldCount: 8456,
                      productRate: 20.99,
                      discount: '10% off',
                    );
                  },
                ),
              ),
            ),
*
* */