// ignore_for_file: prefer_const_constructors
import 'package:frontend/styling/theme.dart';
import 'package:flutter/material.dart';

class CallToAction extends StatelessWidget {
  final String title;
  const CallToAction(this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 15),
      child: Text(
        title,
        style: CustomTheme.defaultTheme.textTheme.headline2,
      ),
      decoration: BoxDecoration(
        color: CustomTheme.colors.orange,
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }
}
