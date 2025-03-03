import 'package:example/app/data/enums/elementary_color.dart';
import 'package:example/generated/locales.g.dart';
import 'package:get/get.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart' show SliderValue;

class HomeController extends GetxController {
  static HomeController get to => Get.find();
  final masterDetail = RxBool(false);
  final pushedButtonTimes = RxInt(0);
  final navigation = RxInt(1);
  final accent = Rx<ElementaryColor>(ElementaryColor.main);
  final themeMode = RxInt(0);
  final selected = RxString(LocaleKeys.first_item);
  final slider = Rx<SliderValue>(
    const SliderValue.single(0.5),
  );
  final contrast = RxBool(false);

  @override
  void onInit() {
    everAll(
      [
        selected,
        masterDetail,
        slider,
        themeMode,
        accent,
        contrast,
      ],
      (_) => update(),
    );
    super.onInit();
  }
}
