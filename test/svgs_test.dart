import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:blueprint/app/resources/resources.dart';

void main() {
  test('svgs assets test', () {
    expect(File(Svgs.blueprintLogo).existsSync(), true);
  });
}
