import 'package:autism_test_app/core/components/custom_text_field.dart';
import 'package:autism_test_app/core/extensions/context_extensions.dart';
import 'package:autism_test_app/core/utils/input_formatters.dart';
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
      body: Padding(
        padding: const EdgeInsets.all(27.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(LocaleKeys.language.tr()),
            ),
            TextButton(
              onPressed: changeLanguage,
              child: Text(
                LocaleKeys.changeLanguage.tr(),
                style: context.displayMedium,
              ),
            ),
            SizedBox(height: 60.h),
            Form(
              key: formKey,
              child: CustomTextField(
                onSaved: onSavedField,
                validator: validateField,
                textInputType: TextInputType.number,
                inputFormatters: InputFieldFormatters.ageFormatter,
                hintText: "Age (Month)",
              ),
            ),
            TextButton(
              onPressed: validateFieldTap,
              child: const Text("Control"),
            ),
          ],
        ),
      ),
    );
  }
}
