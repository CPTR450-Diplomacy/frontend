import 'theme.dart';
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
          bodyText1: TextStyle(fontSize: 24.0, fontFamily: 'Village')
        ));
  }
}

//Main 7 country colors (first - fill & second - outline)

//Red: FFf0b097 & FFed7648
//Orange: FFf4cf99 & FFf4a93c
//Yellow: FFf4dd99 & FFefc547
//Green: FFbfd19d & FF8ac489
//Blue: FFb4ded9 & FF7cc8d6
//Indigo: FF999ff4 & FF6770f3
//Violet: FFd399f4 & FFb64af3

//Map margins will be sand and the gray is an uninhabited country

//Sand: f6d8b2 & e1b174
//Gray: cbcbcb & 9a9a9a