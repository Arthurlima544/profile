import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

@immutable
class AppTheme extends ThemeExtension<AppTheme> {
  final Color primaryColor;

  const AppTheme({
    this.primaryColor = const Color(0xFF356859),
  });

  ThemeData toThemeData() {
    final primaryTextTheme = GoogleFonts.lektonTextTheme();
    final secondaryTextTheme = GoogleFonts.montserratTextTheme();
    final textTheme = primaryTextTheme.copyWith(
        displaySmall: secondaryTextTheme.displaySmall);
    return ThemeData(useMaterial3: true, textTheme: textTheme);
  }

  @override
  ThemeExtension<AppTheme> copyWith({
    Color? primaryColor,
  }) =>
      AppTheme(
        primaryColor: primaryColor ?? this.primaryColor,
      );

  @override
  ThemeExtension<AppTheme> lerp(
      covariant ThemeExtension<AppTheme>? other, double t) {
    if (other is! AppTheme) {
      return this;
    }
    return AppTheme(
      primaryColor: Color.lerp(primaryColor, other.primaryColor, t)!,
    );
  }
}
