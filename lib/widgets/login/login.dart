import 'package:flutter/material.dart';
import 'package:frontend/login/login_container.dart';
import 'package:frontend/styling/theme.dart';

//When merging branches make sure that the class name stays consistent with the one referenced in
// main. The entire AppBar widget below should be implemented for navigation to work.

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
                textStyle: CustomTheme.defaultTheme.textTheme.bodyText1,
                primary: Colors.white,
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/menuRoute');
              },
              child: const Text('Login'),
            ),
          ],
        ),
        body: const Center(child: LoginContainer()));
  }
}
