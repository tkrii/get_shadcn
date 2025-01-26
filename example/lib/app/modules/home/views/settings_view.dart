import 'package:example/app/data/enums/elementary_color.dart';
import 'package:example/app/modules/home/controllers/home_controller.dart';
import 'package:example/generated/locales.g.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) => GetBuilder<HomeController>(
        builder: (controller) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(LocaleKeys.settings_theme_title.tr)
                  .h4()
                  .withPadding(vertical: Theme.of(context).radius),
              SurfaceCard(
                child: RadioGroup<ThemeMode>(
                  value: ThemeMode.values[controller.themeMode.value],
                  onChanged: (value) => controller.themeMode(value.index),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisSize: MainAxisSize.min,
                    children: ThemeMode.values
                        .map(
                          (e) => RadioItem(
                            value: e,
                            trailing: Text('settings_theme_${e.name}'.tr),
                          ),
                        )
                        .toList(),
                  ),
                ),
              ),
              Text(LocaleKeys.settings_color_accent.tr)
                  .h4()
                  .withPadding(vertical: Theme.of(context).radius),
              SurfaceCard(
                child: Wrap(
                  alignment: WrapAlignment.spaceAround,
                  children: ElementaryColor.values
                      .map(
                        (e) => Toggle(
                          value: controller.accent.value == e,
                          child: Icon(
                            RadixIcons.blendingMode,
                            color: e.accent,
                          ),
                          onChanged: (_) => controller.accent(e),
                        ),
                      )
                      .toList(),
                ),
              ),
              Text(LocaleKeys.settings_options.tr)
                  .h4()
                  .withPadding(vertical: Theme.of(context).radius),
              SurfaceCard(
                child: Column(
                  children: [
                    Switch(
                      leading: Text(LocaleKeys.settings_use_master_detail.tr)
                          .expanded(),
                      value: controller.masterDetail.value,
                      onChanged: controller.masterDetail,
                    ),
                    Switch(
                      leading:
                          Text(LocaleKeys.settings_high_contrast.tr).expanded(),
                      value: controller.contrast.value,
                      onChanged: controller.contrast,
                    ),
                  ],
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                ).gap(
                  Theme.of(context).radiusMd,
                ),
              ),
            ],
          ).withPadding(horizontal: Theme.of(context).radiusLg);
        },
      );
}
