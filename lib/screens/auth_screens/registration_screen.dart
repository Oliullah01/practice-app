import 'package:custom_halal_app/core/utils/size_utils.dart';
import 'package:custom_halal_app/core/utils/validation_function.dart';
import 'package:custom_halal_app/theme/text_style_customize.dart';
import 'package:custom_halal_app/widgets/auth/auth_custom_icon_btn_widget.dart';
import 'package:custom_halal_app/widgets/auth/auth_custom_image_view_widget.dart';
import 'package:custom_halal_app/widgets/inputField/custom_text_form_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  Color _bgColor = const Color(0XFFE1EFE6);
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: _bgColor,
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.h,
                    vertical: 10.v,
                  ),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(right: 75.h),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(bottom: 103.v),
                                child: AuthCustomIconBtnWidget(
                                  height: 36.adaptSize,
                                  width: 36.adaptSize,
                                  padding: EdgeInsets.all(9.h),
                                  onTap: () {},
                                  child: Image.asset(
                                      'assets/images/img_arrow_left.png'),
                                ),
                              ),
                              Container(
                                height: 110.v,
                                width: 185.h,
                                margin: EdgeInsets.only(left: 39.h, top: 29.v),
                                child: Stack(
                                  alignment: Alignment.bottomCenter,
                                  children: [
                                    AuthCustomImageViewWidget(
                                      imagePath: 'assets/images/logo.png',
                                      height: 98.adaptSize,
                                      width: 98.adaptSize,
                                      alignment: Alignment.topCenter,
                                    ),
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Text(
                                        'Welcome Back'.tr,
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 20),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 39.v,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Phone No:'.tr,
                          style: TextStyleCustomize.titleSmallGray90006Medium,
                        ),
                      ),
                      SizedBox(
                        height: 7.v,
                      ),
                      _buildPhone(),
                      SizedBox(height: 16.v),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Password'.tr,
                          style: TextStyleCustomize.titleSmallGray90006Medium,
                        ),
                      ),
                      SizedBox(
                        height: 7.v,
                      ),
                    ],
                  )),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildPhone() {
    return CustomTextFormFieldWidget(
      //controller: _phoneTEController,
      hintText: 'Phone No:'.tr,
      textInputType: TextInputType.phone,
      prefix: Container(
        margin: EdgeInsets.fromLTRB(17.h, 19.v, 9.h, 19.v),
        child: AuthCustomImageViewWidget(
          imagePath: 'assets/images/email_icon.png',
          height: 13.v,
        ),
      ),
      prefixConstraints: BoxConstraints(maxHeight: 52.v),
      validator: (value) {
        if (!isValidPhone(value)) {
          return 'Please enter valid phone number'.tr;
        }
        return null;
      },
      contentPadding: EdgeInsets.only(top: 18.v, right: 30.h, bottom: 18.v),
    );
  }

  // Widget _buildContinueWithGoogle() {
  //   return CustomOutlinedButtonWidget(
  //     text: "Continue With Google".tr,
  //     leftIcon: Container(
  //       margin: EdgeInsets.only(right: 12.h),
  //       child: AuthCustomImageViewWidget(
  //         imagePath: 'assets/images/google.png',
  //         height: 24.adaptSize,
  //         width: 24.adaptSize,
  //       ),
  //     ),
  //     onPressed: () {
  //       onTapContinueWithGoogle();
  //     },
  //   );
  // }
  //
  // onTapBtnArrowLeft() {
  //   Get.back();
  // }
  //
  // onTapContinueWithGoogle() async {
  //   // await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
  //   //   if (googleUser != null) {
  //   //     //TODO Actions to be performed after signin
  //   //   } else {
  //   //     Get.snackbar('Error', 'user data is empty');
  //   //   }
  //   // }).catchError((onError) {
  //   //   Get.snackbar('Error', onError.toString());
  //   // });
  // }
}
