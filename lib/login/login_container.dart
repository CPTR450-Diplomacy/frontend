import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:frontend/login/models/auth.dart';

class LoginContainer extends StatelessWidget {
  LoginContainer({Key? key}) : super(key: key);
  final Auth _auth = Auth();

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
          margin: const EdgeInsets.only(top: 200),
          child: Text('Welcome to Diplomacy',
              style: Theme.of(context)
                  .textTheme
                  .headline3!
                  .copyWith(color: Colors.black))),
      Container(
          margin: const EdgeInsets.only(top: 100),
          child: SignInButton(Buttons.Google, text: "Sign in with Google",
              onPressed: () async {
            try {
              // GoogleAuthProvider provider = GoogleAuthProvider();
              await _auth.signInWithGoogle();
              await _auth.verifyWithServer();
            } catch (e) {
              print(e.toString());
            }
          }))
    ]);
  }
}
