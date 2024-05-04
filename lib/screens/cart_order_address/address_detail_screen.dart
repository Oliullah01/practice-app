import 'package:custom_halal_app/core/utils/size_utils.dart';
import 'package:custom_halal_app/screens/cart_order_address/address_bottom_sheet.dart';
import 'package:custom_halal_app/theme/text_style_customize.dart';
import 'package:custom_halal_app/widgets/auth/auth_custom_icon_btn_widget.dart';
import 'package:custom_halal_app/widgets/inputField/custom_text_form_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddressDetailsScreen extends StatefulWidget {
  AddressDetailsScreen({Key? key}) : super(key: key);

  @override
  State<AddressDetailsScreen> createState() => _AddressDetailsScreenState();
}

class _AddressDetailsScreenState extends State<AddressDetailsScreen> {
  Color _bgColor = const Color(0XFFE1EFE6);
  bool switchValue = false;

  void _onTapCallback() {
    _buildAreaBottomSheet(context);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: _bgColor,
        body: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.h,
                    vertical: 10.v,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
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
                            child:
                                Image.asset('assets/images/img_arrow_left.png'),
                          ),
                          SizedBox(width: 70.h),
                          Text(
                            'Add Address'.tr,
                            style: TextStyleCustomize.titleLargeBlackA600,
                          ),
                        ],
                      ),
                      SizedBox(height: 18),
                      Text(
                        'Address Type (Optional)',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      CustomTextFormFieldWidget(
                        hintText: 'Home/Office/Appartment',
                        textInputType: TextInputType.text,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Area',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      CustomTextFormFieldWidget(
                        hintText: 'Select the region, city, area',
                        textInputType: TextInputType.text,
                        suffix: InkWell(
                          onTap: _onTapCallback,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: Icon(Icons.arrow_forward_ios_rounded),
                          ),
                        ),
                        suffixConstraints: BoxConstraints(
                          maxHeight: 52.v,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Address Details',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      CustomTextFormFieldWidget(
                        hintText: 'House No./Building/Street',
                        textInputType: TextInputType.text,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Divider(
                          thickness: 2,
                          color: Colors.green.shade100,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Default Delivery Address',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                          Switch(
                            value: switchValue,
                            onChanged: (value) {
                              setState(() {
                                switchValue = value;
                              });
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green.shade700,
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 24),
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
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 130),
                    child: Divider(
                      color: Colors.black,
                      thickness: 3,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _buildAreaBottomSheet(BuildContext context) {
    showModalBottomSheet(
      backgroundColor: Color(0XFFE1EFE6),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return const AddressBottomSheet();
      },
    );
  }
}
