import 'package:autism_test_app/core/constants/colors.dart';
import 'package:autism_test_app/core/constants/durations.dart';
import 'package:autism_test_app/core/constants/size_constants.dart';
import 'package:autism_test_app/core/extensions/context_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

enum _Type { long, short }

abstract final class CheckBoxTile extends StatelessWidget {
  final bool value;
  final double? size;
  final BoxDecoration? decoration;
  final BoxDecoration? activeDecoration;
  final String label;
  final TextStyle? labelStyle;
  final bool labelOnLeft;
  final Color? backgroundColor;
  final BoxBorder? borderDecoration;
  final Duration animationDuration;
  final void Function(bool value) onChanged;
  final _Type type;

  const CheckBoxTile({
    super.key,
    required this.type,
    required this.value,
    this.size,
    this.decoration,
    this.activeDecoration,
    required this.label,
    this.labelStyle,
    this.labelOnLeft = true,
    this.backgroundColor,
    this.borderDecoration,
    this.animationDuration = DurationConstant.checkBoxTileAnimationDuration,
    required this.onChanged,
  });

  /// when label's length is long
  const factory CheckBoxTile.long({
    required bool value,
    double size,
    BoxDecoration? decoration,
    BoxDecoration? activeDecoration,
    required String label,
    TextStyle? labelStyle,
    bool labelOnLeft,
    Color? backgroundColor,
    BoxBorder? borderDecoration,
    Duration animationDuration,
    required void Function(bool value) onChanged,
  }) = _Long;

  /// when label's length is short, it causes overflow if label is too long
  const factory CheckBoxTile.short({
    required bool value,
    double size,
    BoxDecoration? decoration,
    BoxDecoration? activeDecoration,
    required String label,
    TextStyle? labelStyle,
    bool labelOnLeft,
    Color? backgroundColor,
    BoxBorder? borderDecoration,
    Duration animationDuration,
    required void Function(bool value) onChanged,
  }) = _Short;
}

final class _Long extends CheckBoxTile {
  const _Long({
    super.key,
    required super.value,
    super.size,
    super.decoration,
    super.activeDecoration,
    required super.label,
    super.labelStyle,
    super.labelOnLeft,
    super.backgroundColor,
    super.borderDecoration,
    super.animationDuration,
    required super.onChanged,
  }) : super(type: _Type.long);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onChanged(!value),
      child: Material(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(15.r),
        child: DecoratedBox(
          decoration: BoxDecoration(
            border: borderDecoration,
            borderRadius: BorderRadius.circular(15.r),
          ),
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
                  Flexible(
                    child: _LabelText(
                      label: label,
                      labelStyle: labelStyle,
                      labelOnLeft: labelOnLeft,
                      size: size,
                    ),
                  ),
                if (labelOnLeft == true)
                  _GapLong(
                    label: label,
                    size: size,
                  ),
                _CheckBox(
                  size: size,
                  animationDuration: animationDuration,
                  value: value,
                  activeDecoration: activeDecoration,
                  decoration: decoration,
                ),
                if (labelOnLeft == false)
                  _GapLong(
                    label: label,
                    size: size,
                  ),
                if (labelOnLeft == false)
                  Flexible(
                    child: _LabelText(
                      label: label,
                      labelStyle: labelStyle,
                      labelOnLeft: labelOnLeft,
                      size: size,
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

final class _Short extends CheckBoxTile {
  const _Short({
    super.key,
    required super.value,
    super.size,
    super.decoration,
    super.activeDecoration,
    required super.label,
    super.labelStyle,
    super.labelOnLeft,
    super.backgroundColor,
    super.borderDecoration,
    super.animationDuration,
    required super.onChanged,
  }) : super(type: _Type.short);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onChanged(!value),
      child: Material(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(15.r),
        child: DecoratedBox(
          decoration: BoxDecoration(
            border: borderDecoration,
            borderRadius: BorderRadius.circular(15.r),
          ),
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
                  _GapShort(
                    label: label,
                    size: size,
                  ),
                _CheckBox(
                  size: size,
                  animationDuration: animationDuration,
                  value: value,
                  activeDecoration: activeDecoration,
                  decoration: decoration,
                ),
                if (labelOnLeft == false)
                  _GapShort(
                    label: label,
                    size: size,
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
      ),
    );
  }
}

class _GapLong extends StatelessWidget {
  const _GapLong({required this.label, required this.size});

  final String label;
  final double? size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: label != "" ? (size != null ? size! / 2.5 : 8.w) : 0);
  }
}

class _GapShort extends StatelessWidget {
  const _GapShort({required this.label, required this.size});

  final String label;
  final double? size;

  @override
  Widget build(BuildContext context) {
    return const Spacer();
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
    return Text(
      label,
      style: labelStyle ?? context.displaySmall,
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
