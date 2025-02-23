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
    card: Color.lerp(
      materialColorScheme.surfaceContainerLow,
      materialColorScheme.secondaryContainer,
      0.15,
    )!,
    cardForeground: materialColorScheme.onSurface,
    popover: Color.lerp(
      materialColorScheme.surfaceContainerHigh,
      materialColorScheme.tertiaryContainer,
      0.15,
    )!,
    popoverForeground: materialColorScheme.onSurface,
    primary: materialColorScheme.primary,
    primaryForeground: Color.lerp(
      materialColorScheme.secondaryContainer,
      materialColorScheme.surfaceContainerLowest,
      1 / 3,
    )!,
    secondary: materialColorScheme.primaryContainer,
    secondaryForeground: materialColorScheme.onSecondaryContainer,
    muted: Color.lerp(
      materialColorScheme.surfaceContainerHighest,
      materialColorScheme.secondaryContainer,
      0.25,
    )!,
    mutedForeground: materialColorScheme.onSurfaceVariant,
    accent: materialColorScheme.tertiaryContainer,
    accentForeground: Color.lerp(
      materialColorScheme.onTertiaryContainer,
      materialColorScheme.onSurfaceVariant,
      0.5,
    )!,
    destructive: materialColorScheme.error,
    destructiveForeground: materialColorScheme.onError,
    border: materialColorScheme.outlineVariant,
    input: materialColorScheme.surfaceContainerHigh,
    ring: Color.lerp(
      materialColorScheme.tertiary,
      materialColorScheme.outline,
      0.25,
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
