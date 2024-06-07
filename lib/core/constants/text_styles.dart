import 'package:autism_test_app/core/constants/colors.dart';
import 'package:autism_test_app/core/constants/font_sizes.dart';
import 'package:flutter/material.dart';

class TextStyleConstant {
  /// app bar title
  static final titleMedium = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: FontSizeConstant.titleText,
    color: ColorConstant.whiteText,
  );

  /// text button's text
  static final displayLarge = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: FontSizeConstant.mainText,
    color: ColorConstant.blackText,
  );

  /// text button's text
  static final displayMedium = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: FontSizeConstant.mainText,
    color: ColorConstant.whiteText,
  );

  /// checkbox text in test start page and question number in test result page
  static final displaySmall = TextStyle(
    fontWeight: FontWeight.w300,
    fontSize: FontSizeConstant.smallText,
    color: ColorConstant.blackText,
  );

  /// input area text
  static final bodyMedium = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: FontSizeConstant.mainText,
    color: ColorConstant.greyText,
  );
}
