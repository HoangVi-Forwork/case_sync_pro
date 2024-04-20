// ignore_for_file: use_key_in_widget_constructors
import 'package:case_sync_pro/resource/csp_colors.dart';
import 'package:case_sync_pro/resource/csp_dimes.dart';
import 'package:case_sync_pro/resource/csp_drawable.dart';
import 'package:case_sync_pro/resource/csp_styles.dart';
import 'package:case_sync_pro/utils/ui_utils.dart';
import 'package:flutter/material.dart';

import '../../resource/csp_lang.dart';

class CSPLoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CSPColors.backgroundLightColor,
      appBar: AppBar(
        backgroundColor: CSPColors.backgroundLightColor,
        centerTitle: true,
        title: Image.asset(
          CSPDrawable.appLogo,
          width: CSPDimens.w50 + 6,
          height: CSPDimens.w50 + 6,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(CSPDimens.margin12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UiUtil.verticalSpace50,
            const TextFormFieldAndTitle(title: CSPLanguage.enterEmail),
            UiUtil.verticalSpace30,
            const TextFormFieldAndTitle(title: CSPLanguage.enterPass),
            UiUtil.verticalSpace16,
            TextButton(
              onPressed: () {},
              child: Text(
                CSPLanguage.forgotPassword,
                style: CSPTextStyle.textStyleNormal.copyWith(
                  color: Colors.blueAccent,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            UiUtil.verticalSpace30,
            ElevatedButton(
              onPressed: () {},
              child: Center(
                child: Text(
                  CSPLanguage.login,
                  style: CSPTextStyle.textStyleMedium,
                ),
              ),
            ),
            UiUtil.verticalSpace16,
            OutlinedButton(
              onPressed: () {},
              child: const Center(
                child: Text(CSPLanguage.register),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
