import 'package:flutter/material.dart';
import 'package:social_auth_btn_kit/social_auth_btn_variants.dart';
import 'package:social_auth_btn_kit/social_auth_colors.dart';

/// SocialAuthBtn
/// Base Btn which handles all social logins
class SocialAuthBtn extends StatelessWidget {
  /// Creates a new instance of `SocialAuthBtn`.
  /// The [onPressed] parameter must not be null.
  /// This is the callback that will be called when the button is pressed.
  /// The [text] parameter must not be null.
  /// This is the text that will be displayed on the button.
  /// The [icon] parameter must not be null.
  /// This is the icon that will be displayed on the button.
  /// The [iconColor] parameter defaults to `null`.
  /// This is the color of the icon.
  /// The [textColor] parameter defaults to `Colors.black`.
  /// This is the color of the text.
  /// The [backgroundColor] parameter defaults to `Colors.white`.
  /// This is the background color of the button.
  /// The [width] parameter defaults to 300.
  /// This is the width of the button.
  /// The [borderRadius] parameter defaults to 8.
  /// This is the border radius of the button.
  /// The [borderSide] parameter defaults to `BorderSide.none`.
  /// This is the border side of the button.
  /// The [loading] parameter defaults to `false`.
  /// This determines whether to show a loading indicator on the button.
  /// The [loaderColor] parameter defaults to `null`.
  /// This is the color of the loading indicator.
  const SocialAuthBtn({
    required this.text,
    required this.onPressed,
    required this.icon,
    this.iconColor,
    this.package,
    this.textColor = Colors.black,
    this.backgroundColor = Colors.white,
    this.width = 300,
    this.borderRadius = 8,
    this.borderSide = BorderSide.none,
    this.loading = false,
    this.loaderColor,
    super.key,
  });

  /// Creates a new instance of `SocialAuthBtn` for Facebook.
  ///
  /// The [onPressed] parameter must not be null.
  /// This is the callback that will be called when the button is pressed.
  ///
  /// The [variant] parameter defaults to `FacebookTypeVariants.normal`.
  /// This determines the type of Facebook button to display.
  ///
  /// The [theme] parameter defaults to `FacebookThemeVariants.light`.
  /// This determines the theme of the Facebook button.
  ///
  /// The button's border, background color, text color, and icon color
  /// are determined based on the [variant] and [theme] parameters.
  ///
  /// The [width] parameter defaults to 300. This is the width of the button.
  ///
  /// The [borderRadius] parameter defaults to 8.
  /// This is the border radius of the button.
  ///
  /// Returns a `SocialAuthBtn` configured for Facebook.
  factory SocialAuthBtn.facebook({
    required VoidCallback onPressed,
    FacebookTypeVariants variant = FacebookTypeVariants.normal,
    FacebookThemeVariants theme = FacebookThemeVariants.light,
    double width = 300,
    double borderRadius = 8,
    bool loading = false,
    Color? loaderColor,
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
      icon: 'assets/logos/facebook.png',
      iconColor: iconColor,
      onPressed: onPressed,
      width: width,
      borderRadius: borderRadius,
      backgroundColor: backgroundColor,
      textColor: textColor,
      borderSide: borderSide,
      package: 'social_auth_btn_kit',
      loading: loading,
      loaderColor: loaderColor,
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
  /// The button's border, background color, text color, and icon color
  /// are determined based on the [theme] parameter.
  ///
  /// The [width] parameter defaults to 300. This is the width of the button.
  ///
  /// The [borderRadius] parameter defaults to 8.
  /// This is the border radius of the button.
  ///
  /// Returns a `SocialAuthBtn` configured for Google.
  factory SocialAuthBtn.google({
    required VoidCallback onPressed,
    GoogleThemeVariants theme = GoogleThemeVariants.light,
    double width = 300,
    double borderRadius = 8,
    bool loading = false,
    Color? loaderColor,
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
      package: 'social_auth_btn_kit',
      loading: loading,
      loaderColor: loaderColor,
    );
  }

  /// Creates a new instance of `SocialAuthBtn` for Apple.
  ///
  /// The [onPressed] parameter must not be null.
  /// This is the callback that will be called when the button is pressed.
  ///
  /// The [theme] parameter defaults to `AppleThemeVariants.white`.
  /// This determines the theme of the Apple button.
  ///
  /// The [variant] parameter defaults to `AppleTypeVariants.normal`.
  /// This determines the type of Apple button to display.
  ///
  ///
  factory SocialAuthBtn.apple({
    required VoidCallback onPressed,
    AppleThemeVariants theme = AppleThemeVariants.white,
    AppleTypeVariants variant = AppleTypeVariants.normal,
    double width = 300,
    double borderRadius = 8,
    bool loading = false,
    Color? loaderColor,
    Key? key,
  }) {
    var borderSide = BorderSide.none;

    var txtColor = appleLblColorLight;
    var bgColor = Colors.white;
    Color? iconColor;

    if (theme == AppleThemeVariants.black) {
      txtColor = Colors.white;
      bgColor = Colors.black;
      iconColor = Colors.white;
    }

    if (variant == AppleTypeVariants.outlined) {
      borderSide = const BorderSide();
    }

    return SocialAuthBtn(
      text: 'Sign in with Apple',
      icon: 'assets/logos/apple.png',
      iconColor: iconColor,
      onPressed: onPressed,
      width: width,
      borderRadius: borderRadius,
      borderSide: borderSide,
      key: key,
      textColor: txtColor,
      backgroundColor: bgColor,
      loading: loading,
      loaderColor: loaderColor,
      package: 'social_auth_btn_kit',
    );
  }

  final String text;
  final String icon;
  final String? package;
  final Color? iconColor;
  final Color backgroundColor;
  final Color textColor;
  final double width;
  final double borderRadius;
  final BorderSide borderSide;
  final VoidCallback onPressed;
  final bool loading;
  final Color? loaderColor;

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
          child: loading
              ? Center(
                  child: SizedBox(
                    width: 18,
                    height: 18,
                    child: CircularProgressIndicator(
                      backgroundColor: loaderColor,
                    ),
                  ),
                )
              : Row(
                  children: [
                    Image.asset(
                      icon,
                      package: package,
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
