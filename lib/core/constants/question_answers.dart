import 'package:autism_test_app/gen/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';

class QuestionAnswerConstant {
  static List<String> get _answerTypeOne => [
        LocaleKeys.always.tr(),
        LocaleKeys.usually.tr(),
        LocaleKeys.sometimes.tr(),
        LocaleKeys.rarely.tr(),
        LocaleKeys.never.tr()
      ];

  static List<String> get _answerTypeTwo => [
        LocaleKeys.veryEasy.tr(),
        LocaleKeys.quiteEasy.tr(),
        LocaleKeys.quiteDifficult.tr(),
        LocaleKeys.veryDifficult.tr(),
        LocaleKeys.impossible.tr()
      ];

  static List<String> get _answerTypeThree => [
        LocaleKeys.manyTimesADay.tr(),
        LocaleKeys.aFewTimesADay.tr(),
        LocaleKeys.aFewTimesAWeek.tr(),
        LocaleKeys.lessThanOnceAWeek.tr(),
        LocaleKeys.never.tr()
      ];

  static List<String> get _answerTypeFour => [
        LocaleKeys.veryTypical.tr(),
        LocaleKeys.quiteTypical.tr(),
        LocaleKeys.slightlyUnusual.tr(),
        LocaleKeys.veryUnusual.tr(),
        LocaleKeys.myChildDoesNotSpeak.tr()
      ];

  static List<List<String>> get questionAnswers => [
        _answerTypeOne,
        _answerTypeTwo,
        _answerTypeThree,
        _answerTypeThree,
        _answerTypeThree,
        _answerTypeThree,
        _answerTypeOne,
        _answerTypeFour,
        _answerTypeThree,
        _answerTypeThree,
      ];
}
