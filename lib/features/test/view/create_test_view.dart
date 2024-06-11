import 'package:autism_test_app/core/components/check_box_tile.dart';
import 'package:autism_test_app/core/components/custom_button.dart';
import 'package:autism_test_app/core/components/custom_dropdown_button.dart';
import 'package:autism_test_app/core/components/custom_text_field.dart';
import 'package:autism_test_app/core/constants/dropdown_menu_items.dart';
import 'package:autism_test_app/core/constants/size_constants.dart';
import 'package:autism_test_app/core/extensions/context_extensions.dart';
import 'package:autism_test_app/core/utils/input_formatters.dart';
import 'package:autism_test_app/features/test/controller/test_controller.dart';
import 'package:autism_test_app/features/test/state/create_test_view_state.dart';
import 'package:autism_test_app/gen/locale_keys.g.dart';
import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class CreateTestView extends StatefulWidget {
  const CreateTestView({super.key});

  @override
  CreateTestViewState createState() => _CreateTestViewState();
}

class _CreateTestViewState extends CreateTestViewState {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(LocaleKeys.appName.tr()),
        leading: IconButton(
          icon: const BackButtonIcon(),
          onPressed: () {
            context.read<TestController>().clearTest();
            context.maybePop();
          },
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(SizeConstant.screenPadding),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                Row(
                  children: [
                    CustomTextField(
                      width: 148.w,
                      onSaved: onSavedAge,
                      validator: validateAge,
                      inputFormatters: InputFieldFormatters.ageFormatter,
                      textInputType: TextInputType.number,
                      hintText: LocaleKeys.ageHintText.tr(),
                    ),
                    const Spacer(),
                    CustomDropdownButtonFormField(
                      onSaved: onSavedGender,
                      validator: validateDropdownMenu,
                      width: 148.w,
                      hintText: LocaleKeys.genderHintText.tr(),
                      items: DropdownMenuItemConstants.gender,
                    ),
                  ],
                ),
                const _Gap18(),
                CheckBoxTile.long(
                  onChanged: onJaundiceChanged,
                  label: LocaleKeys.jaundiceHintText.tr(),
                  value: isJaundice,
                ),
                const _Gap13(),
                CheckBoxTile.long(
                  onChanged: onAutisticFamilyMemberChanged,
                  label: LocaleKeys.autisticFamilyMemberHintText.tr(),
                  value: isAutisticFamilyMember,
                ),
                const _Gap18(),
                CustomDropdownButtonFormField(
                  onSaved: onSavedEthnicity,
                  validator: validateDropdownMenu,
                  hintText: LocaleKeys.ethnicityHintText.tr(),
                  items: DropdownMenuItemConstants.ethnicity,
                ),
                const _Gap13(),
                CustomDropdownButtonFormField(
                  onSaved: onSavedPersonSolvedTest,
                  validator: validateDropdownMenu,
                  hintText: LocaleKeys.personSolveTheTestHintText.tr(),
                  items: DropdownMenuItemConstants.personSolvedTest,
                ),
                const Spacer(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 7.w),
                  child: CheckBoxTile.long(
                    onChanged: onDataPermissionGivenChanged,
                    label: LocaleKeys.dataUsageVerificationText.tr(),
                    value: isDataPermissionGiven,
                  ),
                ),
                const _Gap20(),
                CustomButton(
                  onPressed: onStartTestButtonPressed,
                  width: double.infinity,
                  child: Text(LocaleKeys.startTestButton.tr()),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _Gap20 extends StatelessWidget {
  const _Gap20();

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 20.h);
  }
}

class _Gap18 extends StatelessWidget {
  const _Gap18();

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 18.h);
  }
}

class _Gap13 extends StatelessWidget {
  const _Gap13();

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 13.h);
  }
}
