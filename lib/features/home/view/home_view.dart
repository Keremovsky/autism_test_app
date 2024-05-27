import 'package:autism_test_app/features/home/state/home_view_state.dart';
import 'package:autism_test_app/gen/locale_keys.g.dart';
import 'package:auto_route/annotations.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends HomeViewState {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(LocaleKeys.language.tr()),
          ),
          ElevatedButton(
            onPressed: changeLanguage,
            child: Text(LocaleKeys.changeLanguage.tr()),
          )
        ],
      ),
    );
  }
}
