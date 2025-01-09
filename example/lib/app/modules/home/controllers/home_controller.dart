import 'package:example/app/data/enums/elementary_color.dart';
import 'package:example/generated/locales.g.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart' show SliderValue;

class HomeController extends GetxController {
  static HomeController get to => Get.find();
  final masterDetail = RxBool(false);
  final pushedButtonTimes = RxInt(0);
  final navigation = RxInt(0);
  final accent = Rx<ElementaryColor>(ElementaryColor.main);
  final themeMode = RxInt(0);
  final selected = RxString(LocaleKeys.first_item);
  final slider = Rx<SliderValue>(
    const SliderValue.single(0.5),
  );

  @override
  void onInit() {
    everAll(
      [
        selected,
        masterDetail,
        slider,
      ],
      (_) => update(),
    );
    ever(
      themeMode,
      (callback) {
        Get.changeThemeMode(
          ThemeMode.values[callback],
        );
        update();
      },
    );
    ever(
      accent,
      (callback) {
        final lightTheme = ThemeData(
          colorSchemeSeed: callback.accent,
          brightness: Brightness.light,
        );
        final darkTheme = ThemeData(
          colorSchemeSeed: callback.accent,
          brightness: Brightness.dark,
        );
        Get.rootController
          ..theme = lightTheme
          ..darkTheme = darkTheme
          ..update();
      },
    );
    super.onInit();
  }
}
