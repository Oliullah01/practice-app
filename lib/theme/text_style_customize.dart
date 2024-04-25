import 'package:custom_halal_app/core/utils/size_utils.dart';
import 'package:custom_halal_app/theme/theme_helper.dart';
import 'package:flutter/material.dart';

class TextStyleCustomize {
  // Body text style
  static get bodyLargeGray500 => theme.textTheme.bodyLarge!.copyWith(
    color: appTheme.gray500,
  );
  static get bodyLargeff4c4c4c => theme.textTheme.bodyLarge!.copyWith(
    color: const Color(0XFF4C4C4C),
  );
  static get bodyLargeff9e9c9d => theme.textTheme.bodyLarge!.copyWith(
    color: const Color(0XFF9E9C9D),
  );
  static get bodyMediumGray70002 => theme.textTheme.bodyMedium!.copyWith(
    color: appTheme.gray70002,
  );
  static get bodyMediumGray800 => theme.textTheme.bodyMedium!.copyWith(
    color: appTheme.gray800,
  );
  static get bodyMediumGray80002 => theme.textTheme.bodyMedium!.copyWith(
    color: appTheme.gray80002,
  );
  static get bodySmallGray60002 => theme.textTheme.bodySmall!.copyWith(
    color: appTheme.gray60002,
  );
  // Headline text style
  static get headlineLargeGray50 => theme.textTheme.headlineLarge!.copyWith(
    color: appTheme.gray50,
    fontSize: 30.fSize,
  );
  static get headlineLargefff9f9f9 => theme.textTheme.headlineLarge!.copyWith(
    color: const Color(0XFFF9F9F9),
    fontSize: 30.fSize,
    fontWeight: FontWeight.w500,
  );
  // Title text style
  static get titleLargeGray20001 => theme.textTheme.titleLarge!.copyWith(
    color: appTheme.gray20001,
    fontSize: 20.fSize,
    fontWeight: FontWeight.w400,
  );
  static get titleLargeWhiteA700 => theme.textTheme.titleLarge!.copyWith(
    color: appTheme.whiteA700,
    fontSize: 20.fSize,
  );
  static get titleMediumWhiteA700 => theme.textTheme.titleMedium!.copyWith(
    color: appTheme.whiteA700,
    fontWeight: FontWeight.w600,
  );
  static get titleMediumff0d8335 => theme.textTheme.titleMedium!.copyWith(
    color: const Color(0XFF0D8335),
    fontWeight: FontWeight.w600,
  );
  static get titleSmallGray90006Medium => theme.textTheme.titleSmall!.copyWith(
    color: appTheme.gray90006,
    fontWeight: FontWeight.w500,
  );
  static get titleSmallMedium_1 => theme.textTheme.titleSmall!.copyWith(
    fontWeight: FontWeight.w500,
  );
  static get titleLargeBlackA600 => theme.textTheme.titleMedium!.copyWith(
    color: Color(0XFF242424),
    fontWeight: FontWeight.w600,
    fontSize: 24.fSize,
  );
}

extension on TextStyle {}