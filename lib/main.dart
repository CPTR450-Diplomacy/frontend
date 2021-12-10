import 'package:flutter/material.dart';
import 'widgets/login_screen/login.dart';
import 'widgets/main_menu/main_menu.dart';
import 'widgets/game_screen/game_screen.dart';
import 'widgets/main_menu/profile_settings.dart';
import 'widgets/chat_screen/chatscreen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/': (context) => login(),
      '/menuRoute': (context) => mainMenu(),
      '/profileRoute': (context) => profileSettings(),
      '/chatScreenRoute': (context) => ChatScreen(),
      '/gameScreenRoute': (context) => gameScreen(),
    },
  ));
}
