import 'dart:developer';

import 'package:autism_test_app/core/utils/validators.dart';
import 'package:autism_test_app/features/test/controller/test_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

abstract class CreateTestViewState<T extends StatefulWidget> extends State<T> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  bool isJaundice = false;
  bool isAutisticFamilyMember = false;
  bool isDataPermissionGiven = false;

  void onSavedAge(String? value) =>
      Provider.of<TestController>(context, listen: false).setAge(int.parse(value!));

  String? validateAge(String? input) {
    final control = InputFieldValidator.validateAge(input);
    return control.toNullable()?.message;
  }

  void onSavedGender(String? value) =>
      Provider.of<TestController>(context, listen: false).setGender(value!);

  void onSavedEthnicity(String? value) =>
      Provider.of<TestController>(context, listen: false).setEthnicity(value!);

  void onSavedPersonSolvedTest(String? value) =>
      Provider.of<TestController>(context, listen: false).setPersonSolvedTest(value!);

  String? validateDropdownMenu(String? input) {
    final control = InputFieldValidator.validateNullability(input);
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
      return;
    }

    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();

      Provider.of<TestController>(context, listen: false).setIsJaundice(isJaundice);
      Provider.of<TestController>(context, listen: false).setIsAutisticFamilyMember(
        isAutisticFamilyMember,
      );

      log("TestModel: ${Provider.of<TestController>(context, listen: false).testModel}");

      // TODO: navigate to the first question page
    }
  }
}
