import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:frontend/login/models/auth.dart';
import 'package:flutter_fadein/flutter_fadein.dart';
import '/theme.dart';

class LoginContainer extends StatefulWidget {
  const LoginContainer({Key? key}) : super(key: key);

  @override
  LoginState createState() => LoginState();
}

class LoginState extends State<LoginContainer> {
  bool _visible = true;
  final Auth _auth = Auth();

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      FadeIn(
        child: AnimatedOpacity(
            opacity: _visible ? 1.0 : 0.0,
            duration: const Duration(seconds: 3),
            child: Container(
                margin: const EdgeInsets.only(top: 200),
                child: Text('Diplomacy',
                    style: Theme.of(context)
                        .textTheme
                        .headline4
                        ?.copyWith(fontSize: 80, color: Colors.black))),
            onEnd: () => _visible = false // TODO,
            ),
        duration: const Duration(seconds: 3),
        curve: Curves.easeIn,
      ),
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
            setState(() {
              _visible = false;
            });
          }))
    ]);
  }
}
