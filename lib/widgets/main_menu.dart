import 'package:flutter/material.dart';
import 'package:frontend/styling/theme.dart';

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Menu Placeholder"),
        backgroundColor: CustomTheme.colors.greenBorder,
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/third');
          },
          child: Text('Create Game'),
        ),
      ),
    );
  }
}
