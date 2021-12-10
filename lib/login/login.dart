import 'package:flutter/material.dart';
import 'package:frontend/login/login_container.dart';
import 'package:frontend/login/error_page.dart';
import 'package:frontend/login/loading_page.dart';
import 'package:firebase_core/firebase_core.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => LoginStart();
}

class LoginStart extends State<Login> {
  bool _initialized = false;
  bool _error = false;

  void initializeFlutterFire() async {
    try {
      await Firebase.initializeApp();
      setState(() {
        _initialized = true;
      });
    } catch (e) {
      setState(() {
        _error = true;
      });
    }
  }

  @override
  void initState() {
    initializeFlutterFire();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (_error) {
      return const ErrorPage();
    }

    if (!_initialized) {
      return const LoadingPage();
    }

    return LoginContainer();
  }
}
