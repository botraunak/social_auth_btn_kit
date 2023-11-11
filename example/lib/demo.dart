import 'package:flutter/material.dart';
import 'package:social_auth_btn_kit/social_auth_btn_kit.dart';
import 'package:social_auth_btn_kit/social_auth_method.dart';

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
              child: SocialAuthBtn(
                method: SocialAuthMethod.get(type: ButtonTypes.facebook),
                borderRadius: 25,
                onPressed: () {
                  debugPrint("DEBUG: Google Btn Pressed");
                },
              ),
            ),
            const SizedBox(height: 16),
            Center(
              child: SocialAuthBtn(
                method: SocialAuthMethod.get(type: ButtonTypes.google),
                onPressed: () {
                  debugPrint("DEBUG: Google Btn Pressed");
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
