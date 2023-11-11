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
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Center(child: SocialAuthBtn())],
      ),
    );
  }
}
