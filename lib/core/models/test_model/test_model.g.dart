// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TestModelImpl _$$TestModelImplFromJson(Map<String, dynamic> json) =>
    _$TestModelImpl(
      answers: (json['answers'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      age: (json['age'] as num).toInt(),
      gender: json['gender'] as String,
      ethnicity: json['ethnicity'] as String,
      isJaundice: json['isJaundice'] as bool,
      isAutisticFamilyMember: json['isAutisticFamilyMember'] as bool,
      personSolvedTest: json['personSolvedTest'] as String,
    );

Map<String, dynamic> _$$TestModelImplToJson(_$TestModelImpl instance) =>
    <String, dynamic>{
      'answers': instance.answers,
      'age': instance.age,
      'gender': instance.gender,
      'ethnicity': instance.ethnicity,
      'isJaundice': instance.isJaundice,
      'isAutisticFamilyMember': instance.isAutisticFamilyMember,
      'personSolvedTest': instance.personSolvedTest,
    };
