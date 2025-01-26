import 'package:flutter/foundation.dart' show Brightness;
import 'package:get_shadcn/src/color_extension.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class AdwaitaScheme {
  final Color primaryColor;
  final Color chart1;
  final Color chart2;
  final Color chart3;
  final Color chart4;
  final Color chart5;

  AdwaitaScheme({
    this.primaryColor = const Color(0xff3584e4),
    this.chart1 = const Color(0xff3a944a),
    this.chart2 = const Color(0xffed5b00),
    this.chart3 = const Color(0xffc88800),
    this.chart4 = const Color(0xffd56199),
    this.chart5 = const Color(0xff9141ac),
  });

  ColorScheme light({bool highContrast = false}) {
    const foreground = Color(0xff333236);

    return ColorScheme(
      brightness: Brightness.light,
      background: const Color(0xfffafafb),
      foreground: foreground,
      card: Colors.white,
      cardForeground: foreground,
      popover: Colors.white,
      popoverForeground: foreground,
      primary: primaryColor.standaloneLight,
      primaryForeground: const Color(0xfff3f3f5),
      secondary: Color.lerp(
        primaryColor.standaloneLight,
        Colors.white,
        0.75,
      )!
          .withValues(
        alpha: highContrast ? 0.4 : 0.5,
      ),
      secondaryForeground: foreground,
      muted: foreground.withValues(
        alpha: highContrast ? 0.5 : 0.15,
      ), // const Color(0xffebebed),
      mutedForeground: foreground.withValues(
        alpha: highContrast ? 0.9 : 0.55,
      ),
      ring: primaryColor,
      input: const Color(0xfffafafb),
      border: foreground.withValues(
        alpha: highContrast ? 0.5 : 0.15,
      ),
      destructive: const Color(0xffe01b24),
      destructiveForeground: Colors.white,
      accentForeground: foreground,
      accent: primaryColor.standaloneDark.withValues(
        alpha: highContrast ? 0.4 : 0.5,
      ),
      chart1: chart1,
      chart2: chart2,
      chart3: chart3,
      chart4: chart4,
      chart5: chart5,
    );
  }

  ColorScheme dark({bool highContrast = false}) {
    const foreground = Colors.white;

    return ColorScheme(
      brightness: Brightness.dark,
      background: const Color(0xff222226),
      foreground: foreground,
      card: const Color(0xff39393d),
      cardForeground: foreground,
      popover: const Color(0xff36363a),
      popoverForeground: foreground,
      primary: primaryColor.standaloneDark,
      primaryForeground: const Color(0xff28282c),
      secondary: Color.lerp(
        primaryColor.standaloneDark,
        const Color(0xff36363a),
        0.75,
      )!
          .withValues(
        alpha: highContrast ? 0.4 : 0.5,
      ),
      secondaryForeground: foreground,
      muted: foreground.withValues(
        alpha: highContrast ? 0.4 : 0.15,
      ), // const Color(0xff2e2e32),
      mutedForeground: foreground.withValues(
        alpha: highContrast ? 0.9 : 0.55,
      ),
      ring: primaryColor,
      input: const Color(0xff36363a),
      border: foreground.withValues(
        alpha: highContrast ? 0.4 : 0.15,
      ),
      destructive: const Color(0xffc01c28),
      destructiveForeground: Colors.white,
      accentForeground: foreground,
      accent: primaryColor.standaloneLight.withValues(
        alpha: highContrast ? 0.4 : 0.5,
      ),
      chart1: chart1,
      chart2: chart2,
      chart3: chart3,
      chart4: chart4,
      chart5: chart5,
    );
  }
}
