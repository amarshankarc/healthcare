
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/painting/text_style.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle poppins (
    {FontStyle? fontStyle,
    Color? color,
    double? textSize,
    FontWeight? fontWeight,
    double? letterSpacing,
    TextDecoration? decoration,
    double? spacing}) {
  return GoogleFonts.montserrat(
      height: spacing,
      color: color ?? Colors.black,
      fontSize: textSize ?? 15,
      fontWeight: fontWeight ?? FontWeight.normal,
      letterSpacing: letterSpacing,
      decoration: decoration);
}
