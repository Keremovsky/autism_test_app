import 'package:autism_test_app/core/constants/colors.dart';
import 'package:autism_test_app/core/constants/theme_constants.dart';
import 'package:flutter/material.dart';

final theme = ThemeData(
  colorScheme: ColorScheme.fromSeed(seedColor: ColorConstant.main),
  primaryColor: ColorConstant.main,
  scaffoldBackgroundColor: ColorConstant.scaffoldBackground,
  appBarTheme: ThemeConstant.appBarTheme,
  textTheme: ThemeConstant.textTheme,
  filledButtonTheme: ThemeConstant.filledButtonThemeData,
  inputDecorationTheme: ThemeConstant.inputDecorationTheme,
  iconTheme: ThemeConstant.iconThemeData,
);
