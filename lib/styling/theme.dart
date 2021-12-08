import 'package:flutter/material.dart';
import 'package:frontend/styling/colors.dart';

class CustomTheme {
  static const colors = AppColors();
  static ThemeData get defaultTheme {
    return ThemeData(
        brightness: Brightness.light,
        fontFamily: 'Akzidenz-grotesk',
        textTheme: const TextTheme(
          headline2: TextStyle(fontSize: 60.0, fontFamily: 'Centaur'),
          headline3: TextStyle(
              //subheading
              fontSize: 24.0,
              fontFamily: 'Akzidenz-grotesk',
              fontWeight: FontWeight.bold),
          headline4: TextStyle(fontSize: 38.0, fontFamily: 'Centaur'),
          bodyText1: TextStyle(fontSize: 24.0, fontFamily: 'Akzidenz-grotesk'),
        ),
        appBarTheme: const AppBarTheme(
          titleTextStyle: TextStyle(fontSize: 38.0, fontFamily: 'Centaur'),
          toolbarTextStyle: TextStyle(fontSize: 66.0, fontFamily: 'Camelot'),
          backgroundColor: Color(0xffe1b174),
        ));
  }
}

//Examples of using theme data
//color: CustomTheme.defaultTheme.colors.red
//TextStyle: CustomTheme.defaultTheme.textTheme.bodyText1




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