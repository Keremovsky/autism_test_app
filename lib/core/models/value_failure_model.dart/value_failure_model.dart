import 'package:freezed_annotation/freezed_annotation.dart';

part 'value_failure_model.freezed.dart';

@freezed
class ValueFailureModel with _$ValueFailureModel {
  const factory ValueFailureModel.invalidInput(String message) = _InvalidInput;
}
