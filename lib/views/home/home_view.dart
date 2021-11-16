// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:frontend/widgets/call_to_action/call_to_action.dart';
import 'package:frontend/widgets/top_bar/top_bar.dart';
import 'package:frontend/widgets/centered_view/centered_view.dart';
import 'package:frontend/widgets/course_details/course_details.dart';

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
            TopBar(),
            Expanded(
              child: Row(
                children: <Widget>[
                  CourseDetails(),
                  Expanded(
                    child: Center(child: CallToAction('Create Game')),
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
