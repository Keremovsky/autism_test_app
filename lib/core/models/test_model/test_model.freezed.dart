// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'test_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TestModel _$TestModelFromJson(Map<String, dynamic> json) {
  return _TestModel.fromJson(json);
}

/// @nodoc
mixin _$TestModel {
  List<int> get answers => throw _privateConstructorUsedError;
  int get age => throw _privateConstructorUsedError;
  String get gender => throw _privateConstructorUsedError;
  String get ethnicity => throw _privateConstructorUsedError;
  bool get isJaundice => throw _privateConstructorUsedError;
  bool get isAutisticFamilyMember => throw _privateConstructorUsedError;
  String get personSolvedTest => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TestModelCopyWith<TestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestModelCopyWith<$Res> {
  factory $TestModelCopyWith(TestModel value, $Res Function(TestModel) then) =
      _$TestModelCopyWithImpl<$Res, TestModel>;
  @useResult
  $Res call(
      {List<int> answers,
      int age,
      String gender,
      String ethnicity,
      bool isJaundice,
      bool isAutisticFamilyMember,
      String personSolvedTest});
}

/// @nodoc
class _$TestModelCopyWithImpl<$Res, $Val extends TestModel>
    implements $TestModelCopyWith<$Res> {
  _$TestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? answers = null,
    Object? age = null,
    Object? gender = null,
    Object? ethnicity = null,
    Object? isJaundice = null,
    Object? isAutisticFamilyMember = null,
    Object? personSolvedTest = null,
  }) {
    return _then(_value.copyWith(
      answers: null == answers
          ? _value.answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<int>,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      ethnicity: null == ethnicity
          ? _value.ethnicity
          : ethnicity // ignore: cast_nullable_to_non_nullable
              as String,
      isJaundice: null == isJaundice
          ? _value.isJaundice
          : isJaundice // ignore: cast_nullable_to_non_nullable
              as bool,
      isAutisticFamilyMember: null == isAutisticFamilyMember
          ? _value.isAutisticFamilyMember
          : isAutisticFamilyMember // ignore: cast_nullable_to_non_nullable
              as bool,
      personSolvedTest: null == personSolvedTest
          ? _value.personSolvedTest
          : personSolvedTest // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TestModelImplCopyWith<$Res>
    implements $TestModelCopyWith<$Res> {
  factory _$$TestModelImplCopyWith(
          _$TestModelImpl value, $Res Function(_$TestModelImpl) then) =
      __$$TestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<int> answers,
      int age,
      String gender,
      String ethnicity,
      bool isJaundice,
      bool isAutisticFamilyMember,
      String personSolvedTest});
}

/// @nodoc
class __$$TestModelImplCopyWithImpl<$Res>
    extends _$TestModelCopyWithImpl<$Res, _$TestModelImpl>
    implements _$$TestModelImplCopyWith<$Res> {
  __$$TestModelImplCopyWithImpl(
      _$TestModelImpl _value, $Res Function(_$TestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? answers = null,
    Object? age = null,
    Object? gender = null,
    Object? ethnicity = null,
    Object? isJaundice = null,
    Object? isAutisticFamilyMember = null,
    Object? personSolvedTest = null,
  }) {
    return _then(_$TestModelImpl(
      answers: null == answers
          ? _value._answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<int>,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      ethnicity: null == ethnicity
          ? _value.ethnicity
          : ethnicity // ignore: cast_nullable_to_non_nullable
              as String,
      isJaundice: null == isJaundice
          ? _value.isJaundice
          : isJaundice // ignore: cast_nullable_to_non_nullable
              as bool,
      isAutisticFamilyMember: null == isAutisticFamilyMember
          ? _value.isAutisticFamilyMember
          : isAutisticFamilyMember // ignore: cast_nullable_to_non_nullable
              as bool,
      personSolvedTest: null == personSolvedTest
          ? _value.personSolvedTest
          : personSolvedTest // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TestModelImpl implements _TestModel {
  const _$TestModelImpl(
      {required final List<int> answers,
      required this.age,
      required this.gender,
      required this.ethnicity,
      required this.isJaundice,
      required this.isAutisticFamilyMember,
      required this.personSolvedTest})
      : _answers = answers;

  factory _$TestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TestModelImplFromJson(json);

  final List<int> _answers;
  @override
  List<int> get answers {
    if (_answers is EqualUnmodifiableListView) return _answers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_answers);
  }

  @override
  final int age;
  @override
  final String gender;
  @override
  final String ethnicity;
  @override
  final bool isJaundice;
  @override
  final bool isAutisticFamilyMember;
  @override
  final String personSolvedTest;

  @override
  String toString() {
    return 'TestModel(answers: $answers, age: $age, gender: $gender, ethnicity: $ethnicity, isJaundice: $isJaundice, isAutisticFamilyMember: $isAutisticFamilyMember, personSolvedTest: $personSolvedTest)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TestModelImpl &&
            const DeepCollectionEquality().equals(other._answers, _answers) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.ethnicity, ethnicity) ||
                other.ethnicity == ethnicity) &&
            (identical(other.isJaundice, isJaundice) ||
                other.isJaundice == isJaundice) &&
            (identical(other.isAutisticFamilyMember, isAutisticFamilyMember) ||
                other.isAutisticFamilyMember == isAutisticFamilyMember) &&
            (identical(other.personSolvedTest, personSolvedTest) ||
                other.personSolvedTest == personSolvedTest));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_answers),
      age,
      gender,
      ethnicity,
      isJaundice,
      isAutisticFamilyMember,
      personSolvedTest);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TestModelImplCopyWith<_$TestModelImpl> get copyWith =>
      __$$TestModelImplCopyWithImpl<_$TestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TestModelImplToJson(
      this,
    );
  }
}

abstract class _TestModel implements TestModel {
  const factory _TestModel(
      {required final List<int> answers,
      required final int age,
      required final String gender,
      required final String ethnicity,
      required final bool isJaundice,
      required final bool isAutisticFamilyMember,
      required final String personSolvedTest}) = _$TestModelImpl;

  factory _TestModel.fromJson(Map<String, dynamic> json) =
      _$TestModelImpl.fromJson;

  @override
  List<int> get answers;
  @override
  int get age;
  @override
  String get gender;
  @override
  String get ethnicity;
  @override
  bool get isJaundice;
  @override
  bool get isAutisticFamilyMember;
  @override
  String get personSolvedTest;
  @override
  @JsonKey(ignore: true)
  _$$TestModelImplCopyWith<_$TestModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
