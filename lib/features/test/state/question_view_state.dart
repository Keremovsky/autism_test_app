import 'package:autism_test_app/core/extensions/context_extensions.dart';
import 'package:autism_test_app/core/services/toast/toast_service.dart';
import 'package:autism_test_app/features/test/controller/test_controller.dart';
import 'package:autism_test_app/features/test/view/question_view.dart';
import 'package:autism_test_app/router/router.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

abstract class QuestionViewState extends State<QuestionView> {
  late int selectedAnswerIndex;

  @override
  void initState() {
    super.initState();
    selectedAnswerIndex = context.read<TestController>().getQuestionAnswer(widget.pageNumber);
  }

  void selectAnswer(int index) {
    setState(() {
      selectedAnswerIndex = index;
    });
  }

  bool isSelected(int index) {
    return selectedAnswerIndex == index;
  }

  void previousQuestion() {
    context.maybePop();
  }

  void nextQuestion() {
    if (selectedAnswerIndex == -1) {
      context.read<ToastService>().showToast("Please select an answer.", ToastGravity.CENTER);
      return;
    }

    context.read<TestController>().setQuestion(widget.pageNumber, selectedAnswerIndex);
    context.pushRoute(QuestionViewRoute(pageNumber: widget.pageNumber + 1));
  }

  void finishTest() {
    if (selectedAnswerIndex == -1) {
      context.read<ToastService>().showToast("Please select an answer.", ToastGravity.CENTER);
      return;
    }

    context.read<TestController>().setQuestion(widget.pageNumber, selectedAnswerIndex);
    context.router.pushAndPopUntil(
      const DisplayTestResultViewRoute(),
      predicate: (route) => route.settings.name == HomeViewRoute.name,
    );
  }
}
