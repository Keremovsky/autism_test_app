import 'package:autism_test_app/core/constants/colors.dart';
import 'package:autism_test_app/core/constants/theme_constants.dart';
import 'package:flutter/material.dart';

final theme = ThemeData(
  colorScheme: ColorScheme.fromSeed(seedColor: ColorConstant.mainColor),
  primaryColor: ColorConstant.mainColor,
  scaffoldBackgroundColor: ColorConstant.scaffoldBackground,
  textTheme: ThemeConstant.textTheme,
  textButtonTheme: ThemeConstant.textButtonThemeData,
  inputDecorationTheme: ThemeConstant.inputDecorationTheme,
);
