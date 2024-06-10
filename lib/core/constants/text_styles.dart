import 'package:autism_test_app/core/constants/colors.dart';
import 'package:autism_test_app/core/constants/font_sizes.dart';
import 'package:flutter/material.dart';

class TextStyleConstant {
  /// app bar title
  static final titleMedium = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: FontSizeConstant.fontSize24,
    color: ColorConstant.whiteText,
  );

  /// input area text, question text and result page texts
  static final displayLarge = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: FontSizeConstant.fontSize18,
    color: ColorConstant.blackText,
  );

  /// text button's text
  static final displayMedium = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: FontSizeConstant.fontSize18,
    color: ColorConstant.whiteText,
  );

  /// checkbox text in test start page and question number in test result page
  static final displaySmall = TextStyle(
    fontWeight: FontWeight.w300,
    fontSize: FontSizeConstant.fontSize14,
    color: ColorConstant.blackText,
  );

  /// input area hint text
  static final bodyMedium = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: FontSizeConstant.fontSize16,
    color: ColorConstant.greyText,
  );

  /// input area error text
  static final bodySmall = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: FontSizeConstant.fontSize10,
    color: ColorConstant.red,
  );
}
