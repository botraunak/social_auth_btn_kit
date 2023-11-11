import 'package:flutter/material.dart';
import 'package:social_auth_btn_kit/social_auth_method.dart';

/// SocialAuthBtn
/// Base Btn which handles all social logins
class SocialAuthBtn extends StatelessWidget {
  const SocialAuthBtn({
    required this.method,
    required this.onPressed,
    this.width = 300,
    this.borderRadius = 8,
    super.key,
  });

  final SocialAuthMethod method;
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
          backgroundColor: method.backgroundColor,
        ),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            children: [
              Image.asset(
                method.icon,
                package: 'social_auth_btn_kit',
                width: 24,
              ),
              const SizedBox(width: 24),
              Expanded(
                child: Text(
                  method.text,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: method.textColor,
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
