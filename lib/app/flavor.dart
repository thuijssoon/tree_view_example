/// The available build flavors
enum Flavor {
  /// Development
  dev,

  /// Production
  prod,

  /// Staging
  staging,
}

/// Container for the current app flavor.
class F {
  /// The app flavor
  static late Flavor flavor;
}

/// {@template flavor_config}
/// Flavor specific configuration values.
/// {@endtemplate}
class FlavorConfig<T> {
  /// {@macro flavor_config}
  const FlavorConfig({
    this.dev,
    this.prod,
    this.staging,
    this.fallback,
  }) : assert(
          // ignore: avoid_bool_literals_in_conditional_expressions
          dev == null || prod == null || staging == null
              ? fallback != null
              : true,
          '[fallback]cannot be null if there is one flavor whose value is null',
        );

  /// Value for development flavor
  final T? dev;

  /// Value for production flavor
  final T? prod;

  /// Value for staging flavor
  final T? staging;

  /// Fallback value
  final T? fallback;

  /// Get the value for the configured flavor.
  T get value {
    switch (F.flavor) {
      case Flavor.dev:
        return dev ?? fallback!;
      case Flavor.staging:
        return staging ?? fallback!;
      case Flavor.prod:
        return prod ?? fallback!;
    }
  }
}
