import 'package:flutter/services.dart';

class InputFieldFormatters {
  static List<TextInputFormatter> ageFormatter = [
    FilteringTextInputFormatter.digitsOnly,
    LengthLimitingTextInputFormatter(2),
  ];
}
