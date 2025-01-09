import 'package:example/app/modules/home/controllers/home_controller.dart';
import 'package:example/generated/locales.g.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class ButtonsWidgets extends StatelessWidget {
  const ButtonsWidgets({super.key});

  @override
  Widget build(BuildContext context) => GetBuilder<HomeController>(
        builder: (controller) {
          return Collapsible(
            children: [
              CollapsibleTrigger(
                child: Text(LocaleKeys.buttons.tr),
              ),
              CollapsibleContent(
                child: Wrap(
                  runSpacing: Theme.of(context).radiusMd,
                  spacing: Theme.of(context).radiusMd,
                  alignment: WrapAlignment.spaceEvenly,
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
                    Button.primary(
                      child: Text(LocaleKeys.add.tr),
                      onPressed: () {},
                    ),
                    Button.primary(
                      child: Text(LocaleKeys.add.tr),
                    ),
                    Button.ghost(
                      child: Text(LocaleKeys.add.tr),
                      onPressed: () {},
                    ),
                    Button.ghost(
                      child: Text(LocaleKeys.add.tr),
                    ),
                    IconButton.outline(
                      icon: const Icon(RadixIcons.dotsVertical),
                      onPressed: () => showDropdown(
                        context: context,
                        builder: (context) => DropdownMenu(
                          children: [
                            MenuButton(
                              child: Text(LocaleKeys.first_item.tr),
                              onPressed: (_) =>
                                  controller.selected(LocaleKeys.first_item),
                            ),
                            MenuButton(
                              child: Text(LocaleKeys.second_item.tr),
                              enabled: false,
                            ),
                            const MenuDivider(),
                            MenuButton(
                              child: Text(LocaleKeys.third_item.tr),
                              onPressed: (_) =>
                                  controller.selected(LocaleKeys.third_item),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Select<String>(
                      onChanged: controller.selected,
                      value: controller.selected.value,
                      itemBuilder: (context, item) => Text(item.tr),
                      children: [
                        SelectGroup.fixedOrder(
                          children: [
                            LocaleKeys.first_item,
                            LocaleKeys.second_item,
                            LocaleKeys.third_item,
                          ]
                              .map(
                                (i) => SelectItemButton(
                                  value: i,
                                  child: Text(i.tr),
                                ),
                              )
                              .toList(),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      );
}
