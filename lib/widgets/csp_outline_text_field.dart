import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CSPOutlineTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String? placeholder;
  final bool secured;
  final Color textColor;
  final double textFontSize;
  final Color? fillColor;
  final Color? errorTextColor;
  final Color? placeholderTextColor;
  final Color? focusBorderColor;
  final Color? normalBorderColor;
  final VoidCallback? onClear;
  final ValueChanged<String>? onChanged;
  final Function(String)? onSubmitted;
  final GestureTapCallback? onTap;
  final TextInputType keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputAction? textInputAction;
  final bool isRequired;
  final bool autoFocus;
  final int? maxLines;
  final int? minLines;
  final int? maxLength;
  final String? errorText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final String? initialText;
  final double? borderSize;
  final BorderStyle? borderStyle;
  final bool expands;
  final Color? cursorColor;
  final bool showClearButton;
  final bool enabled;
  final FocusNode? focusNode;
  final VoidCallback? onPrefixIconClick;
  final TextStyle? textStyle;
  final TextAlign textAlign;
  final InputDecoration? decoration;
  final double? borderRadius;

  const CSPOutlineTextField({
    Key? key,
    this.onClear,
    this.focusNode,
    this.controller,
    this.enabled = true,
    this.onSubmitted,
    this.cursorColor,
    this.showClearButton = false,
    this.expands = false,
    this.borderStyle,
    this.borderSize,
    this.initialText,
    this.prefixIcon,
    this.placeholder,
    this.fillColor,
    this.errorText,
    this.errorTextColor,
    this.secured = false,
    this.textColor = Colors.white,
    this.textFontSize = 15,
    this.placeholderTextColor = Colors.white24,
    this.focusBorderColor,
    this.normalBorderColor,
    this.keyboardType = TextInputType.text,
    this.onTap,
    this.onChanged,
    this.maxLength,
    this.maxLines = 1,
    this.minLines = 1,
    this.autoFocus = false,
    this.isRequired = false,
    this.suffixIcon,
    this.textInputAction,
    this.inputFormatters,
    this.onPrefixIconClick,
    this.textStyle,
    this.textAlign = TextAlign.start,
    this.decoration,
    this.borderRadius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
