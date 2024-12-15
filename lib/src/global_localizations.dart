import 'package:flutter/foundation.dart';
import 'package:get_shadcn/src/locales/spanish_localizations.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class GlobalShadcnLocalizations extends ShadcnLocalizationsDelegate {
  static const ShadcnLocalizationsDelegate delegate =
      GlobalShadcnLocalizations();
  const GlobalShadcnLocalizations();

  @override
  bool isSupported(Locale locale) => [
        'en',
        'es',
      ].contains(locale.languageCode);

  @override
  Future<ShadcnLocalizations> load(Locale locale) {
    if (locale.languageCode == 'es') {
      return SynchronousFuture<ShadcnLocalizations>(
        SpanishShadcnLocalizations.instance,
      );
    } else {
      return SynchronousFuture<ShadcnLocalizations>(
        DefaultShadcnLocalizations.instance,
      );
    }
  }

  @override
  bool shouldReload(ShadcnLocalizationsDelegate old) => false;
}
