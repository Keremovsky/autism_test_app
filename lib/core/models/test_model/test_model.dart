import 'package:freezed_annotation/freezed_annotation.dart';

part 'test_model.freezed.dart';
part 'test_model.g.dart';

@unfreezed
sealed class TestModel with _$TestModel {
  factory TestModel({
    @Default([]) List<int> answers,
    int? age,
    String? gender,
    String? ethnicity,
    @Default(false) bool isJaundice,
    @Default(false) bool isAutisticFamilyMember,
    String? personSolvedTest,
  }) = _TestModel;

  factory TestModel.fromJson(Map<String, Object?> json) => _$TestModelFromJson(json);
}
