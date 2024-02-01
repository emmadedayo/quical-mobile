import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class HelperStyle {
  HelperStyle._();

  static textStyle(
      BuildContext context, Color color, double fontSize, FontWeight weight,
      {double letterSpacing = 0.1, bool isJustify = false}) {
    return GoogleFonts.inter(
      textStyle: TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: weight,
        letterSpacing: letterSpacing,
      ),
    );
  }

  static textStyle2(
      BuildContext context, Color color, double fontSize, FontWeight weight,
      {double letterSpacing = 0.1, bool isJustify = false}) {
    return GoogleFonts.inter(
      textStyle: TextStyle(
        color: color,
        decoration: TextDecoration.lineThrough,
        decorationStyle: TextDecorationStyle.solid,
        fontSize: fontSize,
        fontWeight: weight,
        letterSpacing: letterSpacing,
      ),
    );
  }
}
