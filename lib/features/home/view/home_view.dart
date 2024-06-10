import 'package:autism_test_app/core/components/custom_button.dart';
import 'package:autism_test_app/core/components/custom_text_field.dart';
import 'package:autism_test_app/core/constants/colors.dart';
import 'package:autism_test_app/core/constants/size_constants.dart';
import 'package:autism_test_app/features/home/state/home_view_state.dart';
import 'package:autism_test_app/gen/locale_keys.g.dart';
import 'package:auto_route/annotations.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: ColorConstant.main,
        title: Text(LocaleKeys.appName.tr()),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(SizeConstant.screenPadding),
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 164.h),
                Row(
                  children: [
                    CustomTextField(
                      width: 251.w,
                      onSaved: onSavedTestCode,
                      validator: validateTestCode,
                      hintText: LocaleKeys.testCodeHintText.tr(),
                    ),
                    SizedBox(width: 5.w),
                    CustomButton(
                      onPressed: onSearchButtonPressed,
                      height: 50.h,
                      width: 50.w,
                      child: Icon(
                        Icons.search,
                        size: 30.r,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30.h),
                CustomButton(
                  onPressed: onNewTestButtonPressed,
                  width: double.infinity,
                  child: Text(LocaleKeys.newTestButton.tr()),
                ),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomButton(
                      onPressed: onEnglishButtonPressed,
                      width: 130.w,
                      child: Text(LocaleKeys.english.tr()),
                    ),
                    const Spacer(),
                    CustomButton(
                      onPressed: onTurkishButtonPressed,
                      width: 130.w,
                      child: Text(LocaleKeys.turkish.tr()),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
