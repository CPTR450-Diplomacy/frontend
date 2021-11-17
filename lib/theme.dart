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

//Main 7 country colors (first - fill & second - outline)

//Red: f0b097 & ed7648
//Orange: f4cf99 & f4a93c
//Yellow: f4dd99 & efc547
//Green: bfd19d & 8ac489
//Blue: b4ded9 & 7cc8d6
//Indigo: 999ff4 & 6770f3
//Violet: d399f4 & b64af3

//Map margins will be sand and the gray is an uninhabited country

//Sand: f6d8b2 & e1b174
//Gray: cbcbcb & 9a9a9a