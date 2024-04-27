import 'package:custom_halal_app/core/utils/size_utils.dart';
import 'package:custom_halal_app/widgets/auth/auth_custom_image_view_widget.dart';
import 'package:custom_halal_app/widgets/inputField/custom_icon_button_widget.dart';
import 'package:flutter/material.dart';

class AppbarLeadingIconbuttonWidget extends StatelessWidget {
  AppbarLeadingIconbuttonWidget({
    Key? key,
    this.imagePath,
    this.margin,
    this.onTap,
  }) : super(
    key: key,
  );

  String? imagePath;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap?.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomIconButtonWidget(
          height: 36.adaptSize,
          width: 36.adaptSize,
          child: AuthCustomImageViewWidget(
            imagePath: 'assets/images/img_arrow_left.png',
          ),
        ),
      ),
    );
  }
}