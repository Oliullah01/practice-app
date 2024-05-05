//import 'dart:html';

import 'package:custom_halal_app/core/utils/size_utils.dart';
import 'package:custom_halal_app/core/utils/validation_function.dart';
import 'package:custom_halal_app/theme/text_style_customize.dart';
import 'package:custom_halal_app/widgets/auth/auth_custom_icon_btn_widget.dart';
import 'package:custom_halal_app/widgets/auth/auth_custom_image_view_widget.dart';
import 'package:custom_halal_app/widgets/inputField/custom_text_form_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SeeShopLocationScreen extends StatefulWidget {
  const SeeShopLocationScreen({super.key});

  @override
  State<SeeShopLocationScreen> createState() => _SeeShopLocationScreenState();
}

class _SeeShopLocationScreenState extends State<SeeShopLocationScreen> {
  Color _bgColor = const Color(0XFFE1EFE6);
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _nameTEController = TextEditingController();
  final TextEditingController _numberTEController = TextEditingController();
  final TextEditingController _addressTEController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: _bgColor,
        body: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(right: 75.h),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              AuthCustomIconBtnWidget(
                                height: 36.adaptSize,
                                width: 36.adaptSize,
                                padding: EdgeInsets.all(9.h),
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Image.asset('assets/images/img_arrow_left.png'),
                              ),
                              SizedBox(width: 70.h),
                              Text(
                                'Find Shop'.tr,
                                style: TextStyleCustomize.titleLargeBlackA600,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 18),
                      SizedBox(height: 18),
                      CustomTextFormFieldWidget(
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
                      SizedBox(
                        height: 200,
                        child: Center(child: Icon(Icons.zoom_out_map_sharp)),
                      ),
                      Center(
                        child: Text(
                          'Shop Details',
                          style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                      ),
                      SizedBox(height: 15.v),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Name'.tr,
                          style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(height: 7.v),
                      _buildName(),
                      SizedBox(height: 10.v),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Number'.tr,
                          style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(height: 7.v),
                      _buildNumber(),
                      SizedBox(height: 7.v),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Address'.tr,
                          style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(height: 7.v),
                      _buildAddress(),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: ElevatedButton(
                  onPressed: () {
                    //Navigator.push(context, MaterialPageRoute(builder: (context)=> FindShop(),),);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green.shade700,
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 24),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                      side: BorderSide.none,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Continue',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.arrow_forward,
                        size: 18,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 120),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Divider(
                  thickness: 4,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildName() {
    return CustomTextFormFieldWidget(
      controller: _nameTEController,
      hintText: 'Goury Shop'.tr,
      textInputType: TextInputType.text,
      validator: (value) {
        if (!isValidPhone(value)) {
          return 'Please enter name'.tr;
        }
        return null;
      },
      contentPadding: EdgeInsets.only(
        top: 18.v,
        right: 30.h,
        bottom: 18.v,
        left: 8.h,
      ),
    );
  }

  Widget _buildNumber() {
    return CustomTextFormFieldWidget(
      controller: _numberTEController,
      hintText: '017100000000'.tr,
      textInputType: TextInputType.text,
      validator: (value) {
        if (!isValidPhone(value)) {
          return 'Please enter valid phone number'.tr;
        }
        return null;
      },
      contentPadding: EdgeInsets.only(
        top: 18.v,
        right: 30.h,
        bottom: 18.v,
        left: 8.h,
      ),
    );
  }

  Widget _buildAddress() {
    return CustomTextFormFieldWidget(
      controller: _addressTEController,
      hintText: 'Dhaka'.tr,
      textInputType: TextInputType.text,
      validator: (value) {
        if (!isValidPhone(value)) {
          return 'Please enter address'.tr;
        }
        return null;
      },
      contentPadding: EdgeInsets.only(
        top: 18.v,
        right: 30.h,
        bottom: 18.v,
        left: 8.h,
      ),
    );
  }
}
