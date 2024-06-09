import 'package:autism_test_app/core/constants/colors.dart';
import 'package:autism_test_app/core/constants/size_constants.dart';
import 'package:autism_test_app/core/constants/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ThemeConstant {
  static final filledButtonThemeData = FilledButtonThemeData(
    style: ButtonStyle(
      backgroundColor: WidgetStateProperty.resolveWith<Color>(
        (states) => ColorConstant.main,
      ),
      side: const WidgetStatePropertyAll(BorderSide.none),
      padding: const WidgetStatePropertyAll(EdgeInsets.zero),
      shape: WidgetStatePropertyAll(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.r)),
      ),
      textStyle: WidgetStatePropertyAll(TextStyleConstant.displayLarge as TextStyle?),
      foregroundColor: const WidgetStatePropertyAll(ColorConstant.whiteText),
      elevation: const WidgetStatePropertyAll(0),
    ),
  );

  static final inputDecorationTheme = InputDecorationTheme(
    filled: true,
    fillColor: ColorConstant.scaffoldBackground,
    hintStyle: TextStyleConstant.bodyMedium,
    floatingLabelBehavior: FloatingLabelBehavior.auto,
    errorStyle: TextStyleConstant.bodySmall,
    errorMaxLines: 1,
    contentPadding: EdgeInsets.symmetric(
      horizontal: SizeConstant.inputFieldHorizontalPadding,
      vertical: SizeConstant.inputFieldVerticalPadding,
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15.r),
      borderSide: BorderSide(color: ColorConstant.inputAreaBorder, width: 1.r),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15.r),
      borderSide: BorderSide(color: ColorConstant.inputAreaFocusedBorder, width: 1.r),
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15.r),
      borderSide: BorderSide(color: ColorConstant.inputAreaBorder, width: 1.r),
    ),
    disabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15.r),
      borderSide: BorderSide.none,
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15.r),
      borderSide: BorderSide(color: ColorConstant.inputAreaErrorBorder, width: 1.r),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15.r),
      borderSide: BorderSide(color: ColorConstant.inputAreaErrorBorder, width: 1.r),
    ),
    constraints: BoxConstraints(maxWidth: 306.w),
  );

  static final textTheme = TextTheme(
    titleMedium: TextStyleConstant.titleMedium,
    displayLarge: TextStyleConstant.displayLarge,
    displayMedium: TextStyleConstant.displayMedium,
    displaySmall: TextStyleConstant.displaySmall,
    bodyMedium: TextStyleConstant.bodyMedium,
    bodySmall: TextStyleConstant.bodySmall,
  );
}
