import 'package:blueprint/core/extensions/string_localization.dart';
import 'package:blueprint/core/init/lang/locale_keys.g.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(LocaleKeys.apply.locale),
      ),
    );
  }
}
