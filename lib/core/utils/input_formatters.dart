import 'package:flutter/services.dart';

class InputFieldFormatters {
  static List<TextInputFormatter> ageFormatter = [
    FilteringTextInputFormatter.digitsOnly,
    LengthLimitingTextInputFormatter(2),
    TextInputFormatter.withFunction((oldValue, newValue) {
      if (newValue.text.isEmpty) {
        return newValue.copyWith(text: '');
      } else {
        final int value = int.tryParse(newValue.text) ?? 0;
        return value > 36
            ? oldValue.copyWith(text: '36')
            : newValue.copyWith(text: value.toString());
      }
    }),
  ];
}
