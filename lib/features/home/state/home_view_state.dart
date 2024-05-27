import 'package:autism_test_app/core/constants/locale_constants.dart';
import 'package:autism_test_app/core/extensions/context_extensions.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

abstract class HomeViewState<T extends StatefulWidget> extends State<T> {
  void changeLanguage() {
    if (context.isLang(LocaleConstants.en)) {
      context.setLocale(LocaleConstants.tr);
    } else {
      context.setLocale(LocaleConstants.en);
    }
  }
}
