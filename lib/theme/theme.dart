
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quical/config/config.dart';
import 'package:quical/theme/textstyle.dart';

class AppTheme {
  static ThemeData get lightMode => ThemeData(
      splashColor: Colors.transparent,
      primaryColor: PsColors.mainColor,
      scaffoldBackgroundColor: PsColors.secondaryColor,
      primarySwatch: PsColors.primarySwatch,
      fontFamily: GoogleFonts.rubik().fontFamily,
      textTheme: TextTheme(
        displayLarge: AppTypography.normalTextStyle,
        displayMedium: AppTypography.mediumTextStyle,
        displaySmall: AppTypography.smallTextStyle,
        titleLarge: AppTypography.normalTextStyle,
        titleMedium: AppTypography.normalTextStyle,
        titleSmall: AppTypography.normalTextStyle,
      ));

  static ThemeData get darkTheme => ThemeData(
      splashColor: Colors.transparent,
      colorScheme: ColorScheme.dark(primary: PsColors.mainColor),
      scaffoldBackgroundColor: Colors.black,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      primaryColor: PsColors.mainColor,
      primarySwatch: PsColors.primarySwatch,
      fontFamily: GoogleFonts.rubik().fontFamily,
      textTheme: TextTheme(
        displayLarge: AppTypography.normalTextStyle,
        displayMedium: AppTypography.mediumTextStyle,
        displaySmall: AppTypography.smallTextStyle,
        titleLarge: AppTypography.normalTextStyle,
        titleMedium: AppTypography.normalTextStyle,
        titleSmall: AppTypography.normalTextStyle,
      ));
}
