import 'package:autism_test_app/core/components/check_box_tile.dart';
import 'package:autism_test_app/core/constants/colors.dart';
import 'package:autism_test_app/core/constants/size_constants.dart';
import 'package:autism_test_app/core/constants/text_styles.dart';
import 'package:autism_test_app/gen/locale_keys.g.dart';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

@RoutePage()
class QuestionView extends StatelessWidget {
  const QuestionView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(title: Text(LocaleKeys.appName.tr())),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(SizeConstant.screenPadding),
          child: Column(
            children: [
              CheckBoxTile.short(
                onChanged: (value) {},
                label: "Her zaman",
                labelStyle: TextStyleConstant.displayLarge,
                backgroundColor: ColorConstant.whiteText,
                value: false,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
