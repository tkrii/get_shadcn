import 'package:example/app/modules/home/controllers/home_controller.dart';
import 'package:example/generated/locales.g.dart';
import 'package:get/get.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class HelloWorldView extends StatelessWidget {
  const HelloWorldView({super.key});

  @override
  Widget build(BuildContext context) => GetBuilder<HomeController>(
        builder: (controller) {
          final content = Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                LocaleKeys.greating_pressed.trArgs(
                  [
                    controller.pushedButtonTimes.value.toString(),
                  ],
                ),
              ).lead().withPadding(
                    all: Theme.of(context).radiusLg,
                  ),
              Tooltip(
                child: IconButton.primary(
                  density: ButtonDensity.iconComfortable,
                  shape: ButtonShape.circle,
                  icon: const Icon(RadixIcons.plus),
                  onPressed: () {
                    controller.pushedButtonTimes(
                        controller.pushedButtonTimes.value + 1);
                    controller.update();
                  },
                ),
                tooltip: TooltipContainer(
                  child: Text(LocaleKeys.greating_press.tr),
                ),
              ),
            ],
          )
              .constrained(
                maxWidth: 720,
              )
              .center();

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
                  title: Text(LocaleKeys.greating_title.tr),
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
