import 'package:flutter/material.dart' as md;
import 'package:shadcn_flutter/shadcn_flutter.dart';

ColorScheme colorSchemeAdapter({
  Color? accent,
  md.ColorScheme? materialColorScheme,
  md.DynamicSchemeVariant schemeVariant = md.DynamicSchemeVariant.tonalSpot,
  md.Brightness brightness = md.Brightness.light,
  Color chart1 = const Color(0xff3689e6),
  Color chart2 = const Color(0xff68b723),
  Color chart3 = const Color(0xfff9c440),
  Color chart4 = const Color(0xfff37329),
  Color chart5 = const Color(0xffde3e80),
}) {
  assert(
    (accent == null && materialColorScheme != null) ||
        (accent != null && materialColorScheme == null) ||
        (accent == null && materialColorScheme == null),
  );

  if (materialColorScheme == null && accent == null) {
    return ColorSchemes.neutral(
      ThemeMode.values.byName(brightness.name),
    );
  }
  final scheme = materialColorScheme ??
      md.ColorScheme.fromSeed(
        seedColor: accent!,
        dynamicSchemeVariant: schemeVariant,
        brightness: brightness,
      );

  return ColorScheme(
    brightness: scheme.brightness,
    background: scheme.surface,
    foreground: scheme.onSurface,
    card: scheme.surfaceContainerLow,
    cardForeground: scheme.onSurface,
    popover: scheme.surfaceContainerHigh,
    popoverForeground: scheme.onSurface,
    primary: scheme.primary,
    primaryForeground: Color.lerp(
      scheme.onPrimary,
      scheme.primaryContainer,
      0.5,
    )!,
    secondary: scheme.primaryContainer,
    secondaryForeground: scheme.onPrimaryContainer,
    muted: scheme.surfaceContainerHighest,
    mutedForeground: scheme.outline,
    accent: Color.lerp(
        Color.lerp(
          scheme.surfaceContainerHigh,
          scheme.primaryContainer,
          0.5,
        ),
        scheme.surfaceContainerLowest,
        0.5)!,
    accentForeground: Color.lerp(
      scheme.onSurfaceVariant,
      scheme.onPrimaryContainer,
      0.75,
    )!,
    destructive: scheme.error,
    destructiveForeground: scheme.onError,
    border: scheme.outlineVariant,
    input: scheme.surfaceContainerHigh,
    ring: Color.lerp(
      scheme.primary,
      scheme.inversePrimary,
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
      ),
      platform: materialTheme?.platform,
      radius: radius,
      scaling: scaling,
      typography: typography,
      iconTheme: iconTheme,
      surfaceOpacity: surfaceOpacity,
      surfaceBlur: surfaceBlur,
    );
