import 'package:autism_test_app/core/components/check_box_tile.dart';
import 'package:autism_test_app/core/components/custom_dropdown_button.dart';
import 'package:autism_test_app/core/components/custom_text_field.dart';
import 'package:autism_test_app/core/constants/dropdown_menu_items.dart';
import 'package:autism_test_app/core/constants/size_constants.dart';
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
        padding: EdgeInsets.all(SizeConstant.screenPadding),
        child: Form(
          key: formKey,
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
              CustomTextField(
                onSaved: onSavedField,
                validator: validateAgeField,
                textInputType: TextInputType.number,
                inputFormatters: InputFieldFormatters.ageFormatter,
                hintText: "Age (Month)",
              ),
              SizedBox(height: 10.h),
              CustomDropdownButtonFormField<String>(
                onSaved: onSavedGenderField,
                validator: validateGenderField,
                hintText: "Gender",
                items: DropdownMenuItemConstants.gender,
              ),
              SizedBox(height: 15.h),
              TextButton(
                onPressed: validateFormTap,
                child: const Text("Control"),
              ),
              SizedBox(height: 15.h),
              CheckBoxTile(
                value: jaundiceBool,
                onChanged: onCheckBoxTapped,
                size: 24.r,
                label:
                    "Verileriniz daha sonrasında tarafınız tarafından ulaşılmak için kaydedilecektir.",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
