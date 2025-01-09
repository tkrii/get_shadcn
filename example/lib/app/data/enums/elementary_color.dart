import 'package:shadcn_flutter/shadcn_flutter.dart';

enum ElementaryColor {
  strawberry(Color(0xffc6262e)),
  orange(Color(0xfff37329)),
  banana(Color(0xfff9c440)),
  lime(Color(0xff68b723)),
  mint(Color(0xff28bca3)),
  blueberry(Color(0xff3689e6)),
  grape(Color(0xffa56de2)),
  bubblegum(Color(0xffde3e80)),
  latte(Color(0xffcfa25e)),
  cocoa(Color(0xff715344)),
  ;

  final Color accent;
  const ElementaryColor(this.accent);

  static ElementaryColor get main => ElementaryColor.blueberry;
}
