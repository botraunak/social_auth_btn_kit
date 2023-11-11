import 'package:flutter/material.dart';
import 'package:social_auth_btn_kit/social_auth_method.dart';

const googleBgColorLight = Color(0xFFFFFFFF);
const googleBgColorDark = Color(0xFF131314);
const googleBgColorNeutral = Color(0xFFF2F2F2);

const googleLblColorLight = Color(0xFF1F1F1F);
const googleLblColorDark = Color(0xFFE3E3E3);
const googleLblColorNeutral = Color(0xFF1F1F1F);

const facebookBgColorLight = Color(0xFF1877F2);

class GoogleColors {
  const GoogleColors({
    required this.bgColor,
    required this.lblColor,
  });

  factory GoogleColors.fromMode({required ButtonModes mode}) {
    switch (mode) {
      case ButtonModes.light:
        return const GoogleColors(
          bgColor: googleBgColorLight,
          lblColor: googleLblColorLight,
        );
      case ButtonModes.dark:
        return const GoogleColors(
          bgColor: googleBgColorDark,
          lblColor: googleLblColorDark,
        );
      case ButtonModes.neutral:
        return const GoogleColors(
          bgColor: googleBgColorNeutral,
          lblColor: googleLblColorNeutral,
        );
    }
  }

  final Color bgColor;
  final Color lblColor;
}
