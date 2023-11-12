import 'package:flutter/material.dart';
import 'package:social_auth_btn_kit/social_auth_btn_kit.dart';
import 'package:social_auth_btn_kit/social_auth_btn_variants.dart';

class DemoPage extends StatelessWidget {
  const DemoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Social Auth Btn Kit Demo'),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: SocialAuthBtn.facebook(
                variant: FacebookTypeVariants.outlined,
                onPressed: () {
                  debugPrint("DEBUG: Facebook Btn Pressed");
                },
              ),
            ),
            const SizedBox(height: 16),
            Center(
              child: SocialAuthBtn.facebook(
                onPressed: () {
                  debugPrint("DEBUG: Facebook Btn Pressed");
                },
              ),
            ),
            const SizedBox(height: 16),
            Center(
              child: SocialAuthBtn.facebook(
                theme: FacebookThemeVariants.dark,
                onPressed: () {
                  debugPrint("DEBUG: Facebook Btn Pressed");
                },
              ),
            ),
            const SizedBox(height: 16),
            Center(
              child: SocialAuthBtn.facebook(
                variant: FacebookTypeVariants.outlined,
                theme: FacebookThemeVariants.dark,
                onPressed: () {
                  debugPrint("DEBUG: Facebook Btn Pressed");
                },
              ),
            ),
            const SizedBox(height: 16),
            Center(
              child: SocialAuthBtn.google(
                onPressed: () {
                  debugPrint("DEBUG: Google Btn Pressed");
                },
              ),
            ),
            const SizedBox(height: 16),
            Center(
              child: SocialAuthBtn.apple(
                onPressed: () {
                  debugPrint("DEBUG: Apple Btn Pressed");
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
