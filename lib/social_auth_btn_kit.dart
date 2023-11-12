import 'package:flutter/material.dart';
import 'package:social_auth_btn_kit/social_auth_colors.dart';

/// SocialAuthBtn
/// Base Btn which handles all social logins
class SocialAuthBtn extends StatelessWidget {
  const SocialAuthBtn({
    required this.text,
    required this.onPressed,
    required this.icon,
    this.textColor = Colors.black,
    this.backgroundColor = Colors.white,
    this.width = 300,
    this.borderRadius = 8,
    super.key,
  });

  factory SocialAuthBtn.facebook({
    required VoidCallback onPressed,
    double width = 300,
    double borderRadius = 8,
  }) {
    return SocialAuthBtn(
      text: 'Login in with Facebook',
      icon: 'assets/logos/facebook.png',
      onPressed: onPressed,
      width: width,
      borderRadius: borderRadius,
      backgroundColor: facebookBgColorLight,
      textColor: facebookLblColorLight,
    );
  }

  factory SocialAuthBtn.google({
    required VoidCallback onPressed,
    double width = 300,
    double borderRadius = 8,
  }) {
    return SocialAuthBtn(
      text: 'Sign in with Google',
      icon: 'assets/logos/google.png',
      onPressed: onPressed,
      width: width,
      borderRadius: borderRadius,
      backgroundColor: googleBgColorLight,
      textColor: googleLblColorLight,
    );
  }

  factory SocialAuthBtn.apple({
    required VoidCallback onPressed,
    double width = 300,
    double borderRadius = 8,
    Key? key,
  }) {
    return SocialAuthBtn(
      text: 'Sign in with Apple',
      icon: 'assets/logos/apple.png',
      onPressed: onPressed,
      width: width,
      borderRadius: borderRadius,
      key: key,
      textColor: appleLblColorLight,
    );
  }

  final String text;
  final String icon;
  final Color backgroundColor;
  final Color textColor;
  final double width;
  final double borderRadius;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          elevation: 0,
          backgroundColor: backgroundColor,
        ),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            children: [
              Image.asset(
                icon,
                package: 'social_auth_btn_kit',
                width: 24,
              ),
              const SizedBox(width: 24),
              Expanded(
                child: Text(
                  text,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: textColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
