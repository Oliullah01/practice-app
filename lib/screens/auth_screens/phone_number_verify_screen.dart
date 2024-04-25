import 'package:custom_halal_app/core/utils/size_utils.dart';
import 'package:custom_halal_app/theme/text_style_customize.dart';
import 'package:custom_halal_app/widgets/auth/auth_custom_icon_btn_widget.dart';
import 'package:custom_halal_app/widgets/auth/auth_custom_image_view_widget.dart';
import 'package:custom_halal_app/widgets/inputField/custom_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]).then((value) {
    runApp(Testing());
  });
}

class Testing extends StatelessWidget {
  const Testing({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Halal Apps',
        home: PhoneNumberVerifyScreen(),
      );
    });
  }
}

class PhoneNumberVerifyScreen extends StatefulWidget {
  const PhoneNumberVerifyScreen({super.key});

  @override
  State<PhoneNumberVerifyScreen> createState() =>
      _PhoneNumberVerifyScreenState();
}

class _PhoneNumberVerifyScreenState extends State<PhoneNumberVerifyScreen> {
  Color _bgColor = const Color(0XFFE1EFE6);
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController _pinTEC = TextEditingController();

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
                          mainAxisAlignment: MainAxisAlignment.start,
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
                            SizedBox(width: 16.h),
                            Expanded(
                              child: Text(
                                'Phone number verify'.tr,
                                style: TextStyleCustomize.titleLargeBlackA600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 49.v,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Code has been send to +8808136....36'.tr,
                        style: TextStyleCustomize.titleSmallGray90006Medium,
                      ),
                    ),
                    SizedBox(
                      height: 40.v,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: PinCodeTextField(
                        controller: _pinTEC,
                        length: 5,
                        obscureText: false,
                        animationType: AnimationType.fade,
                        keyboardType: TextInputType.number,
                        pinTheme: PinTheme(
                          shape: PinCodeFieldShape.box,
                          borderRadius: BorderRadius.circular(5),
                          fieldHeight: 50,
                          fieldWidth: 40,
                          activeFillColor: Colors.white,
                          inactiveFillColor: Colors.white,
                          inactiveColor: Colors.white,
                          selectedFillColor: Colors.white,
                          disabledColor: Colors.green,
                        ),
                        animationDuration: Duration(milliseconds: 300),
                        backgroundColor: Colors.transparent,
                        enableActiveFill: true,
                        onCompleted: (v) {},
                        onChanged: (value) {},
                        appContext: context,
                      ),
                    ),
                    SizedBox(
                      height: 40.v,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Resend Code in 55s'.tr,
                        style: TextStyleCustomize.titleSmallGray90006Medium,
                      ),
                    ),
                    SizedBox(
                      height: 260.v,
                    ),
                    _buildVerify(),
                    SizedBox(
                      height: 40.v,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: AuthCustomImageViewWidget(
                        imagePath: 'assets/images/status_bar_black.png',
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildVerify() {
    return CustomButtonWidget(
      text: "Verify".tr,
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