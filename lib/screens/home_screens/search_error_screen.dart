import 'package:custom_halal_app/core/utils/size_utils.dart';
import 'package:custom_halal_app/screens/home_screens/search_items_screen.dart';
import 'package:custom_halal_app/widgets/auth/auth_custom_image_view_widget.dart';
import 'package:custom_halal_app/widgets/inputField/custom_text_form_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchErrorScreen extends StatefulWidget {
  const SearchErrorScreen({super.key});

  @override
  State<SearchErrorScreen> createState() => _SearchErrorScreenState();
}

class _SearchErrorScreenState extends State<SearchErrorScreen> {
  Color _bgColor = const Color(0XFFE1EFE6);
  final TextEditingController _errorSearchingTEController = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>SearchItemsScreen(),),);
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
                Text('Results for'),
                Text('0 found'),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.15),
            AuthCustomImageViewWidget(
              imagePath: 'assets/images/not_found_img.png',
            ),
          ],
        ),
      ),
    );
  }
}
