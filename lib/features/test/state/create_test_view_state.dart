import 'package:autism_test_app/core/utils/validators.dart';
import 'package:flutter/material.dart';

abstract class CreateTestViewState<T extends StatefulWidget> extends State<T> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  bool isJaundice = false;
  bool isAutisticFamilyMember = false;
  bool isDataPermissionGiven = false;

  void onSavedAge(String? value) {
    // TODO: Implement onSavedAge logic here
  }
  String? validateAge(String? input) {
    final control = InputFieldValidator.validateAge(input);
    return control.toNullable()?.message;
  }

  void onSavedGender(String? value) {
    // TODO: Implement onSavedGender logic here
  }

  void onSavedEthnicity(String? value) {
    // TODO: Implement onSavedEthnicity logic
  }

  void onSavedPersonSolveTest(String? value) {
    // TODO: Implement onSavedPersonSolveTest logic
  }

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
      // TODO: save the data to the model
      // TODO: navigate to the first question page
    }
  }
}
