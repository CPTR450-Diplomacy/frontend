// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

// ignore: camel_case_types
class settings_profile2 extends StatelessWidget {
  const settings_profile2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return Container(
      height: 100,
      width: 600,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        // ignore: prefer_const_literals_to_create_immutables
        children: <Widget>[
          Text(
            'User Profile',
            style: TextStyle(
                fontWeight: FontWeight.w800, height: 0.9, fontSize: 40),
          ),
          SizedBox(
            height: 30,
          ),
          Text('What would you like to do?',
              style: TextStyle(fontSize: 21, height: 1.7))
        ],
      ),
    );
  }
}

class TopBar extends StatelessWidget {
  const TopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return Container(
        height: 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            _TopBarItem('User Info'),
            SizedBox(
              height: 80,
              width: 150,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              // ignore: prefer_const_literals_to_create_immutables
              children: <Widget>[
                _TopBarItem('Settings'),
                SizedBox(
                  width: 60,
                ),
                _TopBarItem('Log Out')
              ],
            )
          ],
        ));
  }
}

class _TopBarItem extends StatelessWidget {
  final String title;
  const _TopBarItem(this.title);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(fontSize: 18),
    );
  }
}
