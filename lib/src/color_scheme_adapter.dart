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
    card: materialColorScheme.surfaceContainerLow,
    cardForeground: materialColorScheme.onSurface,
    popover: materialColorScheme.surfaceContainerHigh,
    popoverForeground: materialColorScheme.onSurface,
    primary: materialColorScheme.primary,
    primaryForeground: Color.lerp(
      materialColorScheme.surfaceContainer,
      materialColorScheme.onPrimary,
      0.25,
    )!,
    secondary: materialColorScheme.secondaryContainer,
    secondaryForeground: materialColorScheme.onSecondaryContainer,
    muted: materialColorScheme.surfaceContainerHighest,
    mutedForeground: materialColorScheme.onSurfaceVariant,
    accent: materialColorScheme.tertiaryContainer,
    accentForeground: Color.lerp(
      materialColorScheme.onSurfaceVariant,
      materialColorScheme.onTertiaryContainer,
      0.75,
    )!,
    destructive: materialColorScheme.error,
    destructiveForeground: materialColorScheme.onError,
    border: materialColorScheme.outlineVariant,
    input: materialColorScheme.surfaceContainerHigh,
    ring: Color.lerp(
      materialColorScheme.primary,
      materialColorScheme.inversePrimary,
      0.5,
    )!,
    chart1: chart1,
    chart2: chart2,
    chart3: chart3,
    chart4: chart4,
    chart5: chart5,
  );
}

ThemeData themeAdapter({
  md.ThemeData? materialTheme,
  double radius = 1,
  double scaling = 1,
  Typography typography = const Typography.geist(),
  IconThemeProperties iconTheme = const IconThemeProperties(),
  double? surfaceOpacity,
  double? surfaceBlur,
}) =>
    ThemeData(
      colorScheme: colorSchemeAdapter(
        materialColorScheme: materialTheme?.colorScheme,
      )!,
      platform: materialTheme?.platform,
      radius: radius,
      scaling: scaling,
      typography: typography,
      iconTheme: iconTheme,
      surfaceOpacity: surfaceOpacity,
      surfaceBlur: surfaceBlur,
    );
