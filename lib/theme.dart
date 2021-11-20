import 'package:flutter/material.dart';

class CustomTheme {
  static ThemeData get defaultTheme {
    return ThemeData(
        brightness: Brightness.light,
        primaryColor: const Color(0xFFB9A37E),
        backgroundColor: const Color(0xFFFAFAFA),
        fontFamily: 'Akzidenz-grotesk',
        textTheme: const TextTheme(
          headline1: TextStyle(fontSize: 60.0, fontFamily: 'Behrensschrift'),
        ));
  }
}
