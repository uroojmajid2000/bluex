import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Checking extends StatelessWidget {
   final IconData icon;
  final String timeone;
  final String text;

  
  Checking({
    required this.icon,
    required this.timeone,
    required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          // Icons.alarm,
          icon,
          color: Colors.black,
        ),
        Text(timeone,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            )),
        Text(
          text,
            // 'Check in',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 12,
            )),
      ],
    );
  }
}