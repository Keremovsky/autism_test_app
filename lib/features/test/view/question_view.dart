import 'package:autism_test_app/core/components/check_box_tile.dart';
import 'package:autism_test_app/core/components/custom_button.dart';
import 'package:autism_test_app/core/constants/colors.dart';
import 'package:autism_test_app/core/constants/question_answers.dart';
import 'package:autism_test_app/core/constants/size_constants.dart';
import 'package:autism_test_app/core/constants/text_styles.dart';
import 'package:autism_test_app/core/extensions/context_extensions.dart';
import 'package:autism_test_app/features/test/state/question_view_state.dart';
import 'package:autism_test_app/gen/locale_keys.g.dart';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class QuestionView extends StatefulWidget {
  final int pageNumber;

  const QuestionView({super.key, required this.pageNumber});

  @override
  QuestionViewState createState() => _QuestionViewState();
}

class _QuestionViewState extends QuestionViewState {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(LocaleKeys.appName.tr()),
        automaticallyImplyLeading: widget.pageNumber == 0,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(SizeConstant.screenPadding),
          child: Column(
            children: [
              Text(
                LocaleKeys.questions.tr(gender: widget.pageNumber.toString()),
                style: context.displayLarge,
              ),
              const _Gap40(),
              Expanded(
                child: ListView.separated(
                  itemCount: QuestionAnswerConstant.questionAnswers[widget.pageNumber].length,
                  itemBuilder: (context, index) {
                    return CheckBoxTile.short(
                      onChanged: (value) => selectAnswer(index),
                      label: QuestionAnswerConstant.questionAnswers[widget.pageNumber][index],
                      labelStyle: TextStyleConstant.displayLarge,
                      backgroundColor: ColorConstant.whiteText,
                      borderDecoration: Border.all(
                        color: ColorConstant.inputAreaSelectedBackground,
                        width: 2,
                      ),
                      value: selectedAnswerIndex == index,
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return const _Gap12();
                  },
                ),
              ),
              Row(
                children: [
                  if (widget.pageNumber != 0)
                    CustomButton(
                      onPressed: previousQuestion,
                      width: 140.w,
                      child: Text(LocaleKeys.backButton.tr()),
                    ),
                  const Spacer(),
                  if (widget.pageNumber == 9)
                    CustomButton(
                      onPressed: finishTest,
                      width: 140.w,
                      child: Text(LocaleKeys.finishTestButton.tr()),
                    )
                  else
                    CustomButton(
                      onPressed: nextQuestion,
                      width: 140.w,
                      child: Text(LocaleKeys.nextButton.tr()),
                    )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _Gap40 extends StatelessWidget {
  const _Gap40();

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 40.h);
  }
}

class _Gap12 extends StatelessWidget {
  const _Gap12();

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 12.h);
  }
}
