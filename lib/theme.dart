import 'package:flutter/material.dart';

class CustomTheme {
  static ThemeData get defaultTheme {
    return ThemeData(
        primaryColor: const Color(0xFFB9A37E),
        scaffoldBackgroundColor: const Color(0xFFD1BE9D),
        fontFamily: 'Behrensschrift',
        buttonTheme: ButtonThemeData(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
          buttonColor: const Color(0xFF3B727C),
        ),
        bannerTheme: const MaterialBannerThemeData(
          backgroundColor: Color(0xFF3B727C),
        ));
  }
}
