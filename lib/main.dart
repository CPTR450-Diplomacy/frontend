import 'package:flutter/material.dart';
import 'widgets/login.dart';
import 'widgets/main_menu.dart';
import 'widgets/game_screen.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => LoginRoute(),
      '/second': (context) => SecondRoute(),
      '/third': (context) => ThirdRoute(),
    },
  ));
}
