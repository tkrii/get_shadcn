import 'package:example/app/modules/home/controllers/home_controller.dart';
import 'package:example/app/routes/app_pages.dart';
import 'package:example/generated/locales.g.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:get_shadcn/get_shadcn.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

void main() {
  runApp(
    GetBuilder<HomeController>(
      init: HomeController(),
      builder: (controller) => GetShadcnApp(
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
        themeMode: ThemeMode.values[controller.themeMode.value],
        theme: ThemeData(
          colorScheme: AdwaitaScheme(
            primaryColor: controller.accent.value.accent,
          ).light(
            highContrast: controller.contrast.value,
          ),
          radius: 0.75,
        ),
        darkTheme: ThemeData(
          colorScheme: AdwaitaScheme(
            primaryColor: controller.accent.value.accent,
          ).dark(
            highContrast: controller.contrast.value,
          ),
          radius: 0.75,
        ),
        translationsKeys: AppTranslation.translations,
        title: 'GetShadcn Example',
        initialRoute: AppPages.INITIAL,
        getPages: AppPages.routes,
      ),
    ),
  );
}
