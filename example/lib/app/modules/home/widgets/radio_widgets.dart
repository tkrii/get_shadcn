import 'package:example/app/modules/home/controllers/home_controller.dart';
import 'package:example/generated/locales.g.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class RadioWidgets extends StatelessWidget {
  const RadioWidgets({super.key});

  @override
  Widget build(BuildContext context) => GetBuilder<HomeController>(
        builder: (controller) {
          return Collapsible(
            children: [
              CollapsibleTrigger(
                child: Text(LocaleKeys.radio_widget.tr)
                    .withPadding(vertical: Theme.of(context).radiusMd),
              ),
              RadioGroup<int>(
                value: 0,
                child: CollapsibleContent(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      RadioItem(
                        value: 0,
                        leading: Basic(
                          title: Text(
                            LocaleKeys.radio_title.trArgs(['1']),
                          ),
                        ).expanded(),
                      ),
                      RadioItem(
                        value: 1,
                        leading: Basic(
                          title: Text(
                            LocaleKeys.radio_title.trArgs(['2']),
                          ),
                          subtitle: Text(LocaleKeys.subtitle.tr),
                        ).expanded(),
                      ),
                    ],
                  )
                      .gap(Theme.of(context).radiusSm)
                      .center()
                      .withPadding(horizontal: Theme.of(context).radiusLg),
                ),
              ),
            ],
          );
        },
      );
}
