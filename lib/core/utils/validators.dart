import 'package:fpdart/fpdart.dart';

import '../models/value_failure_model.dart/value_failure_model.dart';

class InputFieldValidator {
  static Option<ValueFailureModel> validateEmptiness(String? input, {String? customMessage}) {
    if (input == null || input.isEmpty) {
      return some(ValueFailureModel.invalidInput(customMessage ?? "Empty input is not allowed!"));
    }

    return none();
  }
}
