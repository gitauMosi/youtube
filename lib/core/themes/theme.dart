import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// The [AppTheme] defines light and dark themes for the app.
///
/// Theme setup for FlexColorScheme package v8.
/// Use same major flex_color_scheme package version. If you use a
/// lower minor version, some properties may not be supported.
/// In that case, remove them after copying this theme to your
/// app or upgrade package to version 8.1.0.
///
/// Use in [MaterialApp] like this:
///
/// MaterialApp(
///   theme: AppTheme.light,
///   darkTheme: AppTheme.dark,
///     :
/// );
abstract final class AppTheme {
  // The defined light theme.
  static ThemeData light = FlexThemeData.light(
    colors: const FlexSchemeColor(
      primary: Color(0xFFCC0000), // YouTube Red
      primaryContainer: Color(0xFFFFCDD2), // Light Red
      secondary: Color(0xFF606060), // Dark Gray
      secondaryContainer: Color(0xFFE0E0E0), // Light Gray
      tertiary: Color(0xFF202020), // Almost Black
      tertiaryContainer: Color(0xFFF1F1F1), // Off White
      appBarColor: Color(0xFFFFFFFF), // White
      error: Color(0xFFD32F2F), // Error Red
      errorContainer: Color(0xFFFFCDD2), // Light Red
    ),
    subThemesData: const FlexSubThemesData(
      interactionEffects: true,
      tintedDisabledControls: true,
      useM2StyleDividerInM3: true,
      inputDecoratorIsFilled: true,
      inputDecoratorBorderType: FlexInputBorderType.outline,
      alignedDropdown: true,
      navigationRailUseIndicator: true,
      navigationRailLabelType: NavigationRailLabelType.all,
    ),
    visualDensity: FlexColorScheme.comfortablePlatformDensity,
    cupertinoOverrideTheme: const CupertinoThemeData(applyThemeToAll: true),
  );

  // The defined dark theme.
  static ThemeData dark = FlexThemeData.dark(
    colors: const FlexSchemeColor(
      primary: Color(0xFFFF0000), // Bright Red
      primaryContainer: Color(0xFFB71C1C), // Dark Red
      secondary: Color(0xFFAAAAAA), // Light Gray
      secondaryContainer: Color(0xFF444444), // Dark Gray
      tertiary: Color(0xFF000000), // Black
      tertiaryContainer: Color(0xFF121212), // Dark Background
      appBarColor: Color(0xFF202020), // Dark Gray
      error: Color(0xFFCF6679), // Error Pink
      errorContainer: Color(0xFFB00020), // Dark Error Red
    ),
    subThemesData: const FlexSubThemesData(
      interactionEffects: true,
      tintedDisabledControls: true,
      blendOnColors: true,
      useM2StyleDividerInM3: true,
      inputDecoratorIsFilled: true,
      inputDecoratorBorderType: FlexInputBorderType.outline,
      alignedDropdown: true,
      navigationRailUseIndicator: true,
      navigationRailLabelType: NavigationRailLabelType.all,
    ),
    visualDensity: FlexColorScheme.comfortablePlatformDensity,
    cupertinoOverrideTheme: const CupertinoThemeData(applyThemeToAll: true),
  );
}