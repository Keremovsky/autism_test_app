import 'dart:developer';

import 'package:autism_test_app/core/constants/locale_constants.dart';
import 'package:autism_test_app/core/extensions/context_extensions.dart';
import 'package:autism_test_app/core/utils/validators.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

abstract class HomeViewState<T extends StatefulWidget> extends State<T> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  void onSavedField(String? value) {
    log(value ?? "empty");
  }

  String? validateField(String? value) {
    final control = InputFieldValidator.validateEmptiness(value);
    return control.toNullable()?.message;
  }

  void validateFieldTap() {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
    }
  }

  void changeLanguage() {
    if (context.isLang(LocaleConstants.en)) {
      context.setLocale(LocaleConstants.tr);
    } else {
      context.setLocale(LocaleConstants.en);
    }
  }
}
