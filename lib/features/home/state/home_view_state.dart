import 'package:autism_test_app/core/constants/locale_constants.dart';
import 'package:autism_test_app/core/utils/validators.dart';
import 'package:autism_test_app/router/router.dart';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

abstract class HomeViewState<T extends StatefulWidget> extends State<T> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  void onSavedTestCode(String? value) {
    // TODO: Implement onSavedTestCode logic here
  }

  String? validateTestCode(String? input) {
    final control = InputFieldValidator.validateTestCode(input);
    return control.toNullable()?.message;
  }

  void onSearchButtonPressed() {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
      // TODO: navigate to test result page
    }
  }

  void onNewTestButtonPressed() {
    context.pushRoute(const CreateTestViewRoute());
  }

  void onEnglishButtonPressed() => context.setLocale(LocaleConstants.en);

  void onTurkishButtonPressed() => context.setLocale(LocaleConstants.tr);
}
