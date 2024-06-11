import 'package:autism_test_app/gen/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:fpdart/fpdart.dart';

import '../models/value_failure_model.dart/value_failure_model.dart';

class InputFieldValidator {
  static Option<ValueFailureModel> validateEmptiness(String? input) {
    if (input == null || input.isEmpty) {
      return some(ValueFailureModel.invalidInput(LocaleKeys.emptyFieldMessage.tr()));
    }

    return none();
  }

  static Option<ValueFailureModel> validateTestCode(String? input) {
    if (input == null || input.isEmpty) {
      return some(ValueFailureModel.invalidInput(LocaleKeys.emptyFieldMessage.tr()));
    }

    // TODO: Implement test code validation logic here

    return none();
  }

  static Option<ValueFailureModel> validateAge(String? input) {
    if (input == null || input.isEmpty) {
      return some(ValueFailureModel.invalidInput(LocaleKeys.emptyFieldMessage.tr()));
    }

    final age = input.toIntOption;

    return age.fold(
      () => some(ValueFailureModel.invalidInput(LocaleKeys.notValidAgeMessage.tr())),
      (value) {
        if (value > 36) {
          return some(ValueFailureModel.invalidInput(LocaleKeys.ageCannotBeOverMessage.tr()));
        }

        return none();
      },
    );
  }
}
