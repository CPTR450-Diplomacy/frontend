// ignore_for_file: prefer_const_literals_to_create_immutables, sized_box_for_whitespace, prefer_const_constructors

import 'package:flutter/material.dart';

//this is the top bar that places the logo and other contents at the top of the screen
class TopBar extends StatelessWidget {
  const TopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(
              height: 80,
              width: 150,
              child: Image.asset('assets/logo.png'),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                _TopBarItem('FAQ'),
                SizedBox(
                  width: 60,
                ),
                _TopBarItem('Profile')
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
