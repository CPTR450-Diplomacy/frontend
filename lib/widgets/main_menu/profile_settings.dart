import 'package:flutter/material.dart';
import 'package:frontend/styling/theme.dart';

class profileSettings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            leading: Text(
              'D',
              style: CustomTheme.defaultTheme.appBarTheme.toolbarTextStyle,
            ),
            flexibleSpace: Image(
              image: AssetImage('assets/pics/MicrosoftTeams-image.png'),
              fit: BoxFit.cover,
            ),
            backgroundColor: Colors.transparent,
            title: Text(
              'Settings',
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
            child: const Text('Back'),
          ),
        ]));
  }
}
