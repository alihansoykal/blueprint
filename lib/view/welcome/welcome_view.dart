import 'package:blueprint/core/view/components/adaptive_text.dart';
import 'package:flutter/material.dart';

import '../../core/init/lang/locale_keys.g.dart';
import '../../core/resources/resources.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(image: AssetImage(Images.blueprintLogoTransparent)),
            const SizedBox(height: 20),
            const AdaptiveText(text: LocaleKeys.welcome),
            const Text(
              'This is a welcome page',
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigate to Login Page
              },
              child: const Text('Login'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Navigate to Signup Page
              },
              child: const Text('Sign Up'),
            ),
          ],
        ),
      ),
    );
  }
}
