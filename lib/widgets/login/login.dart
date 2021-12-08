import 'package:flutter/material.dart';
import 'package:frontend/styling/theme.dart';

class login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      centerTitle: true,
      flexibleSpace: Image(
        image: AssetImage('assets/pics/MicrosoftTeams-image.png'),
        fit: BoxFit.cover,
      ),
      backgroundColor: Colors.transparent,
      leading: Text(
        'D',
        style: CustomTheme.defaultTheme.appBarTheme.toolbarTextStyle,
      ),
      title: Text(
        '',
        style: CustomTheme.defaultTheme.appBarTheme.titleTextStyle,
      ),
      actions: <Widget>[
        TextButton(
          style: TextButton.styleFrom(
            textStyle: CustomTheme.defaultTheme.textTheme.bodyText2,
            primary: Colors.white,
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/menuRoute');
          },
          child: const Text('Login'),
        ),
      ],
    ));
  }
}
