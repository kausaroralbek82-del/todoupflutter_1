import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_app_1/main.dart';

void main() {
  test('app exposes the DalaAI root widget and theme constants', () {
    expect(const DalaAIApp(), isA<DalaAIApp>());
    expect(kGreen.toARGB32(), isNonZero);
    expect(kBg.toARGB32(), isNonZero);
    expect(kText.toARGB32(), isNonZero);
  });
}
