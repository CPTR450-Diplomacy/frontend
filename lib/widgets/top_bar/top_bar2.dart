// ignore_for_file: prefer_const_literals_to_create_immutables, sized_box_for_whitespace, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:frontend/views/home/settings_page.dart';
import 'package:frontend/views/home/profile_page.dart';

//this is the top bar that places the logo and other contents at the top of the screen
class TopBar2 extends StatelessWidget {
  const TopBar2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ElevatedButton(
            child: Text('Log Out'),
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.transparent),
            ),
          ),
          SizedBox(
            height: 80,
            width: 900,
          ),
          ElevatedButton(
            child: Text('Profile'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => settings_profile2()),
              );
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.transparent),
            ),
          ),
          SizedBox(
            width: 60,
          ),
          ElevatedButton(
              child: Text('Settings'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => settings_profile()),
                );
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.transparent),
              )),
        ],
      ),
    );
  }
}
