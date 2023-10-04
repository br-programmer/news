import 'package:flutter/material.dart';
import 'package:news_ui/news_ui.dart';

/// App Text Style Definitions
/// Source: https://m3.material.io/styles/typography/type-scale-tokens
abstract class AppTextStyle {
  static const _baseNunitoTextStyle = TextStyle(
    fontFamily: FontFamily.nunito,
    fontWeight: AppFontWeight.regular,
    letterSpacing: 0,
  );

  static const _baseNewYorkTextStyle = TextStyle(
    fontFamily: FontFamily.newYork,
    fontWeight: AppFontWeight.semiBold,
    letterSpacing: 0,
  );

  //#region Nunito
  /// Body small Text Style
  static TextStyle get bodySmall => _baseNunitoTextStyle.copyWith(
        fontSize: 12,
        fontWeight: AppFontWeight.light,
      );

  /// Label small Text Style
  static TextStyle get labelSmall => _baseNunitoTextStyle.copyWith(
        fontSize: 10,
      );

  /// Body medium Text Style (the default)
  static TextStyle get bodyMedium => _baseNunitoTextStyle.copyWith(
        fontSize: 14,
      );

  /// Label medium Style
  static TextStyle get labelMedium => _baseNunitoTextStyle.copyWith(
        fontSize: 12,
        fontWeight: AppFontWeight.semiBold,
      );

  /// Title small	Text Style
  static TextStyle get titleSmall => _baseNunitoTextStyle.copyWith(
        fontSize: 14,
        fontWeight: AppFontWeight.semiBold,
      );

  /// Display small Text Style
  static TextStyle get displaySmall => _baseNunitoTextStyle.copyWith(
        fontSize: 12,
        fontWeight: AppFontWeight.bold,
      );

  /// Title large Text Style
  static TextStyle get titleLarge => _baseNunitoTextStyle.copyWith(
        fontSize: 22,
        fontWeight: AppFontWeight.bold,
      );

  /// Display medium Text Style
  static TextStyle get displayMedium => _baseNunitoTextStyle.copyWith(
        fontSize: 10,
        fontWeight: AppFontWeight.extraBold,
      );

  /// Headline small Text Style
  static TextStyle get headlineSmall => _baseNunitoTextStyle.copyWith(
        fontSize: 16,
        fontWeight: AppFontWeight.extraBold,
      );

  /// Title medium Text Style
  static TextStyle get titleMedium => _baseNunitoTextStyle.copyWith(
        fontSize: 14,
        fontWeight: AppFontWeight.black,
      );
  //#endregion

  //#region New York Font
  /// Label large	 Style
  static TextStyle get labelLarge =>
      _baseNewYorkTextStyle.copyWith(fontSize: 14);

  /// Body large Text Style
  static TextStyle get bodyLarge => _baseNewYorkTextStyle.copyWith(
        fontSize: 16,
        fontWeight: AppFontWeight.bold,
      );

  //#endregion
}
