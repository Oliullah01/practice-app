import 'package:custom_halal_app/core/utils/size_utils.dart';
import 'package:custom_halal_app/theme/text_style_customize.dart';
import 'package:custom_halal_app/widgets/auth/auth_custom_icon_btn_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TermsAndConditionScreen extends StatefulWidget {
  const TermsAndConditionScreen({super.key});

  @override
  State<TermsAndConditionScreen> createState() =>
      _TermsAndConditionScreenState();
}

class _TermsAndConditionScreenState extends State<TermsAndConditionScreen> {
  Color _bgColor = const Color(0XFFE1EFE6);

  // final List<String> termsAndConditions = [
  //   "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged."
  // ];

  final List<TermAndCondition> termsAndConditions = [
    TermAndCondition(
      title: 'Types of Data We Collect',
      description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
    ),
    TermAndCondition(
      title: 'Use of Your Personal Data',
      description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
    ),
    TermAndCondition(
      title: 'Disclosure of Your Personal Data',
      description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
    ),
    TermAndCondition(
      title: 'End Of Data',
      description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, ",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: _bgColor,
        body: Stack(children: [
          Container(
            width: double.maxFinite,
            height: MediaQuery.of(context).size.height,
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
                        AuthCustomIconBtnWidget(
                          height: 36.adaptSize,
                          width: 36.adaptSize,
                          padding: EdgeInsets.all(9.h),
                          onTap: () {},
                          child:
                              Image.asset('assets/images/img_arrow_left.png'),
                        ),
                        SizedBox(width: 16.h),
                        Text(
                          'Terms & Condition'.tr,
                          style: TextStyleCustomize.titleLargeBlackA600,
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: termsAndConditions.length,
                    itemBuilder: (context, index) {
                      final term = termsAndConditions[index];
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListTile(
                          title: Text(
                            '${index + 1}. ${term.title}',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(term.description),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: MediaQuery.of(context).size.width / 3,
            right: MediaQuery.of(context).size.width / 3,
            bottom: 10,
            child: Container(
              height: 3,
              color: Colors.black,
            ),
          ),
        ]),
      ),
    );
  }
}

class TermAndCondition {
  final String title;
  final String description;

  TermAndCondition({required this.title, required this.description});
}
