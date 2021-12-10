// ignore_for_file: prefer_const_constructors
//orig hor: 60, vert: 15
import 'package:flutter/material.dart';

class CallToAction2 extends StatelessWidget {
  final String title;
  const CallToAction2(this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Wrap(
        direction: Axis.vertical,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FloatingActionButton.extended(
                //icon: Icon(Icons.message),
                label: Text(" Create Game "),
                onPressed: () {},
              ),
              SizedBox(
                height: 20,
              ),
              FloatingActionButton.extended(
                //icon: Icon(Icons.message),
                label: Text(" Join Game "),
                onPressed: () {},
              ),
              SizedBox(
                height: 20,
              ),
              FloatingActionButton.extended(
                //icon: Icon(Icons.message),
                label: Text(" Games In Progress "),
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
