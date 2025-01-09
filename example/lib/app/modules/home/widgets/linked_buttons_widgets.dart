import 'package:example/app/modules/home/controllers/home_controller.dart';
import 'package:example/generated/locales.g.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class LinkedButtonsWidgets extends StatelessWidget {
  const LinkedButtonsWidgets({super.key});

  @override
  Widget build(BuildContext context) => GetBuilder<HomeController>(
        builder: (controller) {
          return Collapsible(
            children: [
              CollapsibleTrigger(
                child: Text(LocaleKeys.linked_buttons.tr)
                    .withPadding(vertical: Theme.of(context).radiusMd),
              ),
              CollapsibleContent(
                child: ButtonGroup(
                  children: [
                    IconButton.secondary(
                      icon: const Icon(RadixIcons.plus),
                      onPressed: () {},
                    ),
                    Button.secondary(
                      child: Text(LocaleKeys.add.tr),
                      onPressed: () {},
                    ),
                    Button.secondary(
                      leading: const Icon(RadixIcons.plus),
                      child: Text(LocaleKeys.add.tr),
                      onPressed: () {},
                    ),
                    Button.secondary(
                      child: Text(LocaleKeys.add.tr),
                    ),
                    IconButton.primary(
                      icon: const Icon(RadixIcons.plus),
                      onPressed: () {},
                    ),
                  ],
                ).center(),
              ),
            ],
          );
        },
      );
}
