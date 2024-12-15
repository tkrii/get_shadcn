import 'package:flutter/material.dart' as md;
import 'package:shadcn_flutter/shadcn_flutter.dart';

ColorScheme colorSchemeAdapter({
  md.ColorScheme? materialScheme,
  ThemeMode mode = ThemeMode.system,
  Color chart1 = const Color(0xff3689e6),
  Color chart2 = const Color(0xff68b723),
  Color chart3 = const Color(0xfff9c440),
  Color chart4 = const Color(0xfff37329),
  Color chart5 = const Color(0xffde3e80),
}) =>
    materialScheme == null
        ? ColorSchemes.neutral(mode)
        : ColorScheme(
            brightness: materialScheme.brightness,
            background: materialScheme.surface,
            foreground: materialScheme.onSurface,
            card: materialScheme.surfaceContainerLow,
            cardForeground: materialScheme.onSurface,
            popover: materialScheme.surfaceContainerHigh,
            popoverForeground: materialScheme.onSurface,
            primary: materialScheme.primary,
            primaryForeground: materialScheme.onPrimary,
            secondary: materialScheme.secondaryContainer,
            secondaryForeground: materialScheme.onSecondaryContainer,
            muted: materialScheme.surfaceContainerHighest,
            mutedForeground: materialScheme.onSurfaceVariant,
            accent: materialScheme.tertiaryContainer,
            accentForeground: materialScheme.onTertiaryContainer,
            destructive: materialScheme.error,
            destructiveForeground: materialScheme.onError,
            border: materialScheme.outlineVariant,
            input: materialScheme.surfaceContainerHigh,
            ring: materialScheme.outline,
            chart1: chart1,
            chart2: chart2,
            chart3: chart3,
            chart4: chart4,
            chart5: chart5,
          );

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
        materialScheme: materialTheme?.colorScheme,
      ),
      platform: materialTheme?.platform,
      radius: radius,
      scaling: scaling,
      typography: typography,
      iconTheme: iconTheme,
      surfaceOpacity: surfaceOpacity,
      surfaceBlur: surfaceBlur,
    );
