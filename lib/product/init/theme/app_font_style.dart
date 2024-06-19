import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppStyles {
  AppStyles._();

  static TextStyle latoTextStyle({
    double fontSize = 16,
    FontWeight fontWeight = FontWeight.w400,
  }) {
    return GoogleFonts.lato(
      fontSize: fontSize,
      fontWeight: FontWeight.bold,
      color: Colors.grey[700],
      height: 1.5,
    );
  }

  static TextStyle montserratTextStyle({
    double fontSize = 10,
    FontWeight fontWeight = FontWeight.w400,
  }) {
    return GoogleFonts.montserrat(
      fontSize: fontSize,
      fontWeight: fontWeight,
      height: 1.5,
    );
  }
  static TextStyle latoWhiteTextStyle({
    double fontSize = 16,
    FontWeight fontWeight = FontWeight.bold,
  }) {
    return GoogleFonts.lato(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: Colors.white,
    );
  }
}
