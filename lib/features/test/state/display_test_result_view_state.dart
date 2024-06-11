import 'package:autism_test_app/core/constants/colors.dart';
import 'package:autism_test_app/features/test/view/display_test_result_view.dart';
import 'package:autism_test_app/features/test/widgets/test_code_alert_dialog.dart';
import 'package:flutter/material.dart';

abstract class DisplayTestResultViewState extends State<DisplayTestResultView> {
  // TODO: delete dummyScore
  int dummyScore = 7;

  Color? calculateColor(double per) {
    if (per >= 20) {
      return ColorTween(
        begin: ColorConstant.yellow,
        end: ColorConstant.red,
      ).lerp((per - 20) / 80);
    } else {
      return ColorTween(
        begin: ColorConstant.green,
        end: ColorConstant.yellow,
      ).lerp((per / 20));
    }
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (_) async {
        await showDialog<String>(
          context: context,
          builder: (BuildContext context) => const TestCodeAlertDialog(testCode: "Test-Code"),
        );
      },
    );
  }
}
