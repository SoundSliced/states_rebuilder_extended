# states_rebuilder_extended

Package providing ergonomic extensions and helpers layered on top of the state management package [`states_rebuilder`](https://pub.dev/packages/states_rebuilder).

## Features
- Safer `update<T?>` and `update<T>` methods enforcing explicit generics.
- Boolean `toggle()` for nullable and non-nullable `Injected<bool>`.
- Multi-injected builders (`builder`, `builderState`, `builderData`, `builderDataIndexed`).
- Tag-based selective rebuilds (notify & rebuild only widgets with matching tag).
- `SafeRefresh` to silence refresh calls on disposed injectors in release builds.
- `RebuildOnHotReloadMixin` for reliable Web hot reload state rebinding.
- `InjectExtension` & `MyNull` shortcuts for concise injector creation.

## Quick Start
```dart
import 'package:states_rebuilder/states_rebuilder.dart';
import 'package:states_rebuilder_extended/states_rebuilder_extended.dart';

// Create an injected controller from a value
final counter = 0.inject<int>();

// Update safely (explicit generic!)
void increment() {
  counter.update<int?>((c) => (c ?? 0) + 1);
}

// Toggle boolean
final isDark = false.inject<bool>();
void toggleTheme() => isDark.toggle();

// Nullable injection with MyNull
final selectedUser = MyNull.injectDisposable<String?>();

// Builder example
Widget buildCounter() => counter.builderData<int?>((value) => Text('Count: ${value ?? 0}'));
```

## Multi Builder Example
```dart
final a = 1.inject<int>();
final b = 2.inject<int>();

Widget buildSum() => [a, b].builderData((data) {
  final sum = (data[0] as int) + (data[1] as int);
  return Text('Sum: $sum');
});
```

## Tag Based Rebuilds
```dart
void fastUpdate() {
  counter.update<int?>((c) => (c ?? 0) + 1, tag: 'counterOnly');
}

Widget buildTagged() => counter.builder(
  () => Text('Tagged: ${counter.state}'),
  tag: 'counterOnly',
);
```

## Hot Reload Mixin
```dart
class MyWidget extends StatefulWidget { /* ... */ }
class _MyWidgetState extends State<MyWidget> with RebuildOnHotReloadMixin {
  // Holds Injected refs; hot reload safely rebinds.
}
```

## Safe Refresh
```dart
counter.safeRefresh(); // Will ignore if already disposed
```

## License
MIT (or specify). Update as appropriate.

## Repository

https://github.com/SoundSliced/states_rebuilder_extended
