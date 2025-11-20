## 1.0.0-dev1 - 2025-11-20

**First pre-release!**

*Note: This is a pre-release version because it depends on `states_rebuilder: ^7.0.0-dev1`.*

### Features
- ✅ **Type-safe updates**: Safer `update<T?>` and `update<T>` methods with explicit generic enforcement
- ✅ **Boolean helpers**: `toggle()` for both nullable and non-nullable `Injected<bool>`
- ✅ **Multi-injected builders**: Listen to multiple injected instances simultaneously
  - `builder()` - Simple builder without state
  - `builderState()` - Builder with access to SnapState
  - `builderData()` - Data builder handling waiting/error/data states
  - `builderDataIndexed()` - Indexed data builder for lists
- ✅ **Tag-based rebuilds**: Selective notification and rebuilding with tags
- ✅ **Safe refresh**: `safeRefresh()` to ignore disposed injector exceptions
- ✅ **Hot reload mixin**: `RebuildOnHotReloadMixin` for reliable Flutter Web hot reload
- ✅ **Injection helpers**: `InjectExtension` and `MyNull` for concise injector creation
- ✅ **Comprehensive documentation**: Full API documentation and examples
- ✅ **Complete test coverage**: Unit tests for all core functionality

### Documentation
- Added comprehensive README with usage examples
- Added working example app demonstrating all features
- Added API documentation comments to all public members

### Breaking Changes
None - this is the first stable release

## 0.0.1 - 2025-11-18

**Initial development release**

- Initial extraction of extensions and helpers from internal codebase
- Basic implementations of core features
- Experimental API (not stable)
