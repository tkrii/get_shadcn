import 'package:example/app/modules/home/controllers/home_controller.dart';
import 'package:example/generated/locales.g.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class TypographyView extends StatelessWidget {
  const TypographyView({super.key});

  @override
  Widget build(BuildContext context) => GetBuilder<HomeController>(
        builder: (controller) {
          final content = SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(LocaleKeys.lorem.tr).h1(),
                Text(LocaleKeys.lorem.tr).h2(),
                Text(LocaleKeys.lorem.tr).h3(),
                Text(LocaleKeys.lorem.tr).h4(),
                Text(LocaleKeys.lorem.tr).lead(),
                Text(LocaleKeys.lorem.tr).black(),
                Text(LocaleKeys.lorem.tr).extraBold(),
                Text(LocaleKeys.lorem.tr).bold(),
                Text(LocaleKeys.lorem.tr).semiBold(),
                Text(LocaleKeys.lorem.tr).light(),
                Text(LocaleKeys.lorem.tr).thin(),
                Text(LocaleKeys.lorem.tr).extraLight(),
                Text(LocaleKeys.lorem.tr).sans(),
                Text(LocaleKeys.lorem.tr).mono(),
                Text(LocaleKeys.lorem.tr).muted(),
                Text(LocaleKeys.lorem.tr).inlineCode(),
                Text(LocaleKeys.lorem.tr).xLarge(),
                Text(LocaleKeys.lorem.tr).large(),
                Text(LocaleKeys.lorem.tr).normal(),
                Text(LocaleKeys.lorem.tr).small(),
                Text(LocaleKeys.lorem.tr).xSmall(),
              ],
            )
                .constrained(maxWidth: 720)
                .withPadding(horizontal: Theme.of(context).radiusLg),
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
                  title: Text(LocaleKeys.typography.tr),
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
