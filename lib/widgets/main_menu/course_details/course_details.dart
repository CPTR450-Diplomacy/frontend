import 'package:frontend/styling/theme.dart';
import 'package:flutter/material.dart';

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
            'Welcome',
            style: CustomTheme.defaultTheme.textTheme.headline1,
          ),
          SizedBox(
            height: 30,
          ),
          Text(
              'In this game of wits, you are in charge of a major European Power. Dominate and outmaneuver your oponents to win.',
              style: CustomTheme.defaultTheme.textTheme.bodyText1)
        ],
      ),
    );
  }
}
