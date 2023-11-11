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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SocialAuthBtn(
            method: SocialAuthMethod.get(type: ButtonTypes.facebook),
            onPressed: () {
              debugPrint("DEBUG: Google Btn Pressed");
            },
          ),
        ],
      ),
    );
  }
}
