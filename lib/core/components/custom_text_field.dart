import 'package:autism_test_app/core/constants/colors.dart';
import 'package:autism_test_app/core/extensions/context_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class CustomTextField extends HookWidget {
  final GlobalKey<FormFieldState>? formFieldKey;
  final List<TextInputFormatter>? inputFormatters;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String?>? onSaved;
  final TextEditingController? controller;
  final TextInputAction? textInputAction;
  final FormFieldValidator<String>? validator;
  final AutovalidateMode? autovalidateMode;
  final TextInputType? textInputType;

  final TextStyle? style;
  final TextStyle? labelStyle;
  final TextStyle? hintStyle;
  final FocusNode? focusNode;
  final String? initialValue;
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final bool obscureText;
  final int maxLines;
  final int? minLines;
  final bool enabled;
  final bool readOnly;
  final Color? fillColor;
  final InputBorder? border;
  final InputBorder? enabledBorder;
  final InputBorder? focusedBorder;
  final InputBorder? errorBorder;
  final InputBorder? disabledBorder;
  final InputBorder? focusedErrorBorder;
  final TextAlign textAlign;
  final EdgeInsetsGeometry? contentPadding;

  const CustomTextField({
    super.key,
    this.formFieldKey,
    this.inputFormatters,
    this.onChanged,
    this.onSaved,
    this.controller,
    this.textInputAction,
    this.validator,
    this.autovalidateMode,
    this.textInputType,
    this.style,
    this.labelStyle,
    this.hintStyle,
    this.focusNode,
    this.initialValue,
    this.hintText,
    this.labelText,
    this.helperText,
    this.obscureText = false,
    this.maxLines = 1,
    this.minLines,
    this.enabled = true,
    this.readOnly = false,
    this.fillColor,
    this.border,
    this.enabledBorder,
    this.focusedBorder,
    this.errorBorder,
    this.disabledBorder,
    this.focusedErrorBorder,
    this.textAlign = TextAlign.start,
    this.contentPadding,
  });

  @override
  Widget build(BuildContext context) {
    final focusNode = this.focusNode ?? useFocusNode();
    useListenable(focusNode);

    return TextFormField(
      key: formFieldKey,
      initialValue: initialValue,
      style: style ?? context.bodyMedium,
      inputFormatters: inputFormatters,
      autovalidateMode: autovalidateMode,
      controller: controller,
      focusNode: focusNode,
      onChanged: onChanged,
      onSaved: onSaved,
      obscureText: obscureText,
      textInputAction: textInputAction ?? TextInputAction.next,
      validator: validator,
      keyboardType: textInputType,
      maxLines: maxLines,
      minLines: minLines,
      enabled: enabled,
      readOnly: readOnly,
      textAlign: textAlign,
      decoration: InputDecoration(
        enabled: enabled,
        contentPadding: contentPadding,
        fillColor: fillColor ?? ColorConstant.inputAreaBackground,
        hintText: hintText,
        hintStyle: hintStyle,
        labelText: labelText,
        labelStyle: focusNode.hasFocus ? labelStyle : labelStyle,
        helperText: helperText,
        border: border,
        enabledBorder: enabledBorder,
        focusedBorder: focusedBorder,
        errorBorder: errorBorder,
        focusedErrorBorder: focusedErrorBorder,
        disabledBorder: disabledBorder,
      ),
    );
  }
}
