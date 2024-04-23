import 'package:custom_halal_app/core/utils/size_utils.dart';
import 'package:flutter/material.dart';

class AuthCustomIconBtnWidget extends StatelessWidget {
  AuthCustomIconBtnWidget({
    Key? key,
    this.alignment,
    this.height,
    this.width,
    this.padding,
    this.decoration,
    this.child,
    this.onTap,
  }) : super(
    key: key,
  );

  final Alignment? alignment;

  final double? height;

  final double? width;

  final EdgeInsetsGeometry? padding;

  final BoxDecoration? decoration;

  final Widget? child;

  final VoidCallback? onTap;

  Color iconColor = const Color(0XFFFFFFFF);

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
      alignment: alignment ?? Alignment.center,
      child: iconButtonWidget,
    )
        : iconButtonWidget;
  }

  Widget get iconButtonWidget => SizedBox(
    height: height ?? 0,
    width: width ?? 0,
    child: IconButton(
      padding: EdgeInsets.zero,
      icon: Container(
        height: height ?? 0,
        width: width ?? 0,
        padding: padding ?? EdgeInsets.zero,
        decoration: decoration ??
            BoxDecoration(
              color: iconColor,
              borderRadius: BorderRadius.circular(18.h),
            ),
        child: child,
      ),
      onPressed: onTap,
    ),
  );
}