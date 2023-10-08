import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../extensions/string_localization.dart';

final class AdaptiveText extends StatelessWidget {
  final String text;
  final TextStyle? style;
  const AdaptiveText({super.key, required this.text, this.style});

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      text.locale,
      style: style,
      textAlign: TextAlign.center,
    );
  }
}
