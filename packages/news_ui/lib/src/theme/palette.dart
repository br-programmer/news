import 'package:flutter/material.dart';

class Palette {
  const Palette._();

  static const Color primary = Color(0xFFFF3A44);
  static const Color primaryLight = Color(0xFFFF8086);
  static const Color secondary = Color(0xFF0080FF);
  static const Color tertiary = Color(0xFFFFE600);
  static const Color black = Color(0xFF000000);
  static const Color redDark = Color(0xFF2E0505);
  static const Color redLight = Color(0xFFFFB3B6);
  static const Color white = Color(0xFFFFFFFF);
  static const Color whiteLight = Color(0xFFF0F1FA);
  static const Color grey = Color(0xFFA6A6A6);
  static const Color greyDark = Color(0xFF818181);

  static const Color cardBackground = Color(0xFFF1EEEA);

  static const Color transparent = Colors.transparent;
  static const Color blue = Color(0xFF0080FF);

  static const colors = <Color>[
    primary,
    secondary,
    tertiary,
    black,
    redDark,
    white,
    whiteLight,
    transparent,
  ];

  static const LinearGradient redGradient = LinearGradient(
    colors: [primary, primaryLight],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}
