import 'dart:ui';
import 'package:flutter/material.dart';

Color hexToColor(String hex) {
  assert(RegExp(r'^#([0-9a-fA-F]{6})|([0-9a-fA-F]{8})$').hasMatch(hex),
      'hex color must be #rrggbb or #rrggbbaa');

  return Color(
    int.parse(hex.substring(1), radix: 16) +
        (hex.length == 7 ? 0xff000000 : 0x00000000),
  );
}

class AppColors {
  static Color backgroundScaffold = hexToColor('#409bbc');
  static Color primary = Colors.amber;
  static Color secondary = hexToColor('#5E92F3');
  static Color title = hexToColor('#e8f2f9');
  static Color subtitle = Colors.white60;
  static Color black = hexToColor('#101d2b');

//  gray #374351
}
