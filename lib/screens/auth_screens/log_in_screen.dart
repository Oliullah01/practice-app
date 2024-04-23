import 'package:custom_halal_app/core/utils/size_utils.dart';
import 'package:custom_halal_app/core/utils/validation_function.dart';
import 'package:custom_halal_app/theme/text_style_customize.dart';
import 'package:custom_halal_app/theme/theme_helper.dart';
import 'package:custom_halal_app/widgets/auth/auth_custom_icon_btn_widget.dart';
import 'package:custom_halal_app/widgets/auth/auth_custom_image_view_widget.dart';
import 'package:custom_halal_app/widgets/inputField/custom_button_widget.dart';
import 'package:custom_halal_app/widgets/inputField/custom_checkbox_button.dart';
import 'package:custom_halal_app/widgets/inputField/custom_outline_btn_widget.dart';
import 'package:custom_halal_app/widgets/inputField/custom_text_form_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  Color _bgColor = const Color(0XFFE1EFE6);
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController _phoneTEController = TextEditingController();
  TextEditingController _passwordTEController = TextEditingController();

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
                      _buildPassword(),
                      SizedBox(height: 16.v,),
                      _buildRememberme(),
                      SizedBox(height: 22.v),
                      _buildLogIn(),
                      SizedBox(height: 24.v),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "Don't have an account".tr,
                              style: TextStyleCustomize.bodyLargeff4c4c4c,
                            ),
                            TextSpan(
                              text: "  ".tr,
                            ),
                            TextSpan(
                              text: "Sign up".tr,
                              style: TextStyleCustomize.titleMediumff0d8335,
                            )
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                      SizedBox(height: 28.v),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              top: 6.v,
                              bottom: 9.v,
                            ),
                            child: SizedBox(
                              width: 73.h,
                              child: Divider(
                                color: theme.colorScheme.primary.withOpacity(0.3),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 25.h),
                            child: Text(
                              "Or".tr,
                              style: TextStyleCustomize.bodyMediumGray70002,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: 6.v,
                              bottom: 9.v,
                            ),
                            child: SizedBox(
                              width: 98.h,
                              child: Divider(
                                color: theme.colorScheme.primary.withOpacity(0.3),
                                indent: 25.h,
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 16.v),
                      _buildContinueAsGuest(),
                      SizedBox(height: 8.v),
                      _buildContinueWithGoogle(),
                      SizedBox(height: 5.v)
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
      controller: _phoneTEController,
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

  Widget _buildPassword() {
    return CustomTextFormFieldWidget(
      controller: _passwordTEController,
      hintText: 'Password'.tr,
      textInputAction: TextInputAction.done,
      textInputType: TextInputType.visiblePassword,
      prefix: Container(
        margin: EdgeInsets.fromLTRB(16.h, 16.v, 8.h, 16.v),
        child: AuthCustomImageViewWidget(
          imagePath: 'assets/images/password_lock.png',
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
            imagePath: 'assets/images/password_show.png',
            height: 18.adaptSize,
            width: 18.adaptSize,
          ),
        ),
      ),
      suffixConstraints: BoxConstraints(
        maxHeight: 52.v,
      ),
      validator: (value) {
        if (value == null || (!isValidPassword(value, isRequired: true))) {
          return "err_msg_please_enter_valid_password".tr;
        }
        return null;
      },
      //obscureText: _passwordTEController.text.toString(),
      contentPadding: EdgeInsets.symmetric(vertical: 18.v),
    );
  }

  Widget _buildRememberme() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 1.v),
          child: CustomCheckboxButton(
            text: "Remember me".tr,
            //value: controller.rememberme.value,
            onChange: (value) {
              //controller.rememberme.value = value;
            },
          ),
        ),
        Text(
          "Forget Password".tr,
          style: TextStyleCustomize.bodyMediumGray80002,
        )
      ],
    );
  }

  Widget _buildLogIn() {
    return CustomButtonWidget(
      text: "Log in".tr,
      buttonStyle: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith<Color?>(
              (states) => states.contains(MaterialState.disabled)
              ? Colors.green // Color for disabled state
              : Colors.green.shade700, // Default color
        ),
        shape: MaterialStateProperty.resolveWith<OutlinedBorder?>(
              (states) => RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
        ),
      ),
    );
  }

  Widget _buildContinueAsGuest() {
    return CustomOutlinedButtonWidget(
      text: "Continue as guest".tr,
    );
  }

  Widget _buildContinueWithGoogle() {
    return CustomOutlinedButtonWidget(
      text: "Continue With Google".tr,
      leftIcon: Container(
        margin: EdgeInsets.only(right: 12.h),
        child: AuthCustomImageViewWidget(
          imagePath: 'assets/images/google.png',
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
      ),
      onPressed: () {
        onTapContinueWithGoogle();
      },
    );
  }

  onTapBtnArrowLeft() {
    Get.back();
  }

  onTapContinueWithGoogle() async {
    // await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
    //   if (googleUser != null) {
    //     //TODO Actions to be performed after signin
    //   } else {
    //     Get.snackbar('Error', 'user data is empty');
    //   }
    // }).catchError((onError) {
    //   Get.snackbar('Error', onError.toString());
    // });
  }
}
