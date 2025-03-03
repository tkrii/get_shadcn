import 'package:flutter/material.dart' as md;
import 'package:shadcn_flutter/shadcn_flutter.dart';

ColorScheme? colorSchemeAdapter({
  md.ColorScheme? materialColorScheme,
  Color chart1 = const Color(0xff3689e6),
  Color chart2 = const Color(0xff68b723),
  Color chart3 = const Color(0xfff9c440),
  Color chart4 = const Color(0xfff37329),
  Color chart5 = const Color(0xffde3e80),
}) {
  if (materialColorScheme == null) {
    return null;
  }

  return ColorScheme(
    brightness: materialColorScheme.brightness,
    background: materialColorScheme.surface,
    foreground: materialColorScheme.onSurface,
    card: materialColorScheme.surfaceContainer,
    cardForeground: materialColorScheme.onSurface,
    popover: materialColorScheme.surfaceContainerLow,
    popoverForeground: materialColorScheme.onSurface,
    primary: materialColorScheme.primary,
    primaryForeground: materialColorScheme.secondaryContainer,
    secondary: materialColorScheme.primaryContainer,
    secondaryForeground: materialColorScheme.onPrimaryContainer,
    muted: materialColorScheme.surfaceContainerHighest,
    mutedForeground: materialColorScheme.onSurfaceVariant,
    accent: materialColorScheme.tertiaryContainer,
    accentForeground: materialColorScheme.onTertiaryContainer,
    destructive: materialColorScheme.error,
    destructiveForeground: materialColorScheme.errorContainer,
    border: materialColorScheme.outlineVariant,
    input: materialColorScheme.surfaceContainerHigh,
    ring: materialColorScheme.outline,
    chart1: chart1,
    chart2: chart2,
    chart3: chart3,
    chart4: chart4,
    chart5: chart5,
  );
}

ThemeData themeAdapter({
  md.ThemeData? materialTheme,
  double radius = 0.5,
}) =>
    ThemeData(
      colorScheme: colorSchemeAdapter(
        materialColorScheme: materialTheme?.colorScheme,
      )!,
      platform: materialTheme?.platform,
      radius: radius,
    );
