import 'package:case_sync_pro/resource/csp_colors.dart';
import 'package:case_sync_pro/resource/csp_dimes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CSPTextFormField extends StatelessWidget {
  final TextEditingController? controller;
  final Color? fillColor;
  final Color? separatorColor;
  final Color? enabledBorder;
  final String? label;
  final String? hintText, errorText;
  final String? initialValue;
  final bool? readOnly;
  final bool? showSeparator;
  final Widget? suffixWidget;
  final VoidCallback? onTap;
  final Function(String)? onFieldSubmitted;
  final int? maxLines, minLines;
  final TextInputType keyboardType;
  final bool? requiredField;
  final Widget Function(BuildContext context)? contentBuilder;
  final EdgeInsetsGeometry? contentPadding;
  final ValueChanged<String>? onTextChanged;
  final Function(bool focus)? onFocusChanged;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputAction inputAction;
  final bool enabled;
  final TextAlign? textAlign;
  final bool autofocus;
  final bool? isObscure;
  final bool? showCursor;
  final Color? focusedBorderColor;
  final Color? disabledColor;
  final FocusNode? focusNode;
  final TextStyle? hintStyle;
  final ScrollController? scrollController;

  const CSPTextFormField(
      {super.key,
      this.controller,
      this.fillColor,
      this.separatorColor,
      this.enabledBorder,
      this.label,
      this.hintText,
      this.errorText,
      this.initialValue,
      this.readOnly,
      this.showSeparator,
      this.suffixWidget,
      this.onTap,
      this.onFieldSubmitted,
      this.maxLines,
      this.minLines,
      this.keyboardType = TextInputType.text,
      this.requiredField,
      this.contentBuilder,
      this.contentPadding,
      this.onTextChanged,
      this.onFocusChanged,
      this.inputFormatters,
      this.inputAction = TextInputAction.done,
      this.enabled = true,
      this.textAlign,
      this.autofocus = false,
      this.isObscure,
      this.showCursor,
      this.focusedBorderColor,
      this.disabledColor,
      this.focusNode,
      this.hintStyle,
      this.scrollController});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      focusNode: focusNode,
      enabled: enabled,
      autofocus: autofocus,
      showCursor: showCursor ?? true,
      obscureText: isObscure ?? false,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: enabledBorder ?? CSPColors.dividerColor),
          borderRadius: BorderRadius.circular(CSPDimens.w5 - 1),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: enabledBorder ?? CSPColors.dividerColor),
          borderRadius: BorderRadius.circular(CSPDimens.w5 - 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: (readOnly ?? false)
                ? CSPColors.dividerColor
                : (focusedBorderColor ?? CSPColors.primaryColor),
          ),
          borderRadius: BorderRadius.circular(CSPDimens.w5 - 1),
        ),
        fillColor: enabled
            ? (readOnly == true
                ? (fillColor ?? CSPColors.appDisableColor)
                : CSPColors.whileColors)
            : (disabledColor ?? CSPColors.appDisableColor),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: CSPColors.errorColor,
          ),
          borderRadius: BorderRadius.circular(CSPDimens.w5 - 1),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: CSPColors.errorColor,
          ),
          borderRadius: BorderRadius.circular(CSPDimens.w5 - 1),
        ),
        filled: true,
        hintText: hintText,
        hintStyle: hintStyle,
        contentPadding: const EdgeInsets.all(CSPDimens.textField),
        suffixIcon: suffixWidget,
        errorText: errorText,
      ),
      cursorColor: CSPColors.textDarkColor,
      readOnly: readOnly ?? false,
      maxLines: maxLines,
      minLines: minLines,
      keyboardType: keyboardType,
      onFieldSubmitted: onFieldSubmitted,
      onChanged: onTextChanged,
      onTap: onTap,
      inputFormatters: inputFormatters,
      textInputAction: inputAction,
      initialValue: initialValue,
      textAlign: textAlign ?? TextAlign.start,
      scrollController: scrollController,
    );
  }
}
