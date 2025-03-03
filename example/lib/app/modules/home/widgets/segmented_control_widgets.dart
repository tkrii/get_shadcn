import 'package:example/app/modules/home/controllers/home_controller.dart';
import 'package:example/generated/locales.g.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class SegmentedControlWidgets extends StatelessWidget {
  const SegmentedControlWidgets({super.key});

  @override
  Widget build(BuildContext context) => GetBuilder<HomeController>(
        builder: (controller) {
          const values = [
            LocaleKeys.first_item,
            LocaleKeys.second_item,
            LocaleKeys.third_item,
          ];

          return Collapsible(
            children: [
              CollapsibleTrigger(
                child: Text(LocaleKeys.segmented_control.tr)
                    .withPadding(vertical: Theme.of(context).radiusMd),
              ),
              CollapsibleContent(
                child: Tabs(
                  index: values.indexOf(controller.selected.value),
                  onChanged: (index) => controller.selected(values[index]),
                  children: values
                      .map(
                        (v) => TabChildWidget(
                          child: Text(v.tr),
                        ),
                      )
                      .toList(),
                ).center(),
              ),
            ],
          );
        },
      );
}
