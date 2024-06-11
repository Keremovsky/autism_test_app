import 'package:autism_test_app/core/components/custom_button.dart';
import 'package:autism_test_app/core/extensions/context_extensions.dart';
import 'package:autism_test_app/gen/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TestCodeAlertDialog extends StatelessWidget {
  final String testCode;

  const TestCodeAlertDialog({super.key, required this.testCode});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(LocaleKeys.testCode.tr()),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            LocaleKeys.codeExplanation.tr(),
            style: context.displaySmall,
          ),
          SizedBox(height: 30.h),
          _CodeRow(testCode: testCode),
        ],
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: Text(LocaleKeys.ok.tr()),
        ),
      ],
    );
  }
}

class _CodeRow extends StatelessWidget {
  const _CodeRow({required this.testCode});

  final String testCode;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            testCode,
            style: context.bodyMedium,
          ),
        ),
        const Spacer(),
        CustomButton(
          onPressed: () {
            Clipboard.setData(ClipboardData(text: testCode));
          },
          height: 35.h,
          width: 35.w,
          child: Icon(Icons.copy, size: 14.r),
        ),
      ],
    );
  }
}
