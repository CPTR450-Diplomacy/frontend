import 'package:flutter/material.dart';
//import 'package:glutenfreegenie/colors.dart';

class CustomTheme {
  //static const colors = AppColors();
  static ThemeData get defaultTheme {
    return ThemeData(
        colorScheme: const ColorScheme(
          primary: Color(0xFFB9A37E), //dark tan
          primaryVariant: Color(0xFFB9A37E),
          onPrimary: Colors.black,
          background: Color(0xFFFAFAFA), //light tan
          onBackground: Colors.black,
          brightness: Brightness.light,
          secondary: Color(0xfff6d8b2),
          secondaryVariant: Color(0xffe1b174),
          onSecondary: Colors.black,
          surface: Color(0xFFFAFAFA),
          onSurface: Colors.black,
          error: Colors.blue,
          onError: Colors.red,
        ),
        fontFamily: 'Akzidenz-grotesk',
        textTheme: const TextTheme(
            headline1: TextStyle(fontSize: 60.0, fontFamily: 'Behrensschrift'),
            headline2: TextStyle(
                //subheading
                fontSize: 32.0,
                fontFamily: 'Akzidenz-grotesk',
                fontWeight: FontWeight.bold),
            bodyText1: TextStyle(fontSize: 24.0, fontFamily: 'Village')));
  }
}

//Example
//color:AppTheme.colors.red

//https://www.youtube.com/watch?v=Ml0d8m8Pphg&ab_channel=BleylDev - colors reference

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