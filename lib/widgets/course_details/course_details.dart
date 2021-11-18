// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:frontend/theme.dart';

class CourseDetails extends StatelessWidget {
  const CourseDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return Container(
      width: 600,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'WELCOME TO\n DIPLOMACY',
            style: CustomTheme.defaultTheme.textTheme.headline1,
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'In this game, you are a country which controls three armies. Your goal is to move your armies to capture supply centers. Whichever country controls 18 supply centers wins the game. Happy Hunting.',
            style: CustomTheme.defaultTheme.textTheme.bodyText1,
          )
        ],
      ),
    );
  }
}
