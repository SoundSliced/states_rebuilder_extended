## 0.0.1
- Initial release.
- Extracted extensions and helpers from `custom_widgets.dart`:
  - Safer `update<T?>` and `update<T>`
  - Boolean `toggle()` for nullable and non-nullable
  - Multi-injected builders (`builder`, `builderState`, `builderData`, `builderDataIndexed`)
  - Tag-based selective rebuilds
  - `SafeRefresh`, `RebuildOnHotReloadMixin`
  - `InjectExtension` and `MyNull`
