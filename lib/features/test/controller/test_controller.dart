import 'dart:developer';

import 'package:autism_test_app/core/models/connection_failure_model/connection_failure_model.dart';
import 'package:autism_test_app/core/models/test_model/test_model.dart';
import 'package:autism_test_app/core/services/network/network_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class TestController extends ChangeNotifier {
  late TestModel _testModel;

  late NetworkService _networkService;

  static final TestController _instance = TestController._init();
  factory TestController() => _instance;

  TestController._init() {
    _networkService = NetworkService();
    _testModel = TestModel(answers: List.filled(10, -1));
  }

  TestModel get testModel => _testModel;

  void setAge(int age) {
    log("age: $age");
    _testModel.age = age;
    notifyListeners();
  }

  void setGender(String gender) {
    log("gender: $gender");
    _testModel.gender = gender;
    notifyListeners();
  }

  void setEthnicity(String ethnicity) {
    log("ethnicity: $ethnicity");
    _testModel.ethnicity = ethnicity;
    notifyListeners();
  }

  void setIsJaundice(bool isJaundice) {
    log("isJaundice: $isJaundice");
    _testModel.isJaundice = isJaundice;
    notifyListeners();
  }

  void setIsAutisticFamilyMember(bool isAutisticFamilyMember) {
    log("isAutisticFamilyMember: $isAutisticFamilyMember");
    _testModel.isAutisticFamilyMember = isAutisticFamilyMember;
    notifyListeners();
  }

  void setPersonSolvedTest(String personSolvedTest) {
    log("personSolvedTest: $personSolvedTest");
    _testModel.personSolvedTest = personSolvedTest;
    notifyListeners();
  }

  void setQuestion(int questionNumber, int value) {
    log("questionNumber: $questionNumber, value: $value");
    _testModel.answers[questionNumber] = value;
    log("answers: ${_testModel.answers}");
    notifyListeners();
  }

  int getQuestionAnswer(int questionNumber) {
    return _testModel.answers[questionNumber];
  }

  void clearTest() {
    log("Test cleared.");
    _testModel = TestModel(answers: List.filled(10, -1));
    notifyListeners();
  }

  Future<void> sendTest() async {
    final control = await _networkService.post("test", data: _testModel);

    control.fold(
      (ConnectionFailureModel failureMessage) {
        // TODO: implement failure logic
      },
      (Response<Map<String, dynamic>> response) {
        // TODO: implement response logic
      },
    );
  }
}
