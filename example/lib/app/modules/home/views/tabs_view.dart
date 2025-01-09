import 'package:example/app/modules/home/controllers/home_controller.dart';
import 'package:example/generated/locales.g.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:get/route_manager.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class TabsView extends StatelessWidget {
  const TabsView({super.key});

  @override
  Widget build(BuildContext context) => GetBuilder<HomeController>(
        builder: (controller) {
          const content = Column();

          if (controller.masterDetail.value) {
            return Scaffold(
              headers: [
                AppBar(
                  leading: [
                    if (Get.previousRoute.isNotEmpty)
                      IconButton.ghost(
                        icon: const Icon(RadixIcons.arrowLeft),
                        onPressed: Get.back,
                      ),
                  ],
                  title: Text(LocaleKeys.tabs.tr),
                ),
              ],
              child: content,
            );
          } else {
            return content;
          }
        },
      );
}
