<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

Flutter UI Components for adding social sign in buttons in your project following the brand guidlines of each social provider.
Social Sign in is a part of almost every app and this makes it easier to add buttons quickly.

## Features


## Getting started


## Usage


```dart
SocialAuthBtn(
                method: SocialAuthMethod.get(type: ButtonTypes.facebook),
                borderRadius: 25,
                onPressed: () {
                  debugPrint("DEBUG: Facebook Btn Pressed");
                },
              ),
```

## Additional information

