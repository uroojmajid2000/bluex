import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Amount_data extends StatelessWidget {
  final String text;

 Amount_data({
  required this.text,
 });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
      child: Container(
        width: 400.0,
        height: 40,
       
         decoration: BoxDecoration(
color: Colors.grey[100],
   borderRadius: BorderRadius.all(Radius.circular(12))
 ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text(
            text,
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
            ),
          ),
        ),
      ),
    );
  }
}
