import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:frontend/login/models/login.dart';

class LoginStart extends StatelessWidget {
  const LoginStart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => LoginModel(),
      child: const LoginContainer(),
    );
  }
}

class LoginContainer extends StatelessWidget {
  const LoginContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var loginModel = context.watch<LoginModel>();

    String username = '';
    String password = '';

    TextField usernameField = TextField(onChanged: (String value) async {
      username = value;
    });
    TextField passwordField = TextField(onChanged: (String value) async {
      password = value;
    });

    return Scaffold(
        body: Center(
            child: Container(
                child: Column(children: [
                  // Welcome text
                  Text('Welcome to Diplomacy',
                      style: Theme.of(context)
                          .textTheme
                          .headline4!
                          .copyWith(color: Colors.white)),
                  // Username text
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Username',
                          style: Theme.of(context)
                              .textTheme
                              .headline4!
                              .copyWith(color: Colors.white))),
                  // Username field
                  Align(
                    alignment: Alignment.center,
                    child: usernameField,
                  ),
                  // Password text
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Password',
                          style: Theme.of(context)
                              .textTheme
                              .headline4!
                              .copyWith(color: Colors.white))),
                  // Password field
                  Align(
                    alignment: Alignment.center,
                    child: passwordField,
                  ),
                  // Login button
                  TextButton(
                    style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.grey),
                        fixedSize: MaterialStateProperty.all<Size>(
                            const Size(300, 50))),
                    onPressed: () {
                      loginModel.setUsername = username;
                      loginModel.setPassword = password;
                    },
                    child: const Text('Login'),
                  )
                ]),
                color: Colors.grey[600],
                width: 500.0,
                height: 600.0)));
  }
}
