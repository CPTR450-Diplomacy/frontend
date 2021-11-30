import 'package:flutter/material.dart';
import 'package:frontend/styling/theme.dart';

class ThirdRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GameScreen Placeholder"),
        backgroundColor: CustomTheme.colors.greenBorder,
      ),
    );
  }
}
