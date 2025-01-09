import 'package:example/app/modules/home/bindings/home_binding.dart';
import 'package:example/app/modules/home/views/home_view.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: HomeView.new,
      binding: HomeBinding(),
    ),
  ];
}
