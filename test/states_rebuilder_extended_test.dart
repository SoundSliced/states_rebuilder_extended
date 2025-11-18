import 'package:flutter_test/flutter_test.dart';
import 'package:states_rebuilder_extended/states_rebuilder_extended.dart';

void main() {
  test('nullable update enforces explicit generic & works', () {
    final injected = MyNull.injectDisposable<int?>();
    injected.update<int?>((s) => (s ?? 0) + 1);
    expect(injected.state, 1);
  });

  test('non-nullable update works', () {
    final injected = 0.inject<int>();
    injected.update<int>((s) => s + 2);
    expect(injected.state, 2);
  });

  test('boolean toggle nullable', () {
    final flag = MyNull.injectDisposable<bool?>();
    flag.toggle();
    expect(flag.state, true);
    flag.toggle();
    expect(flag.state, false);
  });

  test('boolean toggle non-nullable', () {
    final flag = false.inject<bool>();
    flag.toggle();
    expect(flag.state, true);
  });

  test('multiple updateAll', () {
    final a = 1.inject<int>();
    final b = 2.inject<int>();
    [a, b].updateAll<int>((v) => v + 1);
    expect(a.state, 2);
    expect(b.state, 3);
  });

  test('MyNull inject returns null initially', () {
    final s = MyNull.injectDisposable<String?>();
    expect(s.state, isNull);
  });
}
