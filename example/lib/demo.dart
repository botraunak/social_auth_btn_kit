import 'package:flutter/material.dart';
import 'package:social_auth_btn_kit/social_auth_btn_kit.dart';

class DemoPage extends StatelessWidget {
  const DemoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Social Auth Btn Kit Demo'),
      ),
      backgroundColor: Colors.white54,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: SocialAuthBtn.facebook(
                borderRadius: 0,
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
