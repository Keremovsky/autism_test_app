import 'package:freezed_annotation/freezed_annotation.dart';

part 'test_model.freezed.dart';
part 'test_model.g.dart';

@freezed
sealed class TestModel with _$TestModel {
  const factory TestModel({
    required List<int> answers,
    required int age,
    required String gender,
    required String ethnicity,
    required bool isJaundice,
    required bool isAutisticFamilyMember,
    required String personSolvedTest,
  }) = _TestModel;

  factory TestModel.fromJson(Map<String, Object?> json) => _$TestModelFromJson(json);
}
