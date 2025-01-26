import 'dart:math';
import 'dart:ui';

import 'package:okcolor/models/extensions.dart';
import 'package:okcolor/models/oklab.dart';

extension AdwaitaColorExtension on Color {
  Color get standaloneLight {
    final ok = toOkLab();
    return OkLab(
      min(ok.L, 0.5),
      ok.a,
      ok.b,
    ).toColor();
  }

  Color get standaloneDark {
    final ok = toOkLab();
    return OkLab(
      max(ok.L, 0.85),
      ok.a,
      ok.b,
    ).toColor();
  }
}
