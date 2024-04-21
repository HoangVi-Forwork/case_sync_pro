import 'package:case_sync_pro/resource/csp_dimes.dart';
import 'package:case_sync_pro/utils/ui_utils.dart';

import '../widgets/csp_text_form_field.dart';
import 'csp_colors.dart';
import 'package:flutter/material.dart';

// DATA THEME
final ThemeData appTheme = ThemeData(
  useMaterial3: true,
  appBarTheme: AppBarTheme(
    color: CSPColors.primaryColor,
  ),
  scaffoldBackgroundColor: CSPColors.backgroundLightColor,
);

// TEXT STYLE
class CSPTextStyle {
  CSPTextStyle._();

  static TextStyle textStyleSmall = TextStyle(
    color: CSPColors.textDarkColor,
    fontSize: CSPDimens.text12,
    fontWeight: FontWeight.normal,
  );

  static TextStyle textStyleNormal = TextStyle(
    color: CSPColors.textDarkColor,
    fontSize: CSPDimens.text12 + 2,
    fontWeight: FontWeight.normal,
  );

  static TextStyle textStyleMedium = TextStyle(
    color: CSPColors.textDarkColor,
    fontSize: CSPDimens.text18,
    fontWeight: FontWeight.normal,
  );

  static TextStyle textStyleLargest = TextStyle(
    color: CSPColors.textDarkColor,
    fontSize: CSPDimens.text24,
    fontWeight: FontWeight.normal,
  );

  static TextStyle textStyleSuperLargest = TextStyle(
    color: CSPColors.textDarkColor,
    fontSize: CSPDimens.text12 + 2,
    fontWeight: FontWeight.normal,
  );
}

// CENTER CONTAINER
class CenterContainer extends StatelessWidget {
  final Widget? child;
  final double width;
  final double height;
  final double padding;
  final double margin;

  const CenterContainer({
    Key? key,
    this.child,
    this.width = 100,
    this.height = 100,
    this.padding = CSPDimens.margin16,
    this.margin = CSPDimens.margin16,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: width,
        height: height,
        margin: EdgeInsets.all(margin),
        padding: EdgeInsets.all(padding),
        child: child,
      ),
    );
  }
}

class TextFormFieldAndTitle extends StatelessWidget {
  final String? title;
  final TextEditingController? controller;

  const TextFormFieldAndTitle({super.key, this.title, this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '$title',
          style: CSPTextStyle.textStyleNormal,
        ),
        UiUtil.verticalSpace8,
        CSPTextFormField(
          controller: controller,
        ),
      ],
    );
  }
}
