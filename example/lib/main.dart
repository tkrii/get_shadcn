import 'package:example/app/data/enums/elementary_color.dart';
import 'package:example/app/routes/app_pages.dart';
import 'package:example/generated/locales.g.dart';
import 'package:flutter/material.dart' as md;
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get_shadcn/get_shadcn.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

void main() {
  final lightTheme = md.ThemeData(
    colorSchemeSeed: ElementaryColor.main.accent,
    brightness: md.Brightness.light,
  );
  final darkTheme = md.ThemeData(
    colorSchemeSeed: ElementaryColor.main.accent,
    brightness: md.Brightness.dark,
  );

  Get.rootController
    ..theme = lightTheme
    ..darkTheme = darkTheme
    ..update();

  runApp(
    GetShadcnApp(
      locale: const Locale('es'),
      localizationsDelegates: const [
        GlobalShadcnLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en'),
        Locale('es'),
      ],
      translationsKeys: AppTranslation.translations,
      title: 'GetShadcn Example',
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
