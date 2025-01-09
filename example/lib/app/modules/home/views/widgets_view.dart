import 'package:example/app/modules/home/controllers/home_controller.dart';
import 'package:example/app/modules/home/widgets/buttons_widgets.dart';
import 'package:example/app/modules/home/widgets/checkbox_widgets.dart';
import 'package:example/app/modules/home/widgets/linked_buttons_widgets.dart';
import 'package:example/app/modules/home/widgets/list_tile_widgets.dart';
import 'package:example/app/modules/home/widgets/radio_widgets.dart';
import 'package:example/app/modules/home/widgets/segmented_control_widgets.dart';
import 'package:example/app/modules/home/widgets/slider_widgets.dart';
import 'package:example/app/modules/home/widgets/switch_widgets.dart';
import 'package:example/generated/locales.g.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:get/route_manager.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class WidgetsView extends StatelessWidget {
  const WidgetsView({super.key});

  @override
  Widget build(BuildContext context) => GetBuilder<HomeController>(
        builder: (controller) {
          const content = Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ButtonsWidgets(),
              LinkedButtonsWidgets(),
              SegmentedControlWidgets(),
              CheckboxWidgets(),
              RadioWidgets(),
              SwitchWidgets(),
              ListTileWidgets(),
              SliderWidgets(),
            ],
          );

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
                  title: Text(LocaleKeys.widgets.tr),
                ),
              ],
              child: SingleChildScrollView(
                child: content.constrained(maxWidth: 720).center(),
              ),
            );
          } else {
            return SingleChildScrollView(
              child: content.constrained(maxWidth: 720).center(),
            );
          }
        },
      );
}
