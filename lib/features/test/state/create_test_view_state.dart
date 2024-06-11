import 'dart:developer';

import 'package:autism_test_app/core/services/feedback/toast_service.dart';
import 'package:autism_test_app/core/utils/validators.dart';
import 'package:autism_test_app/features/test/controller/test_controller.dart';
import 'package:autism_test_app/gen/locale_keys.g.dart';
import 'package:autism_test_app/router/router.dart';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

abstract class CreateTestViewState<T extends StatefulWidget> extends State<T> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  bool isJaundice = false;
  bool isAutisticFamilyMember = false;
  bool isDataPermissionGiven = false;

  void onSavedAge(String? value) => context.read<TestController>().setAge(int.parse(value!));

  String? validateAge(String? input) {
    final control = InputFieldValidator.validateAge(input);
    return control.toNullable()?.message;
  }

  void onSavedGender(String? value) => context.read<TestController>().setGender(value!);

  void onSavedEthnicity(String? value) => context.read<TestController>().setEthnicity(value!);

  void onSavedPersonSolvedTest(String? value) =>
      context.read<TestController>().setPersonSolvedTest(value!);

  String? validateDropdownMenu(String? input) {
    final control = InputFieldValidator.validateEmptiness(input);
    return control.toNullable()?.message;
  }

  void onJaundiceChanged(bool value) {
    setState(() {
      isJaundice = value;
    });
  }

  void onAutisticFamilyMemberChanged(bool value) {
    setState(() {
      isAutisticFamilyMember = value;
    });
  }

  void onDataPermissionGivenChanged(bool value) {
    setState(() {
      isDataPermissionGiven = value;
    });
  }

  void onStartTestButtonPressed() {
    if (!isDataPermissionGiven) {
      Provider.of<ToastService>(context, listen: false).showToast(
        LocaleKeys.dataPermissionMessage.tr(),
      );
      return;
    }

    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();

      context.read<TestController>().setIsJaundice(isJaundice);
      context.read<TestController>().setIsAutisticFamilyMember(isAutisticFamilyMember);

      log("TestModel: ${Provider.of<TestController>(context, listen: false).testModel}");

      context.pushRoute(QuestionViewRoute(pageNumber: 0));
    }
  }
}
