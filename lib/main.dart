import 'package:flutter/material.dart';
import 'package:frontend/views/home/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Main Menu',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        // ignore: prefer_const_constructors
        home: HomeView());
  }
}
