import 'package:example/app/modules/home/controllers/home_controller.dart';
import 'package:example/generated/locales.g.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class CheckboxWidgets extends StatelessWidget {
  const CheckboxWidgets({super.key});

  @override
  Widget build(BuildContext context) => GetBuilder<HomeController>(
        builder: (controller) {
          return Collapsible(
            children: [
              CollapsibleTrigger(
                child: Text(LocaleKeys.checkbox_widget.tr)
                    .withPadding(vertical: Theme.of(context).radiusMd),
              ),
              CollapsibleContent(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Checkbox(
                      state: CheckboxState.checked,
                      trailing: Basic(
                        title: Text(
                          LocaleKeys.checkbox_title.trArgs(
                            ['1'],
                          ),
                        ),
                      ).expanded(),
                      onChanged: null,
                    ),
                    Checkbox(
                      state: CheckboxState.indeterminate,
                      trailing: Basic(
                        title: Text(
                          LocaleKeys.checkbox_title.trArgs(
                            ['2'],
                          ),
                        ),
                        subtitle: Text(LocaleKeys.subtitle.tr),
                      ).expanded(),
                      onChanged: null,
                    ),
                    Checkbox(
                      state: CheckboxState.unchecked,
                      trailing: Basic(
                        title: Text(
                          LocaleKeys.checkbox_title.trArgs(
                            ['3'],
                          ),
                        ),
                        subtitle: Text(LocaleKeys.subtitle.tr),
                      ).expanded(),
                      onChanged: null,
                    ),
                  ],
                )
                    .gap(Theme.of(context).radiusSm)
                    .center()
                    .withPadding(horizontal: Theme.of(context).radiusLg),
              ),
            ],
          );
        },
      );
}
