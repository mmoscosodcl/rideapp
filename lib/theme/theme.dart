import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff004dbe),
      surfaceTint: Color(0xff0056d2),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff0063f0),
      onPrimaryContainer: Color(0xffedefff),
      secondary: Color(0xff455c99),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffa3bafd),
      onSecondaryContainer: Color(0xff304984),
      tertiary: Color(0xff185abf),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff6396ff),
      onTertiaryContainer: Color(0xff002e6e),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff93000a),
      surface: Color(0xfffaf8ff),
      onSurface: Color(0xff191b24),
      onSurfaceVariant: Color(0xff424655),
      outline: Color(0xff727787),
      outlineVariant: Color(0xffc2c6d8),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2e3039),
      inversePrimary: Color(0xffb2c5ff),
      primaryFixed: Color(0xffdae2ff),
      onPrimaryFixed: Color(0xff001848),
      primaryFixedDim: Color(0xffb2c5ff),
      onPrimaryFixedVariant: Color(0xff0040a1),
      secondaryFixed: Color(0xffdae2ff),
      onSecondaryFixed: Color(0xff001848),
      secondaryFixedDim: Color(0xffb2c5ff),
      onSecondaryFixedVariant: Color(0xff2c447f),
      tertiaryFixed: Color(0xffd9e2ff),
      onTertiaryFixed: Color(0xff001944),
      tertiaryFixedDim: Color(0xffafc6ff),
      onTertiaryFixedVariant: Color(0xff004299),
      surfaceDim: Color(0xffd8d9e5),
      surfaceBright: Color(0xfffaf8ff),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff2f3ff),
      surfaceContainer: Color(0xffecedf9),
      surfaceContainerHigh: Color(0xffe7e7f3),
      surfaceContainerHighest: Color(0xffe1e2ed),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff00317f),
      surfaceTint: Color(0xff0056d2),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff0063f0),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff19336d),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff546ba9),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff003378),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff3069cf),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff740006),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffcf2c27),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffaf8ff),
      onSurface: Color(0xff0e1119),
      onSurfaceVariant: Color(0xff313644),
      outline: Color(0xff4e5261),
      outlineVariant: Color(0xff686d7c),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2e3039),
      inversePrimary: Color(0xffb2c5ff),
      primaryFixed: Color(0xff0163f0),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff004dbe),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff546ba9),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff3b538e),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff3069cf),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff0050b5),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffc5c6d1),
      surfaceBright: Color(0xfffaf8ff),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff2f3ff),
      surfaceContainer: Color(0xffe7e7f3),
      surfaceContainerHigh: Color(0xffdbdce8),
      surfaceContainerHighest: Color(0xffd0d1dc),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff00286a),
      surfaceTint: Color(0xff0056d2),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff0042a6),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff0a2963),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff2e4782),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff002964),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff00459e),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff600004),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff98000a),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffaf8ff),
      onSurface: Color(0xff000000),
      onSurfaceVariant: Color(0xff000000),
      outline: Color(0xff272c39),
      outlineVariant: Color(0xff444957),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2e3039),
      inversePrimary: Color(0xffb2c5ff),
      primaryFixed: Color(0xff0042a6),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff002e77),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff2e4782),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff14306a),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff00459e),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff002f71),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffb7b8c3),
      surfaceBright: Color(0xfffaf8ff),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xffeff0fc),
      surfaceContainer: Color(0xffe1e2ed),
      surfaceContainerHigh: Color(0xffd3d4df),
      surfaceContainerHighest: Color(0xffc5c6d1),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffb2c5ff),
      surfaceTint: Color(0xffb2c5ff),
      onPrimary: Color(0xff002b73),
      primaryContainer: Color(0xff0063f0),
      onPrimaryContainer: Color(0xffedefff),
      secondary: Color(0xffb2c5ff),
      onSecondary: Color(0xff112d67),
      secondaryContainer: Color(0xff2c447f),
      onSecondaryContainer: Color(0xff9cb3f6),
      tertiary: Color(0xffafc6ff),
      onTertiary: Color(0xff002d6d),
      tertiaryContainer: Color(0xff6396ff),
      onTertiaryContainer: Color(0xff002e6e),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff11131b),
      onSurface: Color(0xffe1e2ed),
      onSurfaceVariant: Color(0xffc2c6d8),
      outline: Color(0xff8c90a1),
      outlineVariant: Color(0xff424655),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe1e2ed),
      inversePrimary: Color(0xff0056d2),
      primaryFixed: Color(0xffdae2ff),
      onPrimaryFixed: Color(0xff001848),
      primaryFixedDim: Color(0xffb2c5ff),
      onPrimaryFixedVariant: Color(0xff0040a1),
      secondaryFixed: Color(0xffdae2ff),
      onSecondaryFixed: Color(0xff001848),
      secondaryFixedDim: Color(0xffb2c5ff),
      onSecondaryFixedVariant: Color(0xff2c447f),
      tertiaryFixed: Color(0xffd9e2ff),
      onTertiaryFixed: Color(0xff001944),
      tertiaryFixedDim: Color(0xffafc6ff),
      onTertiaryFixedVariant: Color(0xff004299),
      surfaceDim: Color(0xff11131b),
      surfaceBright: Color(0xff363942),
      surfaceContainerLowest: Color(0xff0b0e16),
      surfaceContainerLow: Color(0xff191b24),
      surfaceContainer: Color(0xff1d1f28),
      surfaceContainerHigh: Color(0xff272a32),
      surfaceContainerHighest: Color(0xff32343d),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffd1dbff),
      surfaceTint: Color(0xffb2c5ff),
      onPrimary: Color(0xff00225c),
      primaryContainer: Color(0xff5b8cff),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffd1dbff),
      onSecondary: Color(0xff00225c),
      secondaryContainer: Color(0xff788fcf),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffd0dcff),
      onTertiary: Color(0xff002358),
      tertiaryContainer: Color(0xff6396ff),
      onTertiaryContainer: Color(0xff000619),
      error: Color(0xffffd2cc),
      onError: Color(0xff540003),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff11131b),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xffd8dbee),
      outline: Color(0xffadb1c3),
      outlineVariant: Color(0xff8c90a0),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe1e2ed),
      inversePrimary: Color(0xff0041a3),
      primaryFixed: Color(0xffdae2ff),
      onPrimaryFixed: Color(0xff000f32),
      primaryFixedDim: Color(0xffb2c5ff),
      onPrimaryFixedVariant: Color(0xff00317f),
      secondaryFixed: Color(0xffdae2ff),
      onSecondaryFixed: Color(0xff000f32),
      secondaryFixedDim: Color(0xffb2c5ff),
      onSecondaryFixedVariant: Color(0xff19336d),
      tertiaryFixed: Color(0xffd9e2ff),
      onTertiaryFixed: Color(0xff00102f),
      tertiaryFixedDim: Color(0xffafc6ff),
      onTertiaryFixedVariant: Color(0xff003378),
      surfaceDim: Color(0xff11131b),
      surfaceBright: Color(0xff42444d),
      surfaceContainerLowest: Color(0xff05070f),
      surfaceContainerLow: Color(0xff1b1d26),
      surfaceContainer: Color(0xff252830),
      surfaceContainerHigh: Color(0xff30323b),
      surfaceContainerHighest: Color(0xff3b3d47),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffedefff),
      surfaceTint: Color(0xffb2c5ff),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xffacc1ff),
      onPrimaryContainer: Color(0xff000926),
      secondary: Color(0xffedefff),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffacc1ff),
      onSecondaryContainer: Color(0xff000926),
      tertiary: Color(0xffecefff),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xffa9c2ff),
      onTertiaryContainer: Color(0xff000a24),
      error: Color(0xffffece9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffaea4),
      onErrorContainer: Color(0xff220001),
      surface: Color(0xff11131b),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xffffffff),
      outline: Color(0xffedefff),
      outlineVariant: Color(0xffbec2d4),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe1e2ed),
      inversePrimary: Color(0xff0041a3),
      primaryFixed: Color(0xffdae2ff),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xffb2c5ff),
      onPrimaryFixedVariant: Color(0xff000f32),
      secondaryFixed: Color(0xffdae2ff),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffb2c5ff),
      onSecondaryFixedVariant: Color(0xff000f32),
      tertiaryFixed: Color(0xffd9e2ff),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xffafc6ff),
      onTertiaryFixedVariant: Color(0xff00102f),
      surfaceDim: Color(0xff11131b),
      surfaceBright: Color(0xff4d5059),
      surfaceContainerLowest: Color(0xff000000),
      surfaceContainerLow: Color(0xff1d1f28),
      surfaceContainer: Color(0xff2e3039),
      surfaceContainerHigh: Color(0xff393b44),
      surfaceContainerHighest: Color(0xff444650),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }


  ThemeData theme(ColorScheme colorScheme) => ThemeData(
     useMaterial3: true,
     brightness: colorScheme.brightness,
     colorScheme: colorScheme,
     textTheme: textTheme.apply(
       bodyColor: colorScheme.onSurface,
       displayColor: colorScheme.onSurface,
     ),
     scaffoldBackgroundColor: colorScheme.background,
     canvasColor: colorScheme.surface,
  );


  List<ExtendedColor> get extendedColors => [
  ];
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
