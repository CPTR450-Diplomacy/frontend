import 'package:flutter/material.dart';
import 'widgets/login/login.dart';
import 'widgets/main_menu/main_menu.dart';
import 'widgets/game_screen/game_screen.dart';
import 'widgets/main_menu/profile_settings.dart';
import 'widgets/chatscreen/chatscreen.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => login(),
      '/menuRoute': (context) => mainMenu(),
      '/profileRoute': (context) => profileSettings(),
      '/chatScreenRoute': (context) => chatScreen(),
      '/gameScreenRoute': (context) => gameScreen(),
    },
  ));
}

