import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Boxes extends StatelessWidget {
  final String title;
  final IconData icon;
  Boxes({
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      
              decoration: BoxDecoration(
color: Colors.grey[100],
   borderRadius: BorderRadius.all(Radius.circular(12))
 ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              // Icons.headphones_rounded,
              icon,
              size: 35,
            ),
            SizedBox(height: 10),
            Text(
              // 'Manual sheet',
              title,
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}

