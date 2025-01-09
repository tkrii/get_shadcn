import 'package:example/app/modules/home/controllers/home_controller.dart';
import 'package:example/app/modules/home/views/hello_world_view.dart';
import 'package:example/app/modules/home/views/settings_view.dart';
import 'package:example/app/modules/home/views/tabs_view.dart';
import 'package:example/app/modules/home/views/typography_view.dart';
import 'package:example/app/modules/home/views/widgets_view.dart';
import 'package:example/generated/locales.g.dart';
import 'package:get/get.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class HomeView extends GetResponsiveView<HomeController> {
  HomeView({super.key});

  List<NavigationBarItem> get navigations => [
        NavigationButton(
          child: const Icon(RadixIcons.face),
          label: Text(LocaleKeys.greating_title.tr),
        ),
        NavigationButton(
          child: const Icon(RadixIcons.mix),
          label: Text(LocaleKeys.widgets.tr),
        ),
        NavigationButton(
          child: const Icon(RadixIcons.letterCaseCapitalize),
          label: Text(LocaleKeys.typography.tr),
        ),
        NavigationButton(
          child: const Icon(RadixIcons.button),
          label: Text(LocaleKeys.tabs.tr),
        ),
      ];

  Widget appbar({bool showDrawer = false}) => AppBar(
        leading: [
          if (showDrawer)
            IconButton.ghost(
              icon: const Icon(RadixIcons.hamburgerMenu),
              onPressed: () => openDrawer(
                expands: true,
                context: screen.context,
                builder: (context) => Obx(
                  () => NavigationSidebar(
                    index: controller.navigation.value,
                    onSelected: (value) {
                      controller.navigation(value);
                      closeDrawer(context);
                    },
                    children: navigations,
                  ),
                ),
                position: OverlayPosition.left,
              ),
            ),
        ],
        title: Text(LocaleKeys.simple_widget_gallery.tr),
        trailing: [
          IconButton.ghost(
            icon: const Icon(RadixIcons.gear),
            onPressed: () {
              if (screen.isPhone) {
                Get.to(
                  () => Scaffold(
                    headers: [
                      AppBar(
                        title: Text(LocaleKeys.settings_title.tr),
                        leading: [
                          IconButton.ghost(
                            icon: const Icon(RadixIcons.arrowLeft),
                            onPressed: Get.back,
                          ),
                        ],
                      ),
                    ],
                    child: const SingleChildScrollView(
                      child: SettingsView(),
                    ),
                  ),
                  routeName: '/settings',
                );
              } else {
                showDialog(
                  context: Get.overlayContext!,
                  builder: (context) => const SurfaceCard(
                    child: SettingsView(),
                  ).constrained(maxWidth: 600),
                );
              }
            },
          ),
        ],
      );

  Widget get masterView => Scaffold(
        headers: [
          appbar(),
        ],
        child: Obx(
          () => NavigationSidebar(
            index: controller.navigation.value,
            onSelected: (value) {
              controller.navigation(value);
              if (!screen.isDesktop) {
                Get.to(
                  () => children[value],
                  routeName: '/details',
                );
              }
            },
            children: navigations,
          ),
        ),
      );

  List<Widget> get children => const [
        HelloWorldView(),
        WidgetsView(),
        TypographyView(),
        TabsView(),
      ];

  @override
  Widget? phone() => Obx(
        () {
          if (controller.masterDetail.value) {
            return masterView;
          } else {
            return Scaffold(
              headers: [
                appbar(showDrawer: screen.context.isLandscape),
              ],
              child: children[controller.navigation.value],
              footers: [
                if (screen.isPhone && screen.context.isPortrait)
                  Obx(
                    () => NavigationBar(
                      index: controller.navigation.value,
                      onSelected: controller.navigation,
                      labelType: NavigationLabelType.tooltip,
                      children: navigations,
                    ),
                  ),
              ],
            );
          }
        },
      );
  @override
  Widget? tablet() => Obx(
        () {
          if (controller.masterDetail.value) {
            return masterView;
          } else {
            return Scaffold(
              headers: [
                appbar(showDrawer: true),
              ],
              child: children[controller.navigation.value],
            );
          }
        },
      );

  @override
  Widget? desktop() => Obx(
        () {
          if (controller.masterDetail.value) {
            return Scaffold(
              child: Row(
                children: [
                  masterView.constrained(
                    maxWidth: 320,
                  ),
                  Expanded(
                    child: children[controller.navigation.value],
                  ),
                ],
              ),
            );
          } else {
            return Scaffold(
              headers: [
                appbar(),
              ],
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  NavigationSidebar(
                    index: controller.navigation.value,
                    onSelected: controller.navigation,
                    children: navigations,
                  ).constrained(
                    maxWidth: 320,
                  ),
                  Expanded(
                    child: children[controller.navigation.value],
                  ),
                ],
              ),
            );
          }
        },
      );
}
