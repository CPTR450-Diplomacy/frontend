// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:frontend/widgets/main_menu/call_to_action/call_to_action2.dart';
import 'package:frontend/widgets/main_menu/centered_view/centered_view.dart';
import 'package:frontend/widgets/main_menu/course_details/course_details.dart';

//this is the main website file for the menu
class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CenteredView(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  CourseDetails(),
                  Expanded(
                    child: Center(child: CallToAction2('Buttons')),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
