// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unused_element
import 'dart:math';
import 'package:case_sync_pro/resource/csp_colors.dart';
import 'package:case_sync_pro/resource/csp_dimes.dart';
import 'package:case_sync_pro/resource/csp_drawable.dart';
import 'package:case_sync_pro/resource/csp_lang.dart';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import '../../resource/csp_styles.dart';
import '../../utils/ui_utils.dart';
import 'package:flutter_animate/flutter_animate.dart';

class CSPSplashScreen extends StatelessWidget {
  const CSPSplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Column(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Animate(
                  effects: [
                    // Rotate effect with a slow, continuous animation
                    RotateEffect(
                      curve: Curves
                          .easeInCirc, // Adjust curve for different rotation behavior
                      end: 2.0 * pi, // Rotate 360 degrees (2 * pi radians)
                    ),
                  ],
                  child: Container(
                    width: CSPDimens.w125,
                    height: CSPDimens.w125,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      // borderRadius: BorderRadius.circular(CSPDimens.radiusButton),
                    ),
                    child: Image.asset(
                      CSPDrawable.appLogo,
                      width: CSPDimens.w125 - 5,
                      height: CSPDimens.w125 - 5,
                    ),
                  ),
                ),
                UiUtil.verticalSpace10,
                _buildSplashScreenTitle(),
                UiUtil.verticalSpace12,
                CenterContainer(
                  width: double.infinity,
                  margin: 0,
                  child: Center(
                    child: Text(
                      CSPLanguage.appDescription,
                      style: CSPTextStyle.textStyleMedium
                          .copyWith(color: Colors.white70),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 24),
            child: Center(
              child: LoadingAnimationWidget.dotsTriangle(
                color: CSPColors.textColor.withOpacity(0.6),
                size: 22,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSplashScreenTitle() {
    return Center(
      child: Text(
        CSPLanguage.appName,
        style:
            CSPTextStyle.textStyleLargest.copyWith(fontWeight: FontWeight.bold),
      ),
    );
  }
}
