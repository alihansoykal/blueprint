import 'package:blueprint/core/extensions/string_localization.dart';
import 'package:blueprint/view/home/home_view.dart';
import 'package:flutter/material.dart';

import '../../core/init/lang/locale_keys.g.dart';
import '_product/_widgets/button/language_switcher.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.appName.locale),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            children: <Widget>[
              const LanguageSwitcher(),
              const SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  labelText: LocaleKeys.username.locale,
                  border: const OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 10),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: LocaleKeys.password.locale,
                  border: const OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const HomeView(),
                    ),
                  );
                },
                child: Text(LocaleKeys.loginTitle.locale),
              ),
              const SizedBox(height: 20),
              Text(LocaleKeys.confirm.locale),
            ],
          ),
        ),
      ),
    );
  }
}
