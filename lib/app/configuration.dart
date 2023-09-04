import 'package:equatable/equatable.dart';
import 'package:tree_view_example/app/flavor.dart';

/// Base Config in App
class AppConfig {

  /// Global `stringify` setting for all `Equatable` instances.
  ///
  /// If `stringify` is overridden for a particular `Equatable` instance,
  /// then the local `stringify` value takes precedence
  /// over `AppConfig.stringify`.
  ///
  /// This value defaults to true in debug mode and false in release mode.
  static FlavorConfig<bool> autoStringifyEquatable = const FlavorConfig<bool>(
    dev: true,
    fallback: false,
  );

  /// Initialize the configuration.
  static Future<void> init() async {
    EquatableConfig.stringify = AppConfig.autoStringifyEquatable.value;
  }
}
