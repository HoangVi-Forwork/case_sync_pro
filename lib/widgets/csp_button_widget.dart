// ignore_for_file: public_member_api_docs, sort_constructors_first, dead_code
import 'package:case_sync_pro/resource/resource.dart';
import 'package:flutter/material.dart';

enum CSPAppButtonType {
  primary,
  secondary,
  outlinePrimary,
  outlineSecondary,
  linkText,
  suffixIcon,
  text,
}

class CSPButtonWidget extends StatelessWidget {
  final CSPAppButtonType type;
  final bool disable;
  final bool fullWidth;
  final String? label;
  final VoidCallback? onPressed;
  final Color? buttonColor;
  final Color? textColor;
  final EdgeInsetsGeometry? padding;
  final TextStyle? labelStyle;
  final double buttonRadius;
  final bool isLoading;
  final Widget? iconWidget;

  const CSPButtonWidget({
    Key? key,
    required this.type,
    required this.disable,
    required this.fullWidth,
    this.label,
    this.onPressed,
    this.buttonColor,
    this.textColor,
    this.padding,
    this.labelStyle,
    this.buttonRadius = 4.0,
    required this.isLoading,
    this.iconWidget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget button = const SizedBox.shrink();

    switch (type) {
      case CSPAppButtonType.primary:
        button = getPrimaryButton();
        break;
      case CSPAppButtonType.secondary:
        button = getPrimaryButton();
        break;
      case CSPAppButtonType.outlinePrimary:
        button = getOutlinePrimaryButton();
      case CSPAppButtonType.outlineSecondary:
        button = getOutlinePrimaryButton();
        break;
      case CSPAppButtonType.linkText:
        button = getTextButton(type);
        break;
      case CSPAppButtonType.suffixIcon:
        button = const SizedBox.shrink();
        break;
      case CSPAppButtonType.text:
        button = getTextButton(type);
        break;
    }

    return fullWidth
        ? SizedBox(
            width: double.infinity,
            child: button,
          )
        : button;
  }

  Widget getPrimaryButton() {
    return ElevatedButton(
      onPressed: disable ? null : onPressed,
      style: ElevatedButton.styleFrom(
        padding: padding ??
            const EdgeInsets.only(top: 10, bottom: 10, left: 8, right: 8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(buttonRadius),
        ),
        backgroundColor: buttonColor ?? CSPColors.primaryColor,
      ),
      child: isLoading
          ? Container()
          : Text(
              label ?? '',
              style: labelStyle ?? _getPrimaryButtonTextStyle(),
            ),
    );
  }

  Widget getOutlinePrimaryButton() {
    final lableWidget = Text(
      label ?? '',
      style: labelStyle ?? _getPrimaryButtonOutlineTextStyle(),
    );

    final buttonStyle = ButtonStyle(
      padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
        padding ??
            const EdgeInsets.only(top: 10, bottom: 10, left: 8, right: 8),
      ),
      shape: MaterialStateProperty.resolveWith(
        (states) => RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(buttonRadius),
          ),
        ),
      ),
      side: MaterialStateProperty.resolveWith(
        (states) => BorderSide(
          color: states.contains(MaterialState.disabled)
              ? Colors.grey
              : buttonColor ?? CSPColors.primaryColor,
        ),
      ),
    );

    if (iconWidget != null && !isLoading) {
      return OutlinedButton(
        onPressed: disable ? null : onPressed,
        style: buttonStyle,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: iconWidget,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: lableWidget,
            ),
          ],
        ),
      );
    }

    return OutlinedButton(
      onPressed: disable ? null : onPressed,
      style: buttonStyle,
      child: isLoading ? Container() : lableWidget,
    );
  }

  Widget getTextButton(CSPAppButtonType type) {
    return TextButton(
      onPressed: disable ? null : onPressed,
      style: TextButton.styleFrom(
        padding: padding ?? const EdgeInsets.all(2.0),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
      child: Text(
        label ?? '',
        style: labelStyle ??
            (type == CSPAppButtonType.linkText
                ? _getLinkTextButtonTextStyle()
                : _getTextButtonTextStyle()),
      ),
    );
  }

  TextStyle _getPrimaryButtonTextStyle() => TextStyle(
        color: textColor ?? CSPColors.textLightColor,
        fontSize: CSPDimens.w15 + 1,
        fontWeight: FontWeight.w500,
      );

  TextStyle _getPrimaryButtonOutlineTextStyle() => TextStyle(
        color: textColor ?? CSPColors.primaryColor,
        fontSize: CSPDimens.w15 + 1,
        fontWeight: FontWeight.w500,
      );

  TextStyle _getTextButtonTextStyle() => TextStyle(
        color: textColor ?? CSPColors.primaryColor,
        fontSize: CSPDimens.w15 - 3,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.italic,
      );

  TextStyle _getLinkTextButtonTextStyle() => TextStyle(
        color: textColor ?? CSPColors.primaryColor,
        fontSize: CSPDimens.w15 - 1,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.italic,
      );
}
