import 'package:flutter/material.dart';

import '../../core/init/lang/locale_keys.g.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(LocaleKeys.appName),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            const TextField(
              decoration: InputDecoration(
                labelText: LocaleKeys.loginUsername,
                errorText: LocaleKeys.loginErrorUsername,
              ),
            ),
            const SizedBox(height: 20),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: LocaleKeys.loginPassword,
                errorText: LocaleKeys.loginErrorPassword,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              child: const Text(LocaleKeys.loginButton),
            ),
            TextButton(
              onPressed: () {},
              child: const Text(LocaleKeys.loginForgotPassword),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(LocaleKeys.loginCreateAccount),
                TextButton(
                  onPressed: () {},
                  child: const Text(LocaleKeys.signUp),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
