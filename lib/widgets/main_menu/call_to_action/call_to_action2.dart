// ignore_for_file: prefer_const_constructors
//orig hor: 60, vert: 15
import 'package:flutter/material.dart';
import 'package:frontend/styling/theme.dart';

class CallToAction2 extends StatelessWidget {
  final String title;
  const CallToAction2(this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Wrap(
        direction: Axis.vertical,
        children: [
          Container(
            width: 600.0,
            height: 1200.0,
            decoration: const BoxDecoration(color: Colors.white),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FloatingActionButton.extended(
                  //icon: Icon(Icons.message),
                  backgroundColor: CustomTheme.colors.sand,
                  label: Text(
                    " Create Game ",
                    style: CustomTheme.defaultTheme.textTheme.headline3,
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/gameScreenRoute');
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                FloatingActionButton.extended(
                  //icon: Icon(Icons.message),
                  backgroundColor: CustomTheme.colors.sand,
                  label: Text(
                    " Join Game ",
                    style: CustomTheme.defaultTheme.textTheme.headline3,
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/gameScreenRoute');
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                FloatingActionButton.extended(
                  //icon: Icon(Icons.message),
                  backgroundColor: CustomTheme.colors.sand,
                  label: Text(
                    " Games In Progress ",
                    style: CustomTheme.defaultTheme.textTheme.headline3,
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/gameScreenRoute');
                  },
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
