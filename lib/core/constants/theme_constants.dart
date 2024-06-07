import 'package:autism_test_app/core/constants/colors.dart';
import 'package:autism_test_app/core/constants/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ThemeConstant {
  static final textButtonThemeData = TextButtonThemeData(
    style: ButtonStyle(
      minimumSize: WidgetStatePropertyAll(Size.fromHeight(54.r)),
      backgroundColor: WidgetStateProperty.resolveWith<Color>(
        (states) => ColorConstant.mainColor,
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

  static final textTheme = TextTheme(
    titleMedium: TextStyleConstant.titleMedium,
    displayLarge: TextStyleConstant.displayLarge,
    displayMedium: TextStyleConstant.displayMedium,
    displaySmall: TextStyleConstant.displaySmall,
    bodyMedium: TextStyleConstant.bodyMedium,
  );
}
