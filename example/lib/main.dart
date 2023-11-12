import 'package:flutter/material.dart';
import 'package:social_auth_btn_kit/social_auth_btn_kit.dart';
import 'package:social_auth_btn_kit/social_auth_btn_variants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Social Auth Btn Kit Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Social Auth Btn Kit Demo'),
        ),
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: [
              Center(
                child: SocialAuthBtn.facebook(
                  variant: FacebookTypeVariants.outlined,
                  onPressed: () {
                    debugPrint("DEBUG: Facebook Btn Pressed");
                  },
                  loading: true,
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
                child: SocialAuthBtn.google(
                  onPressed: () {
                    debugPrint("DEBUG: Google Btn Pressed");
                  },
                  theme: GoogleThemeVariants.dark,
                ),
              ),
              const SizedBox(height: 16),
              Center(
                child: SocialAuthBtn.google(
                  onPressed: () {
                    debugPrint("DEBUG: Google Btn Pressed");
                  },
                  theme: GoogleThemeVariants.neutral,
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
              const SizedBox(height: 16),
              Center(
                child: SocialAuthBtn.apple(
                  onPressed: () {
                    debugPrint("DEBUG: Apple Btn Pressed");
                  },
                  variant: AppleTypeVariants.outlined,
                ),
              ),
              const SizedBox(height: 16),
              Center(
                child: SocialAuthBtn.apple(
                  onPressed: () {
                    debugPrint("DEBUG: Apple Btn Pressed");
                  },
                  theme: AppleThemeVariants.black,
                ),
              ),
              const SizedBox(height: 16),
              Center(
                child: SocialAuthBtn(
                  onPressed: () {
                    debugPrint("DEBUG: Instagram Btn Pressed");
                  },
                  icon: 'assets/instagram.png',
                  text: 'Connect Instagram',
                  borderSide: const BorderSide(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
