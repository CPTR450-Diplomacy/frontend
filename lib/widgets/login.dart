import 'package:flutter/material.dart';
import 'package:frontend/styling/theme.dart';

class LoginRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Placeholder'),
        backgroundColor: CustomTheme.colors.greenBorder,
      ),
      body: Center(
          child: Column(
        children: <Widget>[
          RaisedButton(
            child: Text('login'),
            onPressed: () {
              Navigator.pushNamed(context, '/second');
            },
          ),
        ],
      )),
    );
  }
}
