import 'package:flutter/material.dart';
import 'package:social_auth_btn_kit/social_auth_btn_variants.dart';
import 'package:social_auth_btn_kit/social_auth_colors.dart';

/// SocialAuthBtn
/// Base Btn which handles all social logins
class SocialAuthBtn extends StatelessWidget {
  const SocialAuthBtn({
    required this.text,
    required this.onPressed,
    required this.icon,
    this.iconColor,
    this.textColor = Colors.black,
    this.backgroundColor = Colors.white,
    this.width = 300,
    this.borderRadius = 8,
    this.borderSide = BorderSide.none,
    super.key,
  });

  /// Creates a new instance of `SocialAuthBtn` for Facebook.
  ///
  /// The [onPressed] parameter must not be null.
  /// This is the callback that will be called when the button is pressed.
  ///
  /// The [width] parameter defaults to 300. This is the width of the button.
  ///
  /// The [variant] parameter defaults to `FacebookTypeVariants.normal`.
  /// This determines the type of Facebook button to display.
  ///
  /// The [theme] parameter defaults to `FacebookThemeVariants.light`.
  /// This determines the theme of the Facebook button.
  ///
  /// The [borderRadius] parameter defaults to 8.
  /// This is the border radius of the button.
  ///
  /// The button's border, background color, text color, and icon color
  /// are determined based on the [variant] and [theme] parameters.
  ///
  /// Returns a `SocialAuthBtn` configured for Facebook.
  factory SocialAuthBtn.facebook({
    required VoidCallback onPressed,
    double width = 300,
    FacebookTypeVariants variant = FacebookTypeVariants.normal,
    FacebookThemeVariants theme = FacebookThemeVariants.light,
    double borderRadius = 8,
  }) {
    final isDark = theme == FacebookThemeVariants.dark;
    var borderSide = BorderSide.none;
    var backgroundColor = isDark ? Colors.black : facebookBrandColor;
    var textColor = Colors.white;

    Color? iconColor;
    if (variant == FacebookTypeVariants.outlined) {
      borderSide = BorderSide(
        color: isDark ? Colors.black : facebookBrandColor,
      );
      backgroundColor = Colors.white;
      textColor = isDark ? Colors.black : facebookBrandColor;
      iconColor = isDark ? Colors.black : facebookBrandColor;
    }
    return SocialAuthBtn(
      text: 'Login in with Facebook',
      icon: 'assets/logos/facebook_white.png',
      iconColor: iconColor,
      onPressed: onPressed,
      width: width,
      borderRadius: borderRadius,
      backgroundColor: backgroundColor,
      textColor: textColor,
      borderSide: borderSide,
    );
  }

  /// Creates a new instance of `SocialAuthBtn` for Google.
  ///
  /// The [onPressed] parameter must not be null.
  /// This is the callback that will be called when the button is pressed.
  ///
  /// The [theme] parameter defaults to `GoogleThemeVariants.light`.
  /// This determines the theme of the Google button.
  ///
  /// The [width] parameter defaults to 300. This is the width of the button.
  ///
  /// The [borderRadius] parameter defaults to 8.
  /// This is the border radius of the button.
  ///
  /// The button's border, background color, text color, and icon color
  /// are determined based on the [theme] parameter.
  ///
  /// Returns a `SocialAuthBtn` configured for Google.
  factory SocialAuthBtn.google({
    required VoidCallback onPressed,
    GoogleThemeVariants theme = GoogleThemeVariants.light,
    double width = 300,
    double borderRadius = 8,
  }) {
    var backgroundColor = googleBgColorLight;
    var textColor = googleLblColorLight;
    var borderSide = BorderSide.none;

    if (theme == GoogleThemeVariants.light) {
      borderSide = const BorderSide(
        color: googleBorderColorLight,
      );
    }

    if (theme == GoogleThemeVariants.dark) {
      borderSide = const BorderSide(
        color: googleBorderColorDark,
      );
      backgroundColor = googleBgColorDark;
      textColor = googleLblColorDark;
    }

    if (theme == GoogleThemeVariants.neutral) {
      backgroundColor = googleBgColorNeutral;
      textColor = googleLblColorNeutral;
    }

    return SocialAuthBtn(
      text: 'Sign in with Google',
      icon: 'assets/logos/google.png',
      onPressed: onPressed,
      width: width,
      borderRadius: borderRadius,
      borderSide: borderSide,
      backgroundColor: backgroundColor,
      textColor: textColor,
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
  final Color? iconColor;
  final Color backgroundColor;
  final Color textColor;
  final double width;
  final double borderRadius;
  final BorderSide borderSide;
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
            side: borderSide,
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
                color: iconColor,
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
