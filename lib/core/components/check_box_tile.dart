import 'package:autism_test_app/core/constants/colors.dart';
import 'package:autism_test_app/core/constants/size_constants.dart';
import 'package:autism_test_app/core/extensions/context_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CheckBoxTile extends StatelessWidget {
  const CheckBoxTile({
    super.key,
    required this.value,
    this.size,
    this.decoration,
    this.activeDecoration,
    required this.label,
    this.labelStyle,
    this.labelOnLeft = true,
    this.backgroundColor,
    this.animationDuration = const Duration(milliseconds: 100),
    required this.onChanged,
  });

  final bool value;
  final double? size;
  final BoxDecoration? decoration;
  final BoxDecoration? activeDecoration;
  final String label;
  final TextStyle? labelStyle;
  final bool labelOnLeft;
  final Color? backgroundColor;
  final Duration animationDuration;
  final void Function(bool value) onChanged;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onChanged(!value),
      child: Material(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(15.r),
        child: Padding(
          padding: backgroundColor == null
              ? EdgeInsets.zero
              : EdgeInsets.symmetric(
                  horizontal: SizeConstant.inputFieldHorizontalPadding,
                  vertical: SizeConstant.inputFieldVerticalPadding,
                ),
          child: Row(
            children: [
              if (labelOnLeft == true)
                _LabelText(
                  label: label,
                  labelStyle: labelStyle,
                  labelOnLeft: labelOnLeft,
                  size: size,
                ),
              if (labelOnLeft == true)
                _Gap(
                  label: label,
                  size: size,
                  backgroundColor: backgroundColor,
                ),
              _CheckBox(
                size: size,
                animationDuration: animationDuration,
                value: value,
                activeDecoration: activeDecoration,
                decoration: decoration,
              ),
              if (labelOnLeft == false)
                _Gap(
                  label: label,
                  size: size,
                  backgroundColor: backgroundColor,
                ),
              if (labelOnLeft == false)
                _LabelText(
                  label: label,
                  labelStyle: labelStyle,
                  labelOnLeft: labelOnLeft,
                  size: size,
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class _Gap extends StatelessWidget {
  const _Gap({required this.label, required this.size, this.backgroundColor});

  final String label;
  final double? size;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    if (backgroundColor != null) {
      return const Spacer();
    }
    return SizedBox(width: label != "" ? (size != null ? size! / 2.5 : 8.w) : 0);
  }
}

class _LabelText extends StatelessWidget {
  const _LabelText({
    required this.label,
    required this.labelStyle,
    required this.labelOnLeft,
    this.size,
  });

  final String label;
  final TextStyle? labelStyle;
  final bool labelOnLeft;
  final double? size;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Text(
        label,
        style: labelStyle ?? context.displaySmall,
      ),
    );
  }
}

class _CheckBox extends StatelessWidget {
  const _CheckBox({
    required this.size,
    required this.animationDuration,
    required this.value,
    required this.activeDecoration,
    required this.decoration,
  });

  final double? size;
  final Duration animationDuration;
  final bool value;
  final BoxDecoration? activeDecoration;
  final BoxDecoration? decoration;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      height: size ?? 18.r,
      width: size ?? 18.r,
      duration: animationDuration,
      decoration: value
          ? activeDecoration ??
              BoxDecoration(
                color: ColorConstant.scaffoldBackground,
                shape: BoxShape.circle,
                border: Border.all(
                  width: size != null ? size! / 3 : 6.r,
                  color: ColorConstant.main,
                ),
              )
          : decoration ??
              BoxDecoration(
                color: Colors.transparent,
                shape: BoxShape.circle,
                border: Border.all(
                  width: size != null ? size! / (size! / 2) : 1.5.r,
                  color: ColorConstant.main,
                ),
              ),
    );
  }
}
