// Class that manages social auth methods
import 'package:flutter/material.dart';
import 'package:social_auth_btn_kit/social_auth_colors.dart';

enum ButtonTypes { google, facebook, apple }

enum ButtonModes { light, dark, neutral }

class SocialAuthMethod {
  const SocialAuthMethod({
    required this.text,
    required this.icon,
    this.backgroundColor = Colors.white,
    this.textColor = Colors.black,
  });

  factory SocialAuthMethod.get({
    required ButtonTypes type,
    ButtonModes mode = ButtonModes.light,
  }) {
    if (type == ButtonTypes.google) {
      const icon = 'assets/logos/google.png';
      final googleColors = GoogleColors.fromMode(mode: mode);
      return SocialAuthMethod(
        text: 'Sign in with Google',
        icon: icon,
        textColor: googleColors.lblColor,
        backgroundColor: googleColors.bgColor,
      );
    }
    if (type == ButtonTypes.facebook) {
      const icon = 'assets/logos/facebook.png';
      return const SocialAuthMethod(
        text: 'Login with Facebook',
        icon: icon,
        textColor: Colors.white,
        backgroundColor: facebookBgColorLight,
      );
    }
    if (type == ButtonTypes.apple) {
      const icon = 'assets/logos/apple.png';
      return const SocialAuthMethod(
        text: 'Sign in with Apple',
        icon: icon,
        textColor: Color(0xFF0E0E0E),
      );
    }
    throw Exception('Invalid Social Auth Method');
  }
  final String text;
  final String icon;
  final Color backgroundColor;
  final Color textColor;
}
