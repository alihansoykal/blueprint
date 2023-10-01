import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:blueprint/core/resources/resources.dart';

void main() {
  test('images assets test', () {
    expect(File(Images.blueprintLogo).existsSync(), true);
    expect(File(Images.blueprintLogoTransparent).existsSync(), true);
    expect(File(Images.circularLogo).existsSync(), true);
  });
}
