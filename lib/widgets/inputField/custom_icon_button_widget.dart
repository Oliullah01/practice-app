import 'package:custom_halal_app/core/utils/size_utils.dart';
import 'package:custom_halal_app/theme/theme_helper.dart';
import 'package:flutter/material.dart';


class CustomIconButtonWidget extends StatelessWidget {
  CustomIconButtonWidget({
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
              color: appTheme.whiteA700,
              borderRadius: BorderRadius.circular(18.h),
            ),
        child: child,
      ),
      onPressed: onTap,
    ),
  );
}

/// Extension on [CustomIconButton] to facilitate inclusion of all types of border style etc
extension IconButtonStyleHelper on CustomIconButtonWidget {
  static BoxDecoration get outlinePrimary1 => BoxDecoration(
    boxShadow: [
      BoxShadow(
        color: theme.colorScheme.primary.withOpacity(0.22),
        spreadRadius: 2.h,
        blurRadius: 2.h,
        offset: Offset(
          0,
          4,
        ),
      ),
    ],
  );
  static BoxDecoration get fillPrimary => BoxDecoration(
    color: theme.colorScheme.primary,
    borderRadius: BorderRadius.circular(21.h),
  );
}
