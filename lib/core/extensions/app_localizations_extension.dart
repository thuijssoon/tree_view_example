import 'package:flutter/widgets.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

/// {@template app_localizations_extension}
/// Extension on [BuildContext] to get localizations.
/// {@endtemplate}
extension AppLocalizationsExtension on BuildContext {
  /// {@macro app_localizations_extension}
  AppLocalizations get l10n => AppLocalizations.of(this)!;
}
