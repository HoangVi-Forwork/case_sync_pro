import 'package:case_sync_pro/resource/csp_dimes.dart';

import 'csp_colors.dart';
import 'package:flutter/material.dart';

// DATA THEME
final ThemeData appTheme = ThemeData(
  useMaterial3: true,
  appBarTheme: AppBarTheme(
    color: CSPColors.primaryColor,
  ),
  scaffoldBackgroundColor: CSPColors.backgroundDarkColor,
);

// TEXT STYLE
class CSPTextStyle {
  CSPTextStyle._();

  static TextStyle textStyleSmall = TextStyle(
    color: CSPColors.textColor,
    fontSize: CSPDimens.text12,
    fontWeight: FontWeight.normal,
  );

  static TextStyle textStyleNormal = TextStyle(
    color: CSPColors.textColor,
    fontSize: CSPDimens.text12 + 2,
    fontWeight: FontWeight.normal,
  );

  static TextStyle textStyleMedium = TextStyle(
    color: CSPColors.textColor,
    fontSize: CSPDimens.text18,
    fontWeight: FontWeight.normal,
  );

  static TextStyle textStyleLargest = TextStyle(
    color: CSPColors.textColor,
    fontSize: CSPDimens.text24,
    fontWeight: FontWeight.normal,
  );

  static TextStyle textStyleSuperLargest = TextStyle(
    color: CSPColors.textColor,
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
