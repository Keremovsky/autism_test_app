import 'package:autism_test_app/features/test/view/create_test_view.dart';
import 'package:autism_test_app/features/test/view/display_test_result_view.dart';
import 'package:autism_test_app/features/test/view/question_view.dart';
import 'package:auto_route/auto_route.dart';
import 'package:autism_test_app/features/home/view/home_view.dart';
import 'package:flutter/material.dart';

part 'router.gr.dart';

@AutoRouterConfig(replaceInRouteName: "Screen|Route|View")
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: HomeViewRoute.page, initial: true),
        AutoRoute(page: CreateTestViewRoute.page),
        AutoRoute(page: QuestionViewRoute.page),
        AutoRoute(page: DisplayTestResultViewRoute.page),
      ];
}
