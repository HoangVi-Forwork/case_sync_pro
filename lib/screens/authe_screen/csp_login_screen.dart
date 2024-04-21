// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors
import 'package:case_sync_pro/resource/csp_colors.dart';
import 'package:case_sync_pro/resource/csp_dimes.dart';
import 'package:case_sync_pro/resource/csp_drawable.dart';
import 'package:case_sync_pro/resource/csp_styles.dart';
import 'package:case_sync_pro/utils/ui_utils.dart';
import 'package:case_sync_pro/widgets/csp_text_form_field.dart';
import 'package:flutter/material.dart';
import '../../resource/csp_lang.dart';
import '../../widgets/csp_button_widget.dart';

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
      body: Container(
        padding: EdgeInsets.all(CSPDimens.margin12),
        margin: EdgeInsets.only(top: CSPDimens.margin100),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UiUtil.verticalSpace50,
            CSPTextFormField(
              hintText: CSPLanguage.enterEmail,
              hintStyle: CSPTextStyle.textStyleSmall,
            ),
            UiUtil.verticalSpace30,
            CSPTextFormField(
              hintText: CSPLanguage.enterPass,
              hintStyle: CSPTextStyle.textStyleSmall,
              suffixWidget: const Icon(Icons.remove_red_eye),
            ),
            UiUtil.verticalSpace8,
            CSPButtonWidget(
              type: CSPAppButtonType.linkText,
              disable: false,
              fullWidth: false,
              isLoading: false,
              label: CSPLanguage.forgotPassword,
            ),
            UiUtil.verticalSpace30,
            CSPButtonWidget(
              type: CSPAppButtonType.primary,
              disable: false,
              fullWidth: true,
              isLoading: false,
              label: CSPLanguage.login,
              onPressed: () {},
            ),
            UiUtil.verticalSpace8,
            CSPButtonWidget(
              type: CSPAppButtonType.linkText,
              disable: false,
              fullWidth: true,
              isLoading: false,
              label: CSPLanguage.registerQuestion,
            ),
          ],
        ),
      ),
    );
  }
}
