import 'package:autism_test_app/core/constants/colors.dart';
import 'package:autism_test_app/core/constants/question_answers.dart';
import 'package:autism_test_app/core/constants/size_constants.dart';
import 'package:autism_test_app/core/extensions/context_extensions.dart';
import 'package:autism_test_app/features/test/controller/test_controller.dart';
import 'package:autism_test_app/features/test/state/display_test_result_view_state.dart';
import 'package:autism_test_app/gen/locale_keys.g.dart';
import 'package:auto_route/annotations.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class DisplayTestResultView extends StatefulWidget {
  const DisplayTestResultView({super.key});

  @override
  DisplayTestResultViewState createState() => _DisplayTestResultViewState();
}

class _DisplayTestResultViewState extends DisplayTestResultViewState {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(title: Text(LocaleKeys.appName.tr()), automaticallyImplyLeading: false),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            top: SizeConstant.screenPadding,
            left: SizeConstant.screenPadding,
            right: SizeConstant.screenPadding,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      dummyScore > 3 ? LocaleKeys.needHelp.tr() : LocaleKeys.noNeedHelp.tr(),
                      style: context.displayLarge,
                    ),
                  ),
                ],
              ),
              const _Gap15(),
              Row(
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(text: "${LocaleKeys.score.tr()}: ", style: context.displayLarge),
                        TextSpan(
                          text: "$dummyScore/10",
                          style: context.displayLarge!.copyWith(
                            color: calculateColor(dummyScore * 10),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const _Gap35(),
              Expanded(
                child: ListView.separated(
                  itemCount: QuestionAnswerConstant.questionAnswers.length + 1,
                  itemBuilder: (context, index) {
                    if (index == QuestionAnswerConstant.questionAnswers.length) {
                      return const _Gap35();
                    }
                    return _ResultListItem(index);
                  },
                  separatorBuilder: (context, index) {
                    if (index == QuestionAnswerConstant.questionAnswers.length - 1) {
                      return const SizedBox();
                    }
                    return const _Separator();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ResultListItem extends StatelessWidget {
  final int index;

  const _ResultListItem(this.index);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Text(
                "${index + 1} - ${LocaleKeys.questions.tr(gender: index.toString())}",
                style: context.displayLarge,
              ),
            ),
          ],
        ),
        const _Gap15(),
        Row(
          children: [
            Expanded(
              child: Text(
                "${LocaleKeys.answer.tr()}: ${QuestionAnswerConstant.questionAnswers[index][context.read<TestController>().getQuestionAnswer(index)]}",
                style: context.bodyMedium?.copyWith(color: ColorConstant.blackText),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class _Gap35 extends StatelessWidget {
  const _Gap35();

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 35.h);
  }
}

class _Gap15 extends StatelessWidget {
  const _Gap15();

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 15.h);
  }
}

class _Separator extends StatelessWidget {
  const _Separator();

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        _Gap4(),
        Divider(color: ColorConstant.main),
        _Gap4(),
      ],
    );
  }
}

class _Gap4 extends StatelessWidget {
  const _Gap4();

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 4.h);
  }
}
