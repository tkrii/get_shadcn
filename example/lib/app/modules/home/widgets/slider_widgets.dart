import 'package:example/app/modules/home/controllers/home_controller.dart';
import 'package:example/generated/locales.g.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class SliderWidgets extends StatelessWidget {
  const SliderWidgets({super.key});

  @override
  Widget build(BuildContext context) => GetBuilder<HomeController>(
        builder: (controller) {
          return Collapsible(
            children: [
              CollapsibleTrigger(
                child: Text(LocaleKeys.slider.tr)
                    .withPadding(vertical: Theme.of(context).radiusMd),
              ),
              CollapsibleContent(
                child: Slider(
                  value: controller.slider.value,
                  onChanged: controller.slider,
                  hintValue: controller.slider.value,
                ),
              ).withPadding(horizontal: Theme.of(context).radiusLg),
            ],
          );
        },
      );
}
