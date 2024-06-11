import 'package:autism_test_app/core/constants/colors.dart';
import 'package:autism_test_app/core/constants/font_sizes.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

part 'i_toast_service.dart';

class ToastService implements IToastService {
  factory ToastService() => _instance;

  static final ToastService _instance = ToastService._init();
  ToastService._init();

  @override
  void showToast(String feedback, [ToastGravity? gravity]) {
    Fluttertoast.showToast(
      msg: feedback,
      toastLength: Toast.LENGTH_SHORT,
      gravity: gravity ?? ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: ColorConstant.toastBackground,
      textColor: Colors.white,
      fontSize: FontSizeConstant.fontSize16,
    );
  }
}
