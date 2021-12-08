import 'package:flutter/material.dart';
import 'package:frontend/styling/theme.dart';

//When merging branches make sure that the class name stays consistent with the one referenced in
// main. The entire AppBar widget below should be implemented for navigation to work.

class mainMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Text(
          'D',
          style: CustomTheme.defaultTheme.appBarTheme.toolbarTextStyle,
        ),
        backgroundColor: Colors.transparent,
        title: Text(
          'Main Menu',
          style: CustomTheme.defaultTheme.appBarTheme.titleTextStyle,
        ),
        actions: <Widget>[
          TextButton(
            style: TextButton.styleFrom(
              textStyle: CustomTheme.defaultTheme.textTheme.bodyText2,
              primary: Colors.white,
            ),
            onPressed: () {
              Navigator.pushNamed(context, '/profileRoute');
            },
            child: const Text('Profile/Settings'),
          ),
        ],
        flexibleSpace: Image(
          image: AssetImage('assets/pics/MicrosoftTeams-image.png'),
          fit: BoxFit.cover,
        ),
      ),
//button for creating/viewing games
//when merged with main menu all that matters in this body section
//is that the onPressed info is added to already made buttons
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/gameScreenRoute');
          },
          child: Text('Create Game'),
        ),
      ),
    );
  }
}
