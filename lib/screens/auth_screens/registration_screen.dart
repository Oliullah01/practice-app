import 'package:custom_halal_app/core/utils/size_utils.dart';
import 'package:custom_halal_app/core/utils/validation_function.dart';
import 'package:custom_halal_app/theme/text_style_customize.dart';
import 'package:custom_halal_app/widgets/auth/auth_custom_icon_btn_widget.dart';
import 'package:custom_halal_app/widgets/auth/auth_custom_image_view_widget.dart';
import 'package:custom_halal_app/widgets/inputField/custom_button_widget.dart';
import 'package:custom_halal_app/widgets/inputField/custom_checkbox_button.dart';
import 'package:custom_halal_app/widgets/inputField/custom_text_form_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final Color _bgColor = const Color(0XFFE1EFE6);
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController _nameTEController = TextEditingController();
  final TextEditingController _phoneTEController = TextEditingController();
  final TextEditingController _nidTEController = TextEditingController();
  final TextEditingController _passwordTEController = TextEditingController();
  final TextEditingController _confirmPasswordTEController =
      TextEditingController();

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
                                  child: Image.asset('assets/images/img_arrow_left.png'),
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
                                        'Create Account'.tr,
                                        style: const TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 20,
                                        ),
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
                          'Name'.tr,
                          style: TextStyleCustomize.titleSmallGray90006Medium,
                        ),
                      ),
                      SizedBox(
                        height: 7.v,
                      ),
                      _buildName(),
                      SizedBox(
                        height: 16.v,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Phone Number'.tr,
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
                          'NID Card Number'.tr,
                          style: TextStyleCustomize.titleSmallGray90006Medium,
                        ),
                      ),
                      SizedBox(
                        height: 7.v,
                      ),
                      _buildNID(),
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
                      SizedBox(height: 16.v),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Confirm Password'.tr,
                          style: TextStyleCustomize.titleSmallGray90006Medium,
                        ),
                      ),
                      SizedBox(
                        height: 7.v,
                      ),
                      _buildConfirmPassword(),
                      SizedBox(
                        height: 16.v,
                      ),
                      _buildRememberme(),
                      SizedBox(height: 22.v),
                      _buildRegister(),
                    ],
                  )),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildName() {
    return CustomTextFormFieldWidget(
      controller: _nameTEController,
      hintText: 'Name'.tr,
      textInputType: TextInputType.text,
      contentPadding:
          EdgeInsets.only(top: 18.v, right: 30.h, bottom: 18.v, left: 17.h),
    );
  }

  Widget _buildPhone() {
    return CustomTextFormFieldWidget(
      controller: _phoneTEController,
      hintText: 'Phone Number:'.tr,
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

  Widget _buildNID() {
    return CustomTextFormFieldWidget(
      controller: _nidTEController,
      hintText: 'NID card No:',
      textInputType: TextInputType.number,
      prefix: Container(
        margin: EdgeInsets.fromLTRB(17.h, 19.v, 9.h, 19.v),
        child: AuthCustomImageViewWidget(
          imagePath: 'assets/images/nid.png',
          height: 13.v,
        ),
      ),
      prefixConstraints: BoxConstraints(maxHeight: 52.v),
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

  Widget _buildConfirmPassword() {
    return CustomTextFormFieldWidget(
      controller: _passwordTEController,
      hintText: 'Confirm Password'.tr,
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
            text: "I agree to the terms & conditions".tr,
            //value: controller.rememberme.value,
            onChange: (value) {
              //controller.rememberme.value = value;
            },
          ),
        ),
      ],
    );
  }

  Widget _buildRegister() {
    return CustomButtonWidget(
      text: "Sign Up".tr,
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
}
